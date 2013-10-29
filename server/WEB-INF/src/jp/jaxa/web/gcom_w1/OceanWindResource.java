package jp.jaxa.web.gcom_w1;

import static java.sql.DriverManager.getConnection;
import static java.lang.String.format;

import java.io.IOException;
import java.math.BigDecimal;
import java.sql.*;
import java.text.*;
import java.util.*;

import javax.servlet.ServletContext;
import javax.ws.rs.*;
import javax.ws.rs.core.*;

@Path("ocean_wind")
public class OceanWindResource {
  public static final String TEXT_CSV = "text/csv";
  public static final MediaType TEXT_CSV_TYPE = new MediaType("text", "csv");
  public static DateFormat DATE_FORMAT = new SimpleDateFormat("yyyy-MM-dd");

  @Context
  ServletContext context;

  /**
   * @param format
   * @param latitude
   * @param longitude
   * @param dateStr
   * @return
   */
  @GET
  @Produces(MediaType.TEXT_PLAIN)
  public String getIt(@DefaultValue("csv") @QueryParam("format") String format,
      @DefaultValue("0") @QueryParam("lat") float latitude,
      @DefaultValue("0") @QueryParam("lon") float longitude,
      @DefaultValue("2013-08-01") @QueryParam("date") String dateStr) {
    int year = 0, month = 0, day = 0;

    try {
      Calendar calendar = Calendar.getInstance();
      calendar.setTime(DATE_FORMAT.parse(dateStr));
      year = calendar.get(Calendar.YEAR);
      month = calendar.get(Calendar.MONTH) + 1;
      day = calendar.get(Calendar.DATE);
    } catch (ParseException e) {
      return getFormattedErrorMessage(
          "Invalid Parameter: \"date\", You must specify \"yyyy-MM-dd\" for the parameter.",
          format);
    }

    try {
      Connection con = loadConnection();

      PreparedStatement statement = con
          .prepareStatement("SELECT * FROM earth_observation_data"
              + " WHERE lat = ?::numeric(7,3) AND lon = ?::numeric(7,3)"
              + " AND observed_at_year = ? AND observed_at_month = ? AND observed_at_day = ?");
      statement.setObject(1, new BigDecimal(latitude));
      statement.setObject(2, new BigDecimal(longitude));
      statement.setInt(3, year);
      statement.setInt(4, month);
      statement.setInt(5, day);

      ResultSet resultSet = statement.executeQuery();
      while (resultSet.next()) {
        return Float.toString(resultSet.getFloat(1));
      }
    } catch (ClassNotFoundException e) {
      e.printStackTrace();
    } catch (SQLException e) {
      e.printStackTrace();
    } catch (IOException e) {
      e.printStackTrace();
    }
    return "error";
  }

  private String getFormattedErrorMessage(String message, String format) {
    return message;
  }

  private Connection loadConnection() throws IOException,
      ClassNotFoundException, SQLException {
    Properties prop = new Properties();
    prop.load(context.getResourceAsStream("WEB-INF/conf/gcom_w1_db.ini"));

    String host = prop.getProperty("hostname");
    String port = prop.getProperty("port");
    String db = prop.getProperty("database");
    String user = prop.getProperty("user");
    String password = prop.getProperty("password");

    Class.forName("org.postgresql.Driver");

    String url = format("jdbc:postgresql://%s:%s/%s", host, port, db);
    return getConnection(url, user, password);
  }
}
