import java.util.HashMap;
import java.util.ArrayList;
import java.util.Map;

import controller.*;
import java.net.URI;
import java.net.URISyntaxException;

import static spark.Spark.*;
import spark.template.freemarker.FreeMarkerEngine;
import spark.ModelAndView;
import static spark.Spark.get;

public class Main {
	
	public static void main(String[] args) {

		port(Integer.valueOf(System.getenv("PORT")));
		staticFileLocation("/public");
		
		Object a = new authentication();

		get("/", (request, response) -> { // HomePage for the website
			Map<String, Object> attributes = new HashMap<>();
			attributes.put("message", "Hello World!");
			
			return new ModelAndView(attributes, "homePage.ftl");
		} , new FreeMarkerEngine());

		get("/login", (request, response) -> { // Manager login
			Map<String, Object> attributes = new HashMap<>();
			String role = (String) request.queryParams("role");
			
			if(role.equalsIgnoreCase("manager")){
				attributes.put("message", "Tournament Manager Login");
			}else if(role.equalsIgnoreCase("participant")){
				attributes.put("message", "Tournament Participant Login");
			}else {
				attributes.put("message", "Administrator Login");
			}
			
			return new ModelAndView(attributes, "login.ftl");
		} , new FreeMarkerEngine());
		
		get("/register", (request, response) -> { //Registration form
			Map<String, Object> attributes = new HashMap<>();
			String role = request.queryParams("role");
			if(role.equalsIgnoreCase("manager")){
				attributes.put("message", "Manager");
			}else{
				attributes.put("message", "Particicpant");
			}
			return new ModelAndView(attributes, "registerForm.ftl");
		} , new FreeMarkerEngine());	
		
	}

}
