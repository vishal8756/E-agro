<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.sql.*,java.util.*"%>

    <%
    try{
    if(session.getAttribute("user").equals("2")){%>
    	<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sell Product</title>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Account</title>
    <link rel="stylesheet" href="css/SellProduct.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
</head>
<body>
<div class="nav">
  <ul>
    <li class="logo">E-Agro</li>
    <li class="account"><a href="account.jsp">Account</a></li>
    <li><a href="SellProduct.jsp">Sell Product</a></li>
    
    <li><a href="Products.jsp">Order Product</a></li>
    <li><a class="active" href="AboutUs.html">About Us</a></li>
    <li><a href="index.jsp">Home</a></li>
  </ul>
  </div>
  
<div class="popup" id="popup">


   <div class="register" id="register-class">
   <form action="SellProductBackendjsp.jsp" method="post">
   
   <div class="form">
     <h2>Product Selling Form</h2>
     <div class="form-element">
     <label for="product_type"><b>Choose a Product Name:</b></label>
  <select name="product_type">
  <option value="INSECTICIDES">INSECTICIDES</option>
  <option value="FUNGICIDES">FUNGICIDES</option>
  <option value="HERBICIDES">HERBICIDES</option>
  <option value="FERTILIZERS">FERTILIZERS</option>
  </select></div>
      <div class="form-element">
       <label for="type"><b>Type Name</b></label>
       <input type="text" id="type" name="type" required placeholder="Enter Product Type Name"pattern="^[a-zA-Z]+(\s[a-zA-Z]+)?$" title="Please enter on alphabets only.">
     </div>
  
     <div class="form-element">
       <label for="p_price"><b>Selling Price Rs/Ltr</b></label>
       <input type="number" id="p_price" name="p_price" required placeholder="Enter Selling Price" min=1>
     </div>
     <div class="form-element">
       <label for="p_stock"><b>product Stock In Ltr</b></label>
       <input type="number" id="p_stock"name="p_stock"  required placeholder="Enter Product Stock" min=10>
     </div>
    
     <div class="form-element">
       <button name="register_btn">Sell Now</button>
     </div>
    
</div>
</form>
  </div>
  
    </div>
</body>
 
</html>
		   
	 <%  }else if(session.getAttribute("user").equals("1")){
	        	response.sendRedirect("Products.jsp");
	   }
	   else if(session.getAttribute("user").equals("")){
	    	response.sendRedirect("account.jsp");

	   }
		   }catch(Exception e){
		   response.sendRedirect("account.jsp");
	   } %>
