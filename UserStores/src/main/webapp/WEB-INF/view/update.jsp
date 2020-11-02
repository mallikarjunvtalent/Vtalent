<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Store</title>
</head>
<body>
	
	<div> </div>
	<div align="center">
		<form:form action="saveInTable" modelAttribute="storeBean" method="POST">
		<form:hidden path="storeId"/>
			<table>
				<tr>
					<td><label>Store Name:</label></td>
					<td><form:input path="storeName"/> </td>
				</tr>
				
				<tr>
					<td><label>Store Location:</label></td>
					<td><form:input path="storeArea"/></td>
				</tr>
				<tr>
				<td><label>ZipCode:</label></td>
				<td><form:input path="zipcode"/> </td>
				
				</tr>
				
				<tr>
					<td><label>Distance in kilometers:</label></td>
					<td><form:input path="distanceInMiles"/></td>
				</tr>
				<tr>
				<td><input type="submit" value="Add"></td>
				<td><input type="reset" value="Reset"></td>
				
				</tr>
				<tr><td>
					<p>
					<a href="${pageContext.request.contextPath}/findStore">Back to List</a>
					</p>
				</td></tr>

			</table>
			
		</form:form>
	</div>
</body>
</html>