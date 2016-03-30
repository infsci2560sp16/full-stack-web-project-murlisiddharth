package controller;
import static spark.Spark.*;
import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import com.google.gson.Gson;

import model.appUser;
import spark.template.freemarker.FreeMarkerEngine;
import spark.ModelAndView;
import com.heroku.sdk.jdbc.DatabaseUrl;

public class managerController {
	Gson gson = new Gson();
	
	public managerController() {
		managerControllerRoute();
	}
	
	public void managerControllerRoute(){
		get("/createdtournaments", (request, response) -> { // Get req and send JSON
			Map<String, Object> attributes = new HashMap<>();
			attributes.put("tournament1","Rider's Cup");
			attributes.put("tournament2","Champions's Cup");
			attributes.put("tournament3","John Stone's Cup");
			attributes.put("tournament4","Correls's Cup");
			return attributes;
		} , gson::toJson);
		
		post("/viewTeams", (request, response) -> { // Post req and send JSON
			Map<String, Object> attributes = new HashMap<>();
			attributes.put("team1","Arsenal");
			attributes.put("team2","Chelsea");
			attributes.put("team3","Liverpool");
			attributes.put("team4","Everton");
			return attributes;
		} , gson::toJson);
		
		get("/viewTournamentDetails", (request, response) -> { // Get req and send XML
			Connection connect = null;
			try{
				String xml = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>";
				connect = DatabaseUrl.extract().getConnection();
				PreparedStatement ps = connect.prepareStatement("select * from tournament");
				ResultSet rs = ps.executeQuery();
				while(rs.next()){
					xml += "<tournament>"+ 
							"<sportType>"+ rs.getString("sportType")+"</sportType>"+
							"<tournamentType>"+rs.getString("tournamenttype")+"</tournamentType>"+
							"<startDate>"+rs.getString("startDate")+"</startDate>"+
							"<endDate>"+rs.getString("endDate")+"</endDate>"+
							"<noOfTeams>"+ rs.getInt("noOfTeams")+"</noOfTeams>"+
							"<noOfPlayers>"+ rs.getInt("noOfPlayers")+"</noOfPlayers>"+
							"<noOfSubstitiues>"+ rs.getInt("noOfSubstitiues")+"</noOfSubstitiues>"+
							"<rules>"+rs.getString("rules")+"</rules>"+
							"<tournamentWinner>"+rs.getString("tournamentWinner")+"</tournamentWinner>"+
							"<tournamentRUnnerUp>"+rs.getString("tournamentRUnnerUp")+"</tournamentRUnnerUp>"+
							"</tournament>";
				}
				return xml;
			}catch (Exception e){
		        return "DataBase Error. Please check later";
			}finally{
				if (connect != null) try{connect.close();} catch(SQLException e){}
			}	
		});
	}
}
