<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
</head>
<body>
	<h1>Welcome to Home Page</h1>
	<br />
	<hr>
	<p>
		User :
		<security:authentication property="principal.username" />
		<br /> <br /> Role(s) :
		<security:authentication property="principal.authorities" />
	</p>
	<hr>
	


	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
		Facilis consectetur voluptatibus deleniti ipsum facere fugit
		praesentium enim ipsam deserunt similique possimus recusandae
		voluptatum atque provident quasi quae dolore magni voluptas.</p>

	<hr>
	
	<security:authorize access="hasRole('MANAGER')">
	<a href="${pageContext.request.contextPath }/leaders">Leaders Page</a>
	</security:authorize>
	
	<security:authorize access="hasRole('ADMIN')">
	<a href="${pageContext.request.contextPath }/systems">Systems Page</a>
	</security:authorize>
	

	<form:form action="${pageContext.request.contextPath }/logout"
		method="POST">

		<button type="submit">Logout</button>


	</form:form>
</body>
</html>