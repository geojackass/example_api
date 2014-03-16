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

package jp.jaxa.client;

import javax.ws.rs.core.MultivaluedMap;

import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.WebResource;
import com.sun.jersey.api.client.config.DefaultClientConfig;
import com.sun.jersey.core.util.MultivaluedMapImpl;

/**
 * This is a sample program to use JAXA Open API. This program use Jersey
 * framework as a client, so please use the jar files like jersey-client-*.jar
 * and jersey-core-*.jar.
 * 
 * You can use JAXB to real xml response.
 * 
 * @author Hiroaki Tateshita
 * 
 */
public class SampleClient {

	/**
	 * @param args
	 */
	public static void main(String[] args) {

		SampleClient client = new SampleClient();

		client.sampleMethod();

	}

	/**
	 * sample method to get the response from web api.
	 */
	public void sampleMethod() {
		DefaultClientConfig clientConfig = new DefaultClientConfig();
		Client client = Client.create(clientConfig);

		WebResource resource = client.resource("https://joa.epi.bz/api/prcavg");
		MultivaluedMap<String, String> params = new MultivaluedMapImpl();
		params.add("date", "2012-08-01");
		params.add("lat", "30.2");
		params.add("lon", "130.5");
		params.add("token", "please input your token");
		params.add("range", "0.5");
		String text = resource.queryParams(params).get(String.class);

		System.out.println(text);

	}

}
