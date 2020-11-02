<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>welcome-page</title>


</head>
<body>
	<div align="center">
		<h2>Welcome to UserStores</h2>
	</div>

	<hr>
	<!-- display username and role -->
	<p>
		User :
		<security:authentication property="principal.username" />
		<br> <br> Role(s) :
		<security:authentication property="principal.authorities" />
	</p>

	<security:authorize access="hasRole('MANAGER')">
		<hr>
		<!-- add link to leaders... this is for managers -->
		<p>
			<a href="${pageContext.request.contextPath }/leaders">Managers</a> (only for Manager people)
		</p>
	</security:authorize>

	<security:authorize access="hasRole('ADMIN')">
		<hr>
		<!-- add link to admain... this is for Admains -->
		<p>
			<a href="${pageContext.request.contextPath }/systems">IT Systems
				Meeting</a> (only for Admain people)
		</p>
	</security:authorize>

	<hr>

	<form:form action="${pageContext.request.contextPath }/logout"
		method="POST">
		<input type="submit" value="Logout">
	</form:form>



</body>
</html>