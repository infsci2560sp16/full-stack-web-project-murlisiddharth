<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Tournament Manager</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>
<link href="/stylesheets/carousel.css" rel="stylesheet">
</head>
<body>
    <#include "nav.ftl">
    
	<div class="container">
		<div class="jumbotron">
		
		<form class="form-horizontal" >
			<div class="form-group">
					<label class="col-sm-2 control-label selectSport">Select Your Sport</label> 
					<label class="radio-inline"><input type="radio" name="sport" id="soccer" value="soccer" onclick="extForm()">Soccer</label>
					<label class="radio-inline"><input type="radio" name="sport" id="basketball" value="basketball" onclick="extForm()">Basketball</label>
				</div>
				
		</form>
		
			<div id="sportExt">
			</div>
		</div>
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
    <script src="/js/selectTournament.js"></script>
</body>
</html>