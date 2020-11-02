<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List of Stores</title>
</head>
<body>
	<div align="center">
		<jsp:include page="welcome.jsp" />
	</div>
	<div align="center">
		<table>
			<tr>
				<th>Store Id</th>
				<th>Store Name</th>
				<th>Store Location</th>
				<th>ZipCode</th>
				<th>Distance (KM)</th>
				<th>Action</th>
			</tr>
			<tbody>
				<c:forEach var="temp" items="${storeBeans}">
				
					<c:url var="updateLink" value="/updateStore">
						<c:param name="storeId" value="${temp.storeId }"></c:param>
					</c:url>
					<c:url var="deleteLink" value="/deleteStore">
						<c:param name="storeId" value="${temp.storeId }"></c:param>
					</c:url>
					
					<tr>
						<td>${temp.storeId}</td>
						<td>${temp.storeName}</td>
						<td>${temp.storeArea}</td>
						<td>${temp.zipcode}</td>
						<td>${temp.distanceInMiles}</td>
						<td><a href="${updateLink }">Update</a>
						<a href="${deleteLink }"
							onclick="if(!(confirm('Are you sure you want to delete this store?'))) return false">Delete</a>
							</td>
					</tr>

				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>