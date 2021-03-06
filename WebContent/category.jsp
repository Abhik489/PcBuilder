<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Choose Category</title>
    <link rel="stylesheet" href="assets/css/footer.css" />
    <link rel="stylesheet" href="assets/css/header.css" />
    <link rel="stylesheet" href="assets/css/default.css" />
    <link rel="stylesheet" href="assets/css/showcase.css" />
    <link rel="stylesheet" href="assets/css/offer.css" />
    <link rel="stylesheet" href="assets/css/webfeatures.css" />
    <link rel="stylesheet" href="assets/css/ReccomsndationProfilePage.css" />

    <link
      href="https://fonts.googleapis.com/css?family=tittilium"
      rel="stylesheet"
    />
    <link
      href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
      rel="stylesheet"
      integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN"
      crossorigin="anonymous"
    />
    <link
      href="https://fonts.googleapis.com/css?family=BioRhyme"
      rel="stylesheet"
    />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <link rel="stylesheet" href="assets/css/category.css" />
      </head>

  <body>
    <section class="header">
      <section class="hamburgerbar">
        <i class="fa fa-bars fa-2x"></i>
      </section>
      <section class="logo-wrapper">
        <img src="assets/images/logo.png" alt="Recommendation System" />
      </section>

      <section class="menu-wrapper">
        <ul>
          <li><a href="index.html" id="active">Home</a></li>
          <li><a href="explore.html">Explore</a></li>
          <li><a href="login.html">Log In</a></li>
          <li><a href="AboutUs.html">About us</a></li>
          <li><a href="donate.html">Donate</a></li>
          <li class="user"><a href="profile.html">My Profile</a></li>
        </ul>
      </section>
    </section>
    <div class="choose-category-page">

    <form action="Build" method="POST" id="category-form">

    <h1 class="display-4 lead text-left mt-5 text-white">1. Why do you want a pc ?</h1>
    <div id="categories">
      <section>
        <input type="checkbox" id="check_4" name="category" value="check_4">
        <label for="check_4"><svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-laptop" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
          <path fill-rule="evenodd" d="M13.5 3h-11a.5.5 0 0 0-.5.5V11h12V3.5a.5.5 0 0 0-.5-.5zm-11-1A1.5 1.5 0 0 0 1 3.5V12h14V3.5A1.5 1.5 0 0 0 13.5 2h-11z"/>
          <path d="M0 12h16v.5a1.5 1.5 0 0 1-1.5 1.5h-13A1.5 1.5 0 0 1 0 12.5V12z"/>
        </svg> Casual</label>
      </section>

      <section >
        <input type="checkbox" id="check_1" name="category" value="check_1">
        <label for="check_1"><svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-controller" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
          <path fill-rule="evenodd" d="M11.119 2.693c.904.19 1.75.495 2.235.98.407.408.779 1.05 1.094 1.772.32.733.599 1.591.805 2.466.206.875.34 1.78.364 2.606.024.815-.059 1.602-.328 2.21a1.42 1.42 0 0 1-1.445.83c-.636-.067-1.115-.394-1.513-.773a11.307 11.307 0 0 1-.739-.809c-.126-.147-.25-.291-.368-.422-.728-.804-1.597-1.527-3.224-1.527-1.627 0-2.496.723-3.224 1.527-.119.131-.242.275-.368.422-.243.283-.494.576-.739.81-.398.378-.877.705-1.513.772a1.42 1.42 0 0 1-1.445-.83c-.27-.608-.352-1.395-.329-2.21.024-.826.16-1.73.365-2.606.206-.875.486-1.733.805-2.466.315-.722.687-1.364 1.094-1.772.486-.485 1.331-.79 2.235-.98.932-.196 2.03-.292 3.119-.292 1.089 0 2.187.096 3.119.292zm-6.032.979c-.877.185-1.469.443-1.733.708-.276.276-.587.783-.885 1.465a13.748 13.748 0 0 0-.748 2.295 12.351 12.351 0 0 0-.339 2.406c-.022.755.062 1.368.243 1.776a.42.42 0 0 0 .426.24c.327-.034.61-.199.929-.502.212-.202.4-.423.615-.674.133-.156.276-.323.44-.505C4.861 9.97 5.978 9.026 8 9.026s3.139.943 3.965 1.855c.164.182.307.35.44.505.214.25.403.472.615.674.318.303.601.468.929.503a.42.42 0 0 0 .426-.241c.18-.408.265-1.02.243-1.776a12.354 12.354 0 0 0-.339-2.406 13.753 13.753 0 0 0-.748-2.295c-.298-.682-.61-1.19-.885-1.465-.264-.265-.856-.523-1.733-.708-.85-.179-1.877-.27-2.913-.27-1.036 0-2.063.091-2.913.27z"/>
          <path d="M11.5 6.026a.5.5 0 1 1-1 0 .5.5 0 0 1 1 0zm-1 1a.5.5 0 1 1-1 0 .5.5 0 0 1 1 0zm2 0a.5.5 0 1 1-1 0 .5.5 0 0 1 1 0zm-1 1a.5.5 0 1 1-1 0 .5.5 0 0 1 1 0zm-7-2.5h1v3h-1v-3z"/>
          <path d="M3.5 6.526h3v1h-3v-1zM3.051 3.26a.5.5 0 0 1 .354-.613l1.932-.518a.5.5 0 0 1 .258.966l-1.932.518a.5.5 0 0 1-.612-.354zm9.976 0a.5.5 0 0 0-.353-.613l-1.932-.518a.5.5 0 1 0-.259.966l1.932.518a.5.5 0 0 0 .612-.354z"/>
        </svg> Gaming</label>
      </section>
      
      <section >
        <input type="checkbox" id="check_2" name="category" value="check_2">
        <label for="check_2"><svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-columns-gap" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
          <path fill-rule="evenodd" d="M6 1H1v3h5V1zM1 0a1 1 0 0 0-1 1v3a1 1 0 0 0 1 1h5a1 1 0 0 0 1-1V1a1 1 0 0 0-1-1H1zm14 12h-5v3h5v-3zm-5-1a1 1 0 0 0-1 1v3a1 1 0 0 0 1 1h5a1 1 0 0 0 1-1v-3a1 1 0 0 0-1-1h-5zM6 8H1v7h5V8zM1 7a1 1 0 0 0-1 1v7a1 1 0 0 0 1 1h5a1 1 0 0 0 1-1V8a1 1 0 0 0-1-1H1zm14-6h-5v7h5V1zm-5-1a1 1 0 0 0-1 1v7a1 1 0 0 0 1 1h5a1 1 0 0 0 1-1V1a1 1 0 0 0-1-1h-5z"/>
        </svg> Designing</label>
      </section>
      <section>
        <input type="checkbox" id="check_3" name="category" value="check_3">
        <label for="check_3"><svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-server" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
          <path fill-rule="evenodd" d="M1.333 2.667C1.333 1.194 4.318 0 8 0s6.667 1.194 6.667 2.667V4C14.665 5.474 11.68 6.667 8 6.667 4.318 6.667 1.333 5.473 1.333 4V2.667zm0 3.667v3C1.333 10.805 4.318 12 8 12c3.68 0 6.665-1.193 6.667-2.665V6.334c-.43.32-.931.58-1.458.79C11.81 7.684 9.967 8 8 8c-1.967 0-3.81-.317-5.21-.876a6.508 6.508 0 0 1-1.457-.79zm13.334 5.334c-.43.319-.931.578-1.458.789-1.4.56-3.242.876-5.209.876-1.967 0-3.81-.316-5.21-.876a6.51 6.51 0 0 1-1.457-.79v1.666C1.333 14.806 4.318 16 8 16s6.667-1.194 6.667-2.667v-1.665z"/>
        </svg> WorkStation</label>
      </section>

      
      
    </div>

    <!-------------------------------------------------------------------->
    <h1 class="display-4 lead text-left mt-5 text-white">2. Which CPU brand would you prefer</h1>
    <div id="categories">
      <section>
        <input type="checkbox" id="brand_1" name="brand" value="intel">
        <label for="brand_1"> Intel</label>
      </section>

      <section >
        <input type="checkbox" id="brand_2" name="brand" value="amd">
        <label for="brand_2">AMD</label>
      </section> 
    </div>

    <!-------------------------------------------------------------------->
    <h1 class="display-4 lead text-left mt-5 text-white">4. How much RAM do you need</h1>
    <div id="categories">
      <section>
        <input type="checkbox" id="ram_1" name="ram" value="2">
        <label for="ram_1"> 2 GB</label>
      </section>

      <section >
        <input type="checkbox" id="ram_2" name="ram" value="4">
        <label for="ram_2">4 GB</label>
      </section> 

      <section>
        <input type="checkbox" id="ram_3" name="ram" value="8">
        <label for="ram_3"> 8 GB</label>
      </section>

      <section >
        <input type="checkbox" id="ram_4" name="ram" value="16">
        <label for="ram_4">16 GB </label>
      </section> 

      <section>
        <input type="checkbox" id="ram_5" name="ram" value="32">
        <label for="ram_5"> 32 GB</label>
      </section>

    </div>

    <!-------------------------------------------------------------------->
    <h1 class="display-4 lead text-left mt-5 text-white">5. The type of memory</h1>
    <div id="categories">
      <section>
        <input type="checkbox" id="memtype_1" name="memtype" value="hdd">
        <label for="memtype_1"> HDD (cheap but slow)</label>
      </section>

      <section >
        <input type="checkbox" id="memtype_2" name="memtype" value="ssd">
        <label for="memtype_2"> SSD (fast but costly)</label>
      </section> 
    </div>

    <!-------------------------------------------------------------------->
    <h1 class="display-4 lead text-left mt-5 text-white">6. And how much</h1>
    <div id="categories">
      <section>
        <input type="checkbox" id="memory_1" name="memory" value="2">
        <label for="memory_1"> 2 GB</label>
      </section>

      <section >
        <input type="checkbox" id="memory_2" name="memory" value="4">
        <label for="memory_2">4 GB</label>
      </section> 

      <section>
        <input type="checkbox" id="memory_3" name="memory" value="8">
        <label for="memory_3"> 8 GB</label>
      </section>

      <section >
        <input type="checkbox" id="memory_4" name="memory" value="16">
        <label for="memory_4">16 GB </label>
      </section> 

      <section>
        <input type="checkbox" id="memory_5" name="memory" value="32">
        <label for="memory_5"> 32 GB</label>
      </section>
    </div>
     <!-------------------------------------------------------------------->
    <h1 class="display-4 lead text-left mt-5 text-white">6. And how much</h1>
    <div id="categories">
      <section>
        <input type="checkbox" id="memory_1" name="memory" value="2">
        <label for="memory_1"> 2 GB</label>
      </section>

      <section >
        <input type="checkbox" id="memory_2" name="memory" value="4">
        <label for="memory_2">4 GB</label>
      </section> 

      <section>
        <input type="checkbox" id="memory_3" name="memory" value="8">
        <label for="memory_3"> 8 GB</label>
      </section>

      <section >
        <input type="checkbox" id="memory_4" name="memory" value="16">
        <label for="memory_4">16 GB </label>
      </section> 

      <section>
        <input type="checkbox" id="memory_5" name="memory" value="32">
        <label for="memory_5"> 32 GB</label>
      </section>
    </div>
    
    
    <!-------------------------------------------------------------------->
    <h1 class="display-4 lead text-left mt-5 text-white">8. Budget</h1>
    <div id="categories">
      <section>
        <input type="checkbox" id="b_1" name="price" value="2000">
        <label for="budget_1"> Upto 2000 Rs</label>
      </section>

      <section >
        <input type="checkbox" id="b_2" name="price" value="5000">
        <label for="budget_2"> Upto 5000 Rs</label>
      </section> 

      <section>
        <input type="checkbox" id="b_3" name="price" value="10000">
        <label for="budget_3"> Upto 10000 Rs</label>
      </section>

      <section >
        <input type="checkbox" id="b_4" name="price" value="15000">
        <label for="budget_4"> Upto 15000 Rs </label>
      </section> 

      <section>
        <input type="checkbox" id="b_5" name="price" value="20000">
        <label for="budget_5"> Upto 20000 Rs</label>
      </section>
    </div>
    

  </form>

  <button type="submit" id="submit-btn" form="category-form" value="category" class="btn btn-primary btn-lg" >Proceed</button>
  </div>
    <section class="footer">
    <section class="social_links">
      <i class="fa fa-facebook"></i>
      <i class="fa fa-instagram"></i>
      <i class="fa fa-twitter"></i>
    </section>
    <section class="f_info">
      <section class="f_info1">
        <h1>Recommendation.com</h1>
        <h1>About Us</h1>
        <span>Our website provides best Recommendation</span>
        <br />
        <br />
        <h1>Contact Us</h1>
        <i class="fa fa-phone" style="margin-right: 10px"></i>&nbsp;<span
          >+919974435870</span
        >
        <br />
        <i class="fa fa-envelope" style="margin-right: 10px"></i>&nbsp;<span
          >Recommendation@gmail.com</span
        >
      </section>

      <section class="newslatter">
        <h1>Subscribe to Recommendation@gmail.com</h1>
        <input type="email" placeholder="Your E-mail Address" />
        <br />
        <button onclick="subscribe()">Subscribe</button>
      </section>
    </section>
  </section>
</body>
</html>