<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>result Page</title>
</head>
<body>

	<h3>Product List</h3>
	
	<table border="1" cellpadding="2" cellspacing="2">
		<tr>
			<th>Id</th>
			<th>Name</th>
			<th>Price</th>
		
		</tr>
		
		<c:forEach var="product" items="${products }">
			
			<tr>
				<td>${product.productID }</td>
				<td>${product.productName}</td>
				
				<td>${product.productPrice }</td>
			    <td><a href="http://localhost:8080/RecommendationSystem/viewproduct?pid=${product.productID }">View</a></td>
			</tr>
		</c:forEach>
		
	</table>

</body>
</html>