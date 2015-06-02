<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="utf-8">
      <title>Index.jsp</title>
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <!-- Bootstrap -->
      <link href="assets/css/bootstrap.css" rel="stylesheet">
      <link href="assets/css/bootstrap-responsive.css" rel="stylesheet">
      <style>
         body { padding-top: 60px; /* 60px to make the container go all the way
         to the bottom of the topbar */ }
      </style>
      <!-- Le fav and touch icons -->
      <link rel="shortcut icon" href="assets/ico/favicon.ico">
      <link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/ico/apple-touch-icon-144-precomposed.png">
      <link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/ico/apple-touch-icon-114-precomposed.png">
      <link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/ico/apple-touch-icon-72-precomposed.png">
      <link rel="apple-touch-icon-precomposed" href="assets/ico/apple-touch-icon-57-precomposed.png">
      <style>
      </style>
   </head>
   <body>
      <nav class="navbar navbar-inverse navbar-fixed-top cbp-af-header" role="navigation">
         <div class="navbar-inner navbar-left">
            <div class="container-fluid">
               <!-- Brand and toggle get grouped for better mobile display -->
               <div class="navbar-header">
                  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                  <span class="sr-only">Toggle navigation</span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                  </button>
               </div>
               <!-- Collect the nav links, forms, and other content for toggling -->
               <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                  <ul class="nav navbar-nav navbar-right">
                     <li><a href="index.jsp">Home</a></li>
                     <li><a href="addGoal.html">Add Goal »</a></li>
                     <li><a href="addMinutes.html">Add Exercise Minutes »</a></li>
                     <li><a href="getGoals.html">Get Goals »</a></li>
                     <li><a href="getGoalReports.html">Get Goal Reports »</a></li>
                  </ul>
               </div>
               <!-- /.navbar-collapse -->            
               <!--  <a class="brand" href="index.jsp">
                  Get started
                  </a>
                  <ul class="nav">
                  </ul> -->
            </div>
         </div>
      </nav>
      <div class="jumbotron">
         <div class="container">
            <h1>
               Welcome to Fitness Tracker <sec:authentication property="name"/>!
            </h1>
            <p>
               To get started, we need to enter a goal for what we want to exercise for
               today.
            </p>
            <a class="btn btn-primary" href="addGoal.html">Add Goal »</a>
            <a class="btn btn-primary" href="addMinutes.html">Add Exercise Minutes »</a>
            <a class="btn btn-primary" href="getGoals.html">getGoals »</a>
            <a class="btn btn-primary" href="getGoalReports.html">getGoalReports »</a>
				<!-- Logout button -->
				<a class="btn btn-warning" href="j_spring_security_logout">Logout »</a>
         </div>
         <div></div>
      </div>
      <script src="jquery-1.9.1.js"></script>
      <script src="assets/js/bootstrap.js"></script>
   </body>
</html>