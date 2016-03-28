package controller;
import static spark.Spark.*;
import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import model.appUser;
import spark.template.freemarker.FreeMarkerEngine;
import spark.ModelAndView;

import com.google.gson.Gson;
import com.heroku.sdk.jdbc.DatabaseUrl;

public class authentication {
	public authentication() {
		authenticationRoute();
	}

	private void authenticationRoute() {
		post("/signup", (request, response) -> { // sign up user
			Connection connect = null;
			Map<String, Object> attributes = new HashMap<>();
			String role = (String) request.queryParams("role");
			String firstname = (String) request.queryParams("firstname");
			String lastname = (String)request.queryParams("lastname");
			String sex = (String) request.queryParams("sex");
			String password = (String) request.queryParams("password2");
			String username = (String) request.queryParams("username");
			
			 try {
				 connect = DatabaseUrl.extract().getConnection();
				 	
			        Statement stmt = connect.createStatement();
			        stmt.executeUpdate("Insert into appUser values "
			        		+ "('"+ username +"','"+ password +"','"+ role +"','"+firstname+"','"+lastname+"')");
			        attributes.put("message","Success");
			        return new ModelAndView(attributes, "test.ftl");
			        /*ArrayList<String> output = new ArrayList<String>();
			        while (rs.next()) {
			          output.add( "Read from DB: " + rs.getTimestamp("tick"));
			        }

			        attributes.put("results", output);
			        return new ModelAndView(attributes, "db.ftl");*/
			      } catch (Exception e) {
			        attributes.put("message", "There was an error: " + e);
			        return new ModelAndView(attributes, "test.ftl");
			      } finally {
			        if (connect != null) try{connect.close();} catch(SQLException e){}
			      }
		} , new FreeMarkerEngine());
	}
}
