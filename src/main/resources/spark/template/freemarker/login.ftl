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
    
    

	<div class="container">
		<div class="jumbotron">
		<div class="form-group">
		<label class="col-sm-14 control-label">${message}</label>
		</div>
		<form class="form-horizontal login" action="validate">

				<div class="form-group">
				
					<label class="col-sm-2 control-label">User
						Name</label>

					<div class="col-sm-4">
						<input type="text" class="form-control" id="username" required
							placeholder="Enter Username Name">
					</div>
				</div>
				
				<div class="form-group">
					<label for="password" class="col-sm-2 control-label">Password</label>

					<div class="col-sm-4">
						<input type="password" class="form-control" id="password"
							placeholder="Enter Password">
					</div>
				</div>
				<div class="form-group col-sm-2 control-label">
					<button type="submit" class="btn btn-default">Submit</button>
				</div>
		</form>
		
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
</body>
</html>