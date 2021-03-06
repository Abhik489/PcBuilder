<%@ page language="java" contentType="text/html; charset=UTF-8"
	 pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>About Us</title>
<link rel="stylesheet" href="assets/css/footer.css">
<link rel="stylesheet" href="assets/css/header.css">
<link rel="stylesheet" href="assets/css/default.css">
<link rel="stylesheet" href="assets/css/showcase.css">
<link rel="stylesheet" href="assets/css/offer.css">
<link rel="stylesheet" href="assets/css/webfeatures.css">
<link rel="stylesheet" href="assets/css/AboutUs.css">
<link rel="stylesheet" href="assets/css/build.css">
<link rel="stylesheet" href="assets/css/ReccomsndationProfilePage.css">

<link href='https://fonts.googleapis.com/css?family=Open Sans'
	rel='stylesheet'>
<link
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet"
	integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN"
	crossorigin="anonymous">


</head>
<body>
	<section class="header">
		<section class="hamburgerbar">
			<i class="fa fa-bars fa-2x"></i>
		</section>
		<section class="logo-wrapper">

			<img src="assets/images/logo.png" alt="Recommendation System">

		</section>

		<section class="menu-wrapper">
			<ul>
				<li><a href="home.jsp">Home</a></li>
				<li><a href="explore.jsp">Explore</a></li>
				<li><a href="aboutus.jsp" id="active">About us</a></li>
				<li><a href=login.jsp>Log In</a></li>
			

			</ul>
		</section>
	</section>

    <!-- ------------------------------------------------------------------------------------------- -->

	<div class="bcontainer">
	      <div class="title">
	        <h1>Best PC Build For You!</h1>
	      </div>
	      <button>Save Build <i class="fa fa-save"> </i></button>
	      <div class="build">
	        <div class="cards">
			                
			           
	                <c:forEach  var="product"  items="${products}" >
	                <div class="card">
	                
	                <img src="assets/images/${product.ptype}.svg" alt="CPU">
	                <h1>${product.productName}</h1>
	                <p>${product.productPrice}</p>
	                <a href="amazon.com">Buy Online</a>
	                </div>
	                </c:forEach>   
	        </div>     
	    </div>
    </div>

    <!-- ------------------------------------------------------------------------------------------- -->
	<section class="footer">
		<section class="social_links">
			<i class="fa fa-facebook"></i> <i class="fa fa-instagram"></i> <i
				class="fa fa-twitter"></i>
		</section>
		<section class="f_info">
			<section class="f_info1">
				<h1>About Us</h1>
				<span> Builts by Price </span>| <span> Parts </span>| <span>
					Game Criteria </span>| <span> Prebuilts Recommendations </span> <br>
				<br>
				<h1>Contact Us</h1>
				<i class="fa fa-phone" style="margin-right: 10px"></i>&nbsp;<span>+919974435870</span>
				<br> <i class="fa fa-envelope" style="margin-right: 10px"></i>&nbsp;<span>Recommendation@gmail.com</span>

			</section>

			<section class="newslatter">
				<h1>Subscribe for NewsLetters</h1>
				<input type="email" placeholder="Your E-mail Address"> <br>
				<button onclick="subscribe()">Subscribe</button>
			</section>
		</section>
	</section>
</body>
</html>

