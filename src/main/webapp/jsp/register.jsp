<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset="ISO-8859-1">
<title>Register welcome</title>
</head>
<body>
	<div align="center">
		<form:form method="POST" action="userRegister" modelAttribute="fresher">
			<table>
				<tr>
					<td>
						<form:label path="username">Username</form:label>
					</td>
					<td>
						<form:input path="username" name="username" id="username"/>
					</td>
				</tr>
				
				<tr>
					<td>
						<form:label path="password">Password</form:label>
					</td>
					<td>
						<form:input path="password" name="password" id="password"/>
					</td>
				</tr>
				
				<tr>
					<td>
						<form:label path="location">Location</form:label>
					</td>
					<td>
						<form:input path="location" name="location" id="location"/>
					</td>
				</tr>
				<tr>
					<td>
						<form:label path="year">Year</form:label>
					</td>
					<td>
						<form:input path="year" name="year" id="year"/>
					</td>
				</tr>
				<tr>
					<td>
					</td>
					<td>
						<form:button name="register" id="register">Register</form:button>
					</td>
				</tr>
			</table>
		</form:form>
	</div>
</body>
</html>