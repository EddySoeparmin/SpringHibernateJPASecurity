<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
   <head>
      <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
      <title>Goals / Exercise Report</title>
      <!-- Bootstrap -->
      <link rel="stylesheet" href="assets/css/bootstrap.css">
      <link rel="stylesheet" href="assets/css/bootstrap-table.min.css">
      <link rel="stylesheet" href="myCSS.css">
   </head>
   <body>
   	<div class="container">
      	<div class="well well-sm lightGreen"><strong>Goals / Exercise Report</strong></div>
	      <table class="table table-striped table-bordered">
	         <tr class="info">
	            <th>ID</th>
	            <th>Minutes</th>
	         </tr>
	         <c:forEach items="${goals}" var="goal">
	            <tr>
	               <td>${goal.id}</td>
	               <td>${goal.minutes}</td>
	               <td>
	                  <table class="table table-striped table-bordered table-hover">
	                     <tr class="info">
	                        <th>Exercise ID</th>
	                        <th>Exercise Minutes</th>
	                        <th>Exercise Activity</th>
	                     </tr>
	                     <c:forEach items="${goal.exercises}" var="exercise">
	                        <tr>
	                           <td>${exercise.id}</td>
	                           <td>${exercise.minutes}</td>
	                           <td>${exercise.activity}</td>
	                        </tr>
	                     </c:forEach>
	                  </table>
	               </td>
	            </tr>
	         </c:forEach>
	      </table>
   	</div>
      <script src="jquery-1.9.1.min.js"></script>
      <script src="assets/js/bootstrap.js"></script>
      <script src="assets/js/bootstrap-table.min.js"></script>
   </body>
</html>