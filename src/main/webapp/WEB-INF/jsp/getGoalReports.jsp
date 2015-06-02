<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
   <head>
      <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
      <title>Get Goal Reports</title>
      <!-- Bootstrap -->
      <link rel="stylesheet" href="assets/css/bootstrap.min.css">
      <link rel="stylesheet"href="assets/css/bootstrap-table.min.css">
      <link rel="stylesheet" href="myCSS.css">
   </head>
   <body>
      <div class="container">
      	<div class="well well-sm lightGreen"><strong>Get Goal Reports</strong></div>
         <table class="table table-striped table-bordered table-hover" >
	         <thead>
	            <tr class="info">
	               <th>Minutes</th>
	               <th>Exercise Minutes</th>
	               <th>Activity</th>
	            </tr>
	            <c:forEach items="${goalReports}" var="goalReport">
	               <tr>
	                  <td>${goalReport.goalMinutes}</td>
	                  <td>${goalReport.exerciseMinutues}</td>
	                  <td>${goalReport.exerciseActivity}</td>
	               </tr>
	            </c:forEach>
	         <thead>
         </table>
    	</div>
      <script src="jquery-1.9.1.min.js"></script>
      <script src="assets/js/bootstrap.min.js"></script>
      <script src="assets/js/bootstrap-table.min.js"></script>
   </body>
</html>