<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Manager Registration</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
<link href="/stylesheets/carousel.css" rel="stylesheet">
</head>
<body>
	<#include "nav.ftl">
	
	<div class="container">
		<div class="jumbotron">
			<h2>${message} Sign Up From</h2>
			<form class="form-horizontal" method="post" action="signup?role=${message}">

				<div class="form-group">
					<label for="firstname" class="col-sm-2 control-label">First
						Name</label>

					<div class="col-sm-4">
						<input type="text" class="form-control" id="firstname" name="firstname" required
							placeholder="Enter First Name">
					</div>
				</div>

				<div class="form-group">
					<label for="lastname" class="col-sm-2 control-label">Last
						Name</label>

					<div class="col-sm-4">
						<input type="text" class="form-control" id="lastname" name="lastname"
							required placeholder="Enter Last Name">
					</div>
				</div>

				<div class="form-group">
					<label class="col-sm-2 control-label">Sex</label> <label
						class="radio-inline"><input type="radio" name="sex" value="male" checked>Male</label>
					<label class="radio-inline"><input type="radio" name="sex" value="female">Female</label>
				</div>

				<div class="form-group">
					<label for="username" class="col-sm-2 control-label">User
						Name</label>

					<div class="col-sm-4">
						<input type="text" class="form-control" id="username" required
							placeholder="Enter User Name">
					</div>
				</div>
				<div class="form-group">
					<label for="password" class="col-sm-2 control-label">Password</label>

					<div class="col-sm-4">
						<input type="password" class="form-control" id="password"
							placeholder="Enter Password">
					</div>
				</div>

				<div class="form-group">
					<label class="col-sm-2 control-label">Password</label>

					<div class="col-sm-4">
						<input type="password" class="form-control" id="password2"
							placeholder="Enter Password Again">
					</div>
				</div>
				<div class="form-group col-sm-2 control-label">
					<button type="submit" class="btn btn-default">Submit</button>
				</div>
			</form>
		</div>
	</div>

	<script
		src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	<script
		src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
</body>
</html>