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
		
<div align="center">
	<table>
	
					<tr>
						<td>
							<div style="text-align: center;">
								<tr>
								<td><input type="button" value="Find Stores" onclick="location.href='findStore'"> </td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td><form:form action="${pageContext.request.contextPath }/logout"
										method="POST">
									<input type="submit" value="Logout">
									</form:form></td>
								</tr>
							</div>
						</td>
					</tr>
				</table>
				</div>
				
				
				
</body>
</html>