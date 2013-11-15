/*
Copyright (c) 2013 jaxa

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
 */

package jp.jaxa.web;

import static java.lang.String.format;
import static java.sql.DriverManager.getConnection;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Properties;

import javax.servlet.ServletContext;
import javax.ws.rs.DefaultValue;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.Response.ResponseBuilder;

/**
 * 
 * @author Hiroaki Tateshita
 * 
 */
@Path("prc")
public class PrecipitationResource {
	public static DateFormat DATE_FORMAT = new SimpleDateFormat("yyyy-MM-dd");

	@Context
	ServletContext context;

	/**
	 * @param token
	 * @param format
	 * @param latitude
	 * @param longitude
	 * @param dateStr
	 * @return
	 */
	@GET
	public Response getIt(@QueryParam("token") String token,
			@DefaultValue("xml") @QueryParam("format") String format,
			@DefaultValue("-9999.0") @QueryParam("lat") float latitude,
			@DefaultValue("-9999.0") @QueryParam("lon") float longitude,
			@DefaultValue("-9999.0") @QueryParam("date") String dateStr) {
		if (isValidToken(token) == false) {
			return getFormattedError(Response.status(401), "Invalid Token.",
					format);
		}

		// int year = 0, month = 0, day = 0;
		Date date = null;
		try {
			Calendar calendar = Calendar.getInstance();
			calendar.setTime(DATE_FORMAT.parse(dateStr));
			date = new Date(calendar.getTimeInMillis());
			// year = calendar.get(Calendar.YEAR);
			// month = calendar.get(Calendar.MONTH) + 1;
			// day = calendar.get(Calendar.DATE);
		} catch (ParseException e) {
			return getFormattedError(
					Response.status(406),
					"Invalid Parameter: \"date\", You must specify \"yyyy-MM-dd\" for the parameter.",
					format);
		}

		try {
			Connection con = loadConnection();

			PreparedStatement statement = con
					.prepareStatement("SELECT avg(prc) FROM earth_observation_data"
							+ " WHERE lat >= ?::numeric(7,3) and lat < ?::numeric(7,3) "
							+ "AND lon >= ?::numeric(7,3) and lon < ?::numeric(7,3)"
							+ " AND observed_at = ?");
			statement.setFloat(1, (float) (latitude - 0.05));
			statement.setFloat(2, (float) (latitude + 0.05));
			statement.setFloat(3, (float) (longitude - 0.05));
			statement.setFloat(4, (float) (longitude + 0.05));
			statement.setDate(5, date);

			ResultSet resultSet = statement.executeQuery();
			while (resultSet.next()) {
				return getFormattedResponse(Response.ok(),
						resultSet.getFloat(1), format);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return Response.ok().build();
	}

	/**
	 * �?��されたト�?クンが正しいも�?かど�?��を判定す�?
	 * 
	 * @param token
	 * @return
	 */
	private boolean isValidToken(String token) {
		if (token == null) {
			return false;
		}

		try {
			Connection con = loadConnection();
			PreparedStatement statement = con
					.prepareStatement("SELECT EXISTS (SELECT token FROM tokens WHERE token = ?)");
			statement.setString(1, token);

			ResultSet resultSet = statement.executeQuery();
			while (resultSet.next()) {
				return resultSet.getBoolean(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	/**
	 * @param builder
	 * @param retval
	 * @param format
	 * @return
	 */
	private Response getFormattedResponse(ResponseBuilder builder,
			float retval, String format) {
		if ("xml".equalsIgnoreCase(format)) {
			String entity = format(
					"<?xml version=\"1.0\" encoding=\"UTF-8\"?>"
							+ "<response><result>ok</result><value>%f</value></response>",
					retval);
			builder = builder.entity(entity);
			builder = builder.type(MediaType.TEXT_XML_TYPE);
		} else if ("json".equalsIgnoreCase(format)) {
			String entity = format("{\"result\": \"ok\", \"value\": %f}",
					retval);
			builder = builder.entity(entity);
			builder = builder.type(MediaType.APPLICATION_JSON_TYPE);
		} else {
			builder = builder.entity(retval);
		}
		builder = builder.encoding("utf-8");
		return builder.build();
	}

	/**
	 * @param builder
	 * @param message
	 * @param format
	 * @return
	 */
	private Response getFormattedError(ResponseBuilder builder, String message,
			String format) {
		if ("xml".equalsIgnoreCase(format)) {
			String entity = format(
					"<?xml version=\"1.0\" encoding=\"UTF-8\"?>"
							+ "<response><result>error</result><message>%s</message></response>",
					message);
			builder = builder.entity(entity);
			builder = builder.type(MediaType.TEXT_XML_TYPE);
		} else if ("json".equalsIgnoreCase(format)) {
			String entity = format(
					"{\"result\": \"error\", \"message\": \"%s\"}",
					message.replaceAll("\"", "\\\""));
			builder = builder.entity(entity);
			builder = builder.type(MediaType.APPLICATION_JSON_TYPE);
		} else {
			builder = builder.entity(message);
		}
		builder = builder.encoding("utf-8");
		return builder.build();
	}

	/**
	 * �??タベ�?スへの接続情報を設定ファイルから取得す�?
	 * 
	 * @return
	 * @throws IOException
	 * @throws SQLException
	 */
	private Connection loadConnection() throws IOException, SQLException {
		Properties prop = new Properties();
		prop.load(context.getResourceAsStream("WEB-INF/conf/gcom_w1_db.ini"));

		String host = prop.getProperty("hostname");
		String port = prop.getProperty("port");
		String db = prop.getProperty("database");
		String user = prop.getProperty("user");
		String password = prop.getProperty("password");

		try {
			Class.forName("org.postgresql.Driver");
		} catch (ClassNotFoundException e) {
		}

		String url = format("jdbc:postgresql://%s:%s/%s", host, port, db);
		return getConnection(url, user, password);
	}
}
