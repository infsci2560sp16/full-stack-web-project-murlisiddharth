<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Tournament Manager</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>
<link href="/stylesheets/carousel.css" rel="stylesheet">
<link href="/stylesheets/homePage.css" rel="stylesheet">
</head>
<body>
	<div class="container">
	<#include "loggedInNav.ftl">
	</div>
	<div class="container">
	<h1>a</h1>
	<button type="button" class="btn btn-primary" onclick="ajaxCallAcceptJSONviaGet()">View Created Tournaments</button>
	
	<button type="button" class="btn btn-primary" onclick="ajaxCallAcceptJSONviaPost()">View Teams</button>

	<button type="button" class="btn btn-primary" onclick="ajaxCallAcceptXML()">View Tournament Details</button>
	
	<div class="well" id="ques"></div>
	
	<div class="well" id="quesPost"></div>
	
	<div class="well" id="quesXML"></div>
    </div>
    <!-- FOOTER -->
    <div class="container marketing">
      
    <footer>
        <p class="pull-right"><a href="#">Back to top</a></p>
        <p>&copy; 2016 Web Standards And Technologies &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
    </footer>

    </div><!-- /.container -->
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
    <script>
    function ajaxCallAcceptJSONviaGet() {
  	var xhttp = new XMLHttpRequest();
  	xhttp.onreadystatechange = function() {
    	if (xhttp.readyState == 4 && xhttp.status == 200) {
      	document.getElementById("ques").innerHTML = xhttp.responseText;
    	}
  	};
  	xhttp.open("GET", "createdtournaments", true);
  	xhttp.send();
	}
    
    function ajaxCallAcceptJSONviaPost() {
  	var xhttp = new XMLHttpRequest();
  	xhttp.onreadystatechange = function() {
    	if (xhttp.readyState == 4 && xhttp.status == 200) {
      	document.getElementById("quesPost").innerHTML = xhttp.responseText;
    	}
  	};
  	xhttp.open("POST", "viewTeams", true);
  	xhttp.send();
	}
    
    function ajaxCallAcceptXML() {
  	var xhttp = new XMLHttpRequest();
  	xhttp.onreadystatechange = function() {
    	if (xhttp.readyState == 4 && xhttp.status == 200) {
      	document.getElementById("quesXML").innerHTML = xhttp.responseText;
    	}
  	};
  	xhttp.open("GET", "viewTournamentDetails", true);
  	xhttp.send();
	}
    
    </script>
</body>
</html>