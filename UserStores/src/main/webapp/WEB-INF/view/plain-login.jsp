<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Custom login form</title>

<style type="text/css">
.failed {
	color: red;
}
</style>

</head>
<body>
	<h2>Login Form</h2>
	<form:form
		action="${pageContext.request.contextPath }/authenticateTheUser"
		method="POST">

		<!-- checking for error -->
		<c:if test="${param.error!=null }">
			<i class="failed">Sorry! You enterd invalid username/password</i>
		</c:if>


		<p>
			User Name : <input type="text" name="username" />
		</p>
		<p>
			Password : <input type="password" name="password" />
		</p>
		<input type="submit" value="Login">
	</form:form>
</body>
</html>