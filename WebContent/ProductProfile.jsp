<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
    <div>
       <h1>Product id: ${selected.productID}</h1>
       <h2>Brand of Product: ${selected.productName}</h2>
       <h2>Price of Product: ${selected.productPrice}</h2>
       </br>
       <h1>Buy this product?</h1>
       <a href="amazon.com">Amazon</a>
       </br>
       <a href="flipkart.com">FlipKart</a>
       </br>
       <a href="snapdeal.com">SnapDeal</a>
       </br>
    </div>
</body>
</html>