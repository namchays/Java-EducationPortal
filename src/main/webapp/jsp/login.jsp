<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<c:if test="${param['error'] }">Incorrect UserName Or Password</c:if>
		<form:form method="POST" action="dashboard" modelAttribute="fresher">
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
					</td>
					<td>
						<form:button name="login" id="login">Login</form:button>
					</td>
				</tr>
			</table>
		</form:form> 
	</div>
</body>
</html>