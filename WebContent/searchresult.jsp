<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<%
      if(session.getAttribute("uname")==null || session.getAttribute("pass")==null)
      {
    	  response.sendRedirect("login.jsp");
      }
   %>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Profile</title>
<link rel="stylesheet" href="assets/css/footer.css">
<link rel="stylesheet" href="assets/css/header.css">
<link rel="stylesheet" href="assets/css/default.css">

<link rel="stylesheet" href="assets/css/search.css">

<link href='https://fonts.googleapis.com/css?family=tittilium'
	rel='stylesheet'>
<link
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet"
	integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN"
	crossorigin="anonymous">
<link href='https://fonts.googleapis.com/css?family=BioRhyme'
	rel='stylesheet'>
<script defer src="assets/scripts/editPage.js"></script>


</head>


<body>
	<section class="header">
		<section class="hamburgerbar">
			<i class="fa fa-bars fa-2x"></i>
		</section>
		<section class="logo-wrapper">

			<img src="assets/images/logo.png" alt="Recommedation System">

		</section>

		<section class="menu-wrapper">
			<ul>
				<li><a href="home.jsp" >Home</a></li>
				<li><a href="explore.jsp">Explore</a></li>
				<li><a href="login.jsp">Log In</a></li>
				<li><a href="aboutus.jsp">About us</a></li>
				<li class="user"><a href="profile.jsp" id="active">My Profile</a></li>
			</ul>
		</section>
	</section>
  <!------------------------------------------------------------------------------>

  <section class="main">
    <section class="search-result">
    <h1>Search Results..</h1>
    <section class="books_result">
           
           <c:forEach var="product" items="${products }">
           
            <section class="result">
            <img src="assets/images/laptops/1.jpg" alt="book1">
            <h1>Lenovo Ideapad E-13 slim</h1>
            <p>Lenovo</p>
            <p>Price: ${product.productPrice }/-</p>
            <p>Free shipping</p>
            
        
            <b>Rating:</b>
                <section class="rating" style="color: orange;">
                    <span class="fa fa-star checked"></span>
                    <span class="fa fa-star checked"></span>
                    <span class="fa fa-star checked"></span>
                    <span class="fa fa-star"></span>
                    <span class="fa fa-star"></span>
                </section>

            <span><button>More Info</button> <button>Buy Online</button></span>
          </section>

          
       	</c:forEach>
        

          
    </section>
</section>
</section>


 <!------------------------------------------------------------------------------>

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