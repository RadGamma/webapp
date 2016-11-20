package jspServlet;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.URL;

public class GoogleWeather {
    private float temp_f;
    private float humidity;
    private String condition;
    private String zipcode;

    public GoogleWeather(String zipcode) {
        this.zipcode = zipcode;
    }

    public void getWeatherFromServer() {
        HttpURLConnection connection = null;
          BufferedReader rd  = null;
          StringBuilder sb = null;
          String line = null;

          URL serverAddress = null;

          try {
              serverAddress = new URL("http://www.google.com/ig/api");
              //set up out communications stuff
              connection = null;

              //Set up the initial connection
              connection = (HttpURLConnection)serverAddress.openConnection();connection.setRequestProperty("weather", this.zipcode);
              connection.setRequestMethod("GET");
              connection.setDoOutput(true);
              connection.setReadTimeout(10000);

              connection.connect();

              //read the result from the server
              rd  = new BufferedReader(new InputStreamReader(connection.getInputStream()));
              sb = new StringBuilder();

              while ((line = rd.readLine()) != null)
              {
                  sb.append(line + '\n');
              }

              System.out.println(sb.toString());

          } catch (MalformedURLException e) {
              e.printStackTrace();
          } catch (ProtocolException e) {
              e.printStackTrace();
          } catch (IOException e) {
              e.printStackTrace();
          }
          finally
          {
              //close the connection, set all objects to null
              connection.disconnect();
              rd = null;
              sb = null;
              connection = null;
          }
    }

    public float getTemp_f() {
        return temp_f;
    }

    public void setTemp_f(float temp_f) {
        this.temp_f = temp_f;
    }

    public float getHumidity() {
        return humidity;
    }

    public void setHumidity(float humidity) {
        this.humidity = humidity;
    }

    public String getCondition() {
        return condition;
    }

    public void setCondition(String condition) {
        this.condition = condition;
    }
}