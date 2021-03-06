<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
	<head>
		<title>Fitness Tracker Custom Login Page</title>
		
		<style type="text/css">
		
		.errorblock {
			color: #ff0000;
			background-color: #ffEEEE;
			border: 3px solid #ff0000;
			padding: 8px;
			margin: 16px;
		}
		</style>
	</head>
	
	<!-- force username in focus -->
	<body onload='document.f.j_username.focus();'>
		<h3>Fitness Tracker Custom Login Page</h3>
		<c:if test="${not empty error}">
			<div class="errorblock">
				Your login was unsuccessful. <br />
				<br /> Caused by:
				${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message }
			</div>
		</c:if>
	
		<!-- j_spring_security_check = Spring url
			     f = the defined f.j_username on <body onload='document.f.j_username.focus(); to set focus
			-->
		<form action="j_spring_security_check" name="f" method="post">
			<table>
				<tr>
					<td>User:</td>
					<td><input type="text" name="j_username" value=""></td>
				</tr>
				<tr>
					<td>Password:</td>
					<td><input type="password" name="j_password"></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" name="Submit"
						 value="Login"> <input type="reset" name="reset"></td>
				</tr>
			</table>
		</form>
	</body>
</html>