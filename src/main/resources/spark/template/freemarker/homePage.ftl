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
	
	<#include "nav.ftl">
	
    <!-- Carousel
    ================================================== -->
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
      </ol>
      <div class="carousel-inner" role="listbox">
        <div class="item active">
          <img class="first-slide" src="images/img1.jpg" alt="First slide">
          <div class="container">
            <div class="carousel-caption">
              <h1>Choose Your Sport</h1>
              <!-- <p><code>file://</code> URL, the "next" and "previous" Glyphicon buttons on the left and right might not load/display properly due to web browser security rules.</p> -->
              <p><a class="btn btn-lg btn-primary" href="#" role="button">Sign up as a Manager Today</a></p>
            </div>
          </div>
        </div>
        <div class="item">
          <img class="second-slide" src="images/img2.jpg" alt="Second slide">
          <div class="container">
            <div class="carousel-caption">
              <h1>Organize and manage your Soccer/Basketball Tournaments Online</h1>
              <p>With this application you can manage everything from team registrations to match scheduling for your tournaments.</p>
              <p><a class="btn btn-lg btn-primary" href="#" role="button">Learn more</a></p>
            </div>
          </div>
        </div>
        <div class="item">
          <img class="third-slide" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="Third slide">
          <div class="container">
            <div class="carousel-caption">
              <h1>Sign Up as a Participant</h1>
              <p>Sign up as a team captain for your sport and participate in many of the tournaments organized by tournament organizers.</p>
              <p><a class="btn btn-lg btn-primary" href="#" role="button">Sign Up As a Team</a></p>
            </div>
          </div>
        </div>
      </div>
      <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div><!-- /.carousel -->

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