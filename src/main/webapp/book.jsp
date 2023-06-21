<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Order Products</title>
<link rel="stylesheet" href="css/book.css">
<link rel="stylesheet" href="css/nav.css">

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
<section class="profile" id="profile1">
<%

try{    	String product_id=request.getParameter("id");


	   
      Class.forName("com.mysql.jdbc.Driver");
      Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/e-agro", "root", "8756");
      Statement st=conn.createStatement();
      ResultSet rs=st.executeQuery("select * from products where products_id='"+product_id+"'");
	    while(rs.next()){
	    	
	    	
	    %>
	    


<div class="userprofile">
  <h2>Order products</h2>
  <p class="point"><b>Product Id:</b><%=rs.getString("products_id")%> </p>
      <p class="point"><b>Product Name:</b><%=rs.getString("products_name")%> </p>
      <p class="point"><b>Product Type:</b><%=rs.getString("products_type")%></p>
      <p class="point"><b>Product Price:</b><%=rs.getString("products_price")%></p>
   <form action="bill.jsp" method="post">
   <div class="form-element">
       <label for="quantity">Order Quantity</label>
       <input type="number" id="quantity" name="quantity" required placeholder="Enter Quantity" min="1">
<input type="text" name="id" value="<%=rs.getString("products_id")%>" style="display:none">
     </div>
     <div class="form-element">
       <label for="address">Delivery Address</label>
       <input type="text" id="address"name="address"  required placeholder="Enter Address">
     </div>
      <div class="form-element">
      
       <input type="submit" id="submit"name="submit" value="Submit">
     </div>
   </form>   
      
</div><% }
}catch(Exception e){
	    	out.print(e);
	    }  
%>
</section>
</body>
</html>