<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form action="Build" method=post>
  <div class="pccontainer">
   <h1>Select Your choice</h1>
   <br>
 
   <table>
      <tr>
         <td>  <label ><b>Company </b></label></td>
         <td> <input type="text" placeholder="Enter Brand Name" name="brandname"  ></td>
      <tr>

        <tr>
         <td><label ><b>Price </b></label></td>
         <td> <input type="text" placeholder="Enter Max price" name="price"  ></td>
      </tr>
      
       <tr>
         <td><label ><b>Ram </b></label></td>
         <td> <input type="text" placeholder="Min Ram size" name="price"  ></td>
      </tr>
      
       <tr>
         <td><label ><b>Battery Life </b></label></td>
         <td> <input type="text" placeholder="Enter min battery life" name="price"  ></td>
      </tr>
   </table>
    <button type="submit" >submit</button>
   
   </div>
   </form>

</body>
</html>