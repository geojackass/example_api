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

import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.util.Calendar;

import javax.ws.rs.DefaultValue;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.Response.ResponseBuilder;

@Path("smcavg")
public class SoilMoistureAvgResource extends ApiResource {
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
			@DefaultValue("-9999") @QueryParam("lat") float latitude,
			@DefaultValue("-9999") @QueryParam("lon") float longitude,
			@DefaultValue("0.1") @QueryParam("range") float range,
			@DefaultValue("-9999") @QueryParam("date") String dateStr,
			@DefaultValue("callback") @QueryParam("callback") String callback) {
		if (isValidToken(token) == false) {
			return getFormattedError(Response.status(401), "Invalid Token.",
					format, callback);
		}

		Date observedAt;
		try {
			Calendar calendar = Calendar.getInstance();
			calendar.setTime(DATE_FORMAT.parse(dateStr));
			calendar.set(Calendar.HOUR_OF_DAY, 0);
			calendar.set(Calendar.MINUTE, 0);
			calendar.set(Calendar.SECOND, 0);
			calendar.set(Calendar.MILLISECOND, 0);
			observedAt = new Date(calendar.getTimeInMillis());
		} catch (ParseException e) {
			return getFormattedError(
					Response.status(406),
					"Invalid Parameter: \"date\", You must specify \"yyyy-MM-dd\" for the parameter.",
					format, callback);
		}

		try {
			Connection con = loadConnection();

			PreparedStatement statement = con
					.prepareStatement("SELECT count(*), avg(smc) FROM gcom_w1_data"
							+ " WHERE (lat BETWEEN ? AND ?) AND (lon BETWEEN ? AND ?) AND observed_at = ? "
							+ "AND smc > -9998");
			float lowerlat = latitude - range;
			float upperlat = latitude + range;
			float lowerlon = longitude - range;
			float upperlon = longitude + range;

			statement.setDouble(1, lowerlat);
			statement.setDouble(2, upperlat);
			statement.setDouble(3, lowerlon);
			statement.setDouble(4, upperlon);
			statement.setDate(5, observedAt);

			ResultSet resultSet = statement.executeQuery();
			Response response = null;
			while (resultSet.next()) {
				if (resultSet.getInt(1) > 0) {
					response = getFormattedResponse(Response.ok(),
							resultSet.getFloat(2), format, callback);
				} else {
					response = getFormattedError(Response.status(406),
							NO_DATA_MESSAGE, format, callback);
				}
			}

			con.close();

			return response;
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return Response.ok().build();
	}

	/**
	 * @param builder
	 * @param retval
	 * @param format
	 * @return
	 */
	private Response getFormattedResponse(ResponseBuilder builder,
			float retval, String format, String callback) {
		if ("xml".equalsIgnoreCase(format)) {
			String entity = format("<?xml version=\"1.0\" encoding=\"UTF-8\"?>"
					+ "<response><result>ok</result><smc>%f</smc></response>",
					retval);
			builder = builder.entity(entity);
			builder = builder.type(MediaType.TEXT_XML_TYPE);
		} else if ("json".equalsIgnoreCase(format)) {
			String entity = format("{result:\"ok\",smc:%f}", retval);
			builder = builder.entity(entity);
			builder = builder.type(MediaType.APPLICATION_JSON_TYPE);
		} else if ("jsonp".equalsIgnoreCase(format)) {
			String entity = format("%s({result:\"ok\",smc:%f})", callback,
					retval);
			builder = builder.entity(entity);
			builder = builder.type("application/javascript");
		} else {
			builder = builder.entity(retval);
		}
		builder = builder.encoding("utf-8");
		return builder.build();
	}
}
