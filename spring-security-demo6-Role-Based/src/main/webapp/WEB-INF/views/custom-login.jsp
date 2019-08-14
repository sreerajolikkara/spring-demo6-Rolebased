<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<h2>My Custom Form</h2>
	<form action="${pageContext.request.contextPath}/authenticateTheUser"
	method="POST">
	<c:if test="${param.error!=null}"><em>Wrong Credentials!</em></c:if>
	<c:if test="${param.logout!=null}"><em>logged out!</em></c:if>
		<p>User Name: <input type="text" name="username"/></p>
		<p>Password: <input type="password" name="password"/></p>
		<button type="submit">Login </button>
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
	</form>
</body>
</html>