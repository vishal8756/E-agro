<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Price And Stock</title>
<link rel="stylesheet" href="css/bookform.css">
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
<section class="mybookings" id="change-price" >

  <div class="cp" id="cp">
  <button class="MyBkBtn" style="background:red; font-size:18px;"><a href="admin_dash.jsp">Dashboard</a></button>
  <div class="cp1">
    
  <div style="border:1px solid black;background-color: #E4F5D4;margin-left:30px;padding:5px;height: 25%;">
  <form action="updateprice.jsp" method="POST">
  <h2 style="text-align:center;">Update Price & Stock</h2>
     <p><b>Change Products Price:</b></p>
    <input type="number" name="p_id" placeholder="Enter Product Id"  required min="1"></input>
    <input type="number" name="p_price" placeholder="Enter New Selling Price"  required min="1"></input>
    <input type="submit" name="hall_p_btn" value="Update"></input></form>
    <form action="updatestock.jsp" method="POST"><br>
    <p><b>Change Products Stock</b></p>
    <input type="number" name="p_id" placeholder="Enter Product Id"  required min="1"></input>
    <input type="number" name="p_stock" placeholder="Enter New Stock" min="100" required min="1"></input>
    <input type="submit" name="service_p_btn" value="Update"></input>
      </form>
      <form action="removeproduct.jsp" method="POST"><br>
    <p><b>Remove Products</b></p>
    <input type="number" name="p_id" placeholder="Enter Product Id" required min="1"></input>
    
    <input type="submit" name="service_p_btn" value="Delete"></input>
      </form>
      </div>
<table>
	    <tr>
		<th>Product Id</th>
		<th>Product Name</th>
		<th>Product Type</th>
		<th>Selling Price</th>
        <th>Total Stock</th>
        
        </tr><%String username=(String)session.getAttribute("username");
		String a_id=""; %>
			<%
			try{
				 
		         Class.forName("com.mysql.jdbc.Driver");
		           Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/e-agro", "root", "8756");
		           Statement st=conn.createStatement();
		          
		           ResultSet rs=st.executeQuery("select * from products ");
		           while(rs.next()){				   
		        	 

			%>
			<tr>
				<!--FETCHING DATA FROM EACH
					ROW OF EVERY COLUMN-->
				<td><%=rs.getString("products_id")%></td>
				<td><%=rs.getString("products_name")%></td>
				<td><%=rs.getString("products_type")%></td>
				<td><%=rs.getString("products_price")%></td>
                <td><%=rs.getString("products_stock")%></td>
                
			</tr>
      
			<% 
				}}catch(Exception e){
					out.print(e);
					}
				
        
			%>
  </div></div>
</section>

</body>
</html>