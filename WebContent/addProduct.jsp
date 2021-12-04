<!--<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false"%>-->
    <!DOCTYPE html>
    <html>

    <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profile</title>
    <link rel="stylesheet" href="assets/css/footer.css">
    <link rel="stylesheet" href="assets/css/header.css">
    <link rel="stylesheet" href="assets/css/default.css">
    

    <link rel="stylesheet" href="assets/css/addProduct.css">
    
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
    
                    <li><a href="login.jsp">Log In</a></li>
                  
            
                    
                    <%
						HttpSession session = request.getSession(false);
				     	if (session != null) {
						String username = (String)session.getAttribute("user");
						out.print("<li class=user><a href=profile.jsp>" + username + "</a></li>");
				    	} 
				     	else 
				     	{
						out.print("<li><a href=login.jsp>Log In</a></li>");
				    	}
				%>
                    
                </ul>
            </section>
        </section>
      <!------------------------------------------------------------------------------>
    
      <div class="container">
          <h1>Add Product</h1>
        
            <div class="editform">
                <!--advance search form -->

            <section class="eform">
            <form action="http://localhost:8080/RecommendationSystem/ProductOperation" method="post">
                <table>
                <input type="hidden" id="op" name="option" value="add">
                    <tr>
                        <td>Product Type:</td>
                        <td>
                            <select name="ptype" id="ptype" >
                                <option value="none">none</option>
                                <option value="Processor">Processor</option>
                                <option value="mboard">Motherboard</option>
                                <option value="Cabinate">Cabinate</option>
                                <option value="Ram">Ram</option>
                                <option value="Storage">Storage</option>
                                <option value="gcard">Graphic card</option>
                                <option value="psup">Power Supply</option>
                                <option value="hdd">HDD</option>
                                <option value="sdd">SDD</option>
                                
                        </td>
                    </tr>

                    <tr>
                        <td>Brand:</td>
                        <td>
                                <select name="brand" id="brands">
                                <option value="none">none</option>
                                <option value="Intel">Intel</option>
                                <option value="Amd">Amd</option>
                                <option value="Nvidia">Nvidia</option>
                                <option value="Asus">Asus</option>
                                <option value="Msi">Msi</option>
                                <option value="Gigabyte">Gigabyte</option>
                                <option value="Seagate">Seagate</option>
                                <option value="digital">Western Digital</option>
                                <option value="Kingston">Kingston</option>
                                <option value="Corsair">Corsair</option>
                                
                                </select>
                        </td>
                    </tr>
                    

                    <tr>
                        <td><label for="pmodel">Product Model: </label></td>
                        <td><input type="text" value="" placeholder="Model name" name="mname"></td>
                    </tr>


                    <tr>
                    <td><label for="speed">Product-Ram-Cpu-Gpu Speed: </label></td>
                    <td>
                        <select name="speed" id="sp">
                            <option value="none">none</option>
                            <option value="s1">3.2 GHZ</option>
                            <option value="s2">2.3 GHZ</option>
                    </td>
                    </tr>

                    <tr>
                        <td><label for="coress">Product-Cpu Cores: </label></td>
                        <td>
                            <select name="cores" id="cr">
                                <option value="none">none</option>
                                <option value="2">2</option>
                                <option value="4">4</option>
                                <option value="8">8</option>
                                <option value="16">16</option>
                                <option value="32">32</option>
                                <option value="64">64</option>
                                
                        </td>
                        </tr>

                        <tr>
                            <td><label for="info">Product Info: </label></td>
                            <td><input type="text" value="" placeholder="Info of product" name="info"></td>
                        </tr>

                        <tr>
                            <td><label for="pgtype">Product-Ram-Gpu Type: </label></td>
                            <td><input type="text" value="" placeholder="Type" name="pgtype"></td>
                        </tr>

                        <tr>
                            <td><label for="interface">Product-Hdd-Gpu interface: </label></td>
                            <td><input type="text" value="" placeholder="Interface type" name="interface"></td>
                        </tr>

                        <tr>
                            <td><label for="eff">Product-psu-efficiency: </label></td>
                            <td><input type="text" value="" placeholder="efficiency" name="efficiency"></td>
                        </tr>

                        <tr>
                            <td><input type="submit" value="SUBMIT" placeholder="Submit"></td>
                        </tr>

                </table>
                </form>
            </section>
         </div>
     </div>
         
    
    
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