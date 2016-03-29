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
			        attributes.put("message",username);
			        return new ModelAndView(attributes, "registered.ftl");
			      } catch (Exception e) {
			        attributes.put("message", "There was an error: " + e);
			        return new ModelAndView(attributes, "test.ftl");
			      } finally {
			        if (connect != null) try{connect.close();} catch(SQLException e){}
			      }
		} , new FreeMarkerEngine());
		
		post("/authenticate",(request,response)->{
			String username = (String) request.queryParams("username");
			String password = (String) request.queryParams("password");
			Connection connect = null;
			Map<String, Object> attributes = new HashMap<>();
			
			try{
				connect = DatabaseUrl.extract().getConnection();
				PreparedStatement ps = connect.prepareStatement("select * from appUser where username = ?");
				ps.setString(1, username);
				ResultSet rs = ps.executeQuery();
				if(rs.next()){
					String passwdFromDB = rs.getString("password");
					String role = rs.getString(3);
					if( passwdFromDB.equals(password)){
						attributes.put("message",username);
						if(role.equalsIgnoreCase("manager")){
							return new ModelAndView(attributes, "homePageManager.ftl");
						}else{
							return new ModelAndView(attributes, "homePageParticipant.ftl");
						}
						
					}else{
						attributes.put("message", password);
						return new ModelAndView(attributes, "error.ftl");
					}
				}else{
					attributes.put("message", "Username Does not exist");
					return new ModelAndView(attributes, "error.ftl");
				}
			}catch (Exception e){
				attributes.put("message", "There was an error: " + e);
		        return new ModelAndView(attributes, "error.ftl");
			}finally{
				if (connect != null) try{connect.close();} catch(SQLException e){}
			}	
		},new FreeMarkerEngine());
	}
}
