<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="votes" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>So Hot Right Now</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/round-about.css" rel="stylesheet">
    
    <!-- Font-Awesome -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    
    <!-- AngularJS + ChartJS -->
    <link rel="stylesheet" href="js/bower_components/angular-chart.js/angular-chart.css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body ng-controller="VotesController as votes">

    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="http://www.chrisriouxapplications.com/">Chris Rioux Applications</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="https://www.linkedin.com/in/chrisrioux">About</a>
                    </li>
                    <li>
                        <a href="#contact">Contact</a>
                    </li>
                </ul>
            </div><!-- /.navbar-collapse -->
        </div><!-- /.container -->
    </nav>

    <!-- Page Content -->
    <div class="container">

        <!-- Introduction Row -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Vote's Out Amigo...
                    <small> What's to Ponder?</small>
                </h1>
            </div>
        </div><!-- /.row -->

        <!-- The Hottest Row -->
        <div class="row">
            <div class="col-lg-4 col-sm-6 text-center">
                <img class="img-circle" src="img/hoff.jpg" alt="http://placehold.it/200x200" width="300" height="300">
                <h3>David Hasselhoff
                    <small>Bad Mamma Jamma</small>
                </h3>
                <p>Have you seen <a href="https://www.youtube.com/watch?v=bS5P_LAqiVg">Kung Fury</a>? Of course you have, you don't live under a rock!</p>
            </div>
            <div class="col-lg-4 col-sm-6 text-center">
                <img class="img-circle" src="img/shia.jpg" alt="http://placehold.it/200x200" width="300" height="300">
                <h3>Shia LaBeouf
                    <small>Just Do It!</small>
                </h3>
                <p>Can you afford NOT to vote for <a href="https://www.youtube.com/watch?v=o0u4M6vppCI">this</a> guy?</p>
            </div>
            <div class="col-lg-4 col-sm-6 text-center">
                <img class="img-circle" src="img/ryan.jpg" alt="http://placehold.it/200x200" width="300" height="300">
                <h3>Ryan Gosling
                    <small>What Do YOU Want?</small>
                </h3>
                <p>It's not that simple!</p>
            </div>
        </div><!-- /.row -->
        
        <!-- Voting -->
        <div class="row">
            <div class="col-md-4 text-center">   
            <h3>Don't hassle the Hoff!</h3>
            <p>Choose One</p>
           	</br>
                <form class="form-inline" id="daveForm" name="daveForm" role="form">
                	<div class="input-group">
      					<div class="checkbox-inline">
  							<label><input class="daveChecks" type="checkbox" id="daveHot" name="vote" value="Hot">Hot</label>
						</div>
						<div class="checkbox-inline">
  							<label><input class="daveChecks" type="checkbox" id="daveHotter" name="vote" value="Hotter">Hotter</label>
						</div>
						<div class="checkbox-inline">
  							<label><input class="daveChecks" type="checkbox" id="daveHottest" name="vote" value="Hottest">Hottest</label>
						</div>
            			<div class="col-lg-12 text-center">
						</br>
							<input type="hidden" name="name" value="David Hasselhoff">
                			<button id="daveBtn" type="submit" class="btn btn-default btn-lg center-block">Vote!</button>
   						</div>
   					</div><!-- /input-group -->
   				</form>
            </div>
            
            <div class="col-md-4 text-center">   
            <h3>DO IT!</h3>
            <p>Choose One</p>
           	</br>
                <form class="form-inline" id="shiaForm" name="shiaForm" role="form" method="POST" action="#">
                	<div class="input-group">
      					<div class="checkbox-inline">
  							<label><input class="shiaChecks" type="checkbox" name="vote" value="Hot">Hot</label>
						</div>
						<div class="checkbox-inline">
  							<label><input class="shiaChecks" type="checkbox" name="vote" value="Hotter">Hotter</label>
						</div>
						<div class="checkbox-inline">
  							<label><input class="shiaChecks" type="checkbox" name="vote" value="Hottest">Hottest</label>
						</div>
            			<div class="col-lg-12 text-center">
						</br>
							<input type="hidden" name="name" value="Shia LaBeouf">
                			<button id="shiaBtn" type="submit" class="btn btn-default btn-lg center-block">Vote!</button>
   						</div>
   					</div><!-- /input-group -->
   				</form>
            </div>
            
            <div class="col-md-4 text-center">   
            <h3>Hey Girl...</h3>
            <p>Choose One</p>
           	</br>
                <form class="form-inline" id="ryanForm" name="ryanForm" role="form" method="POST" action="#">
                	<div class="input-group">
      					<div class="checkbox-inline">
  							<label><input class="ryanChecks" type="checkbox" name="vote" value="Hot">Hot</label>
						</div>
						<div class="checkbox-inline">
  							<label><input class="ryanChecks" type="checkbox" name="vote" value="Hotter">Hotter</label>
						</div>
						<div class="checkbox-inline">
  							<label><input class="ryanChecks" type="checkbox" name="vote" value="Hottest">Hottest</label>
						</div>
            			<div class="col-lg-12 text-center">
						</br>
							<input type="hidden" name="name" value="Ryan Gosling">
                			<button id="ryanBtn" type="submit" class="btn btn-default btn-lg center-block">Vote!</button>
   						</div>
   					</div><!-- /input-group -->
   				</form>
            </div>     
        </div><!-- /.row -->
        
        <hr>
        
        <!-- Charts -->
        <div class="row">
            <div ng-repeat="item in vote | filter:voteFilter" class="col-md-4">
                <div class="well">
                	<canvas id="bar" class="chart chart-bar" chart-data="data[$index]" chart-labels="labels" chart-colours="colours" width="300" height="300"></canvas>
                </div><!-- /.well -->
            </div><!-- /.col-md-4 -->
            
        </div><!-- /.row -->
		
		<!--  Contact -->
		<section id="contact" class="container content-section text-center">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2">
                <h2>Nice Comeback...</h2>
                <p>Special thanks to <a href="http://startbootstrap.com/">Start Bootstrap</a> and <a href="http://skilldistillery.com/">Skill Distillery!</a></p>
                <ul class="list-inline banner-social-buttons">
                    <li>
                        <a href="https://twitter.com/chrisrioux_" target="_blank" class="btn btn-default btn-lg"><i class="fa fa-twitter fa-fw"></i> <span class="network-name">Twitter</span></a>
                    </li>
                    <li>
                        <a href="https://github.com/chris-rioux" target="_blank" class="btn btn-default btn-lg"><i class="fa fa-github fa-fw"></i> <span class="network-name">Github</span></a>
                    </li>
                    <li>
                        <a href="https://www.linkedin.com/in/chrisrioux" target="_blank" class="btn btn-default btn-lg"><i class="fa fa-linkedin-square fa-fw"></i> <span class="network-name">LinkedIn</span></a>
                    </li>
                </ul>
            </div>
        </div><!-- /.row -->
    </section>
		
	<!-- Footer -->
	<footer>
	    <div class="row">
	        <div class="col-lg-12">
	    		<p class="text-center">Copyright &copy; <a href="http://www.chrisriouxapplications.com/" target="_blank">Chris Rioux Applications</a> 2016</p>                
	        </div><!-- /.col-lg-12 -->
	    </div><!-- /.row -->
	</footer>

	</div><!-- /.container -->

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
    
    <!-- AngularJS -->
	<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.9/angular.min.js"></script>
	<script src="app/components/app.js"></script>
    
    <!-- ChartJS -->
    <script src="js/Chart.js-master/Chart.js"></script>
    
    <!-- AngularJS + ChartJS -->
    <script src="js/bower_components/angular-chart.js/angular-chart.js"></script>

	<!-- RESTful Votes -->
	<script src="app/components/vote.js"></script>
	
	<!-- checkboxes.js -->
	<script src="js/jquery.checkboxes-1.0.6.min.js"></script>
	<script>
	// Hasselhoff
	jQuery(function($) {
	    $('#daveForm').checkboxes('max', 1);
	});
	
	// Hasselhoff
	jQuery(function($) {
	    $('#shiaForm').checkboxes('max', 1);
	});
	
	// Hasselhoff
	jQuery(function($) {
	    $('#ryanForm').checkboxes('max', 1);
	});
	</script>
    
</body>

</html>