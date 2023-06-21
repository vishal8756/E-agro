<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@page import="java.sql.*,java.util.*"%>
	<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>MyOrders</title>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Order </title>
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
  
<section class="mybookings" id="mybooking" >
  <div class="mb" id="mb" >
  
<table>
          
	    <tr>
		<th> Order Id</th>
		<th>Products Id</th>
		<th>Products Name</th>
		<th>Products Type</th>
        <th>Products Price</th>
	     <th> Ordered Quantity</th>
		<th> Total Bill</th>
		<th> Delivery Address</th>
		
		
       
        
         
        </tr>
        <%String username=(String)session.getAttribute("username");
		String c_id="";
		String a_id="";
		String p_id="";%>
			<%
			try{
				
		         Class.forName("com.mysql.jdbc.Driver");
		           Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/e-agro", "root", "8756");
		           Statement st=conn.createStatement();
		           ResultSet rs1=st.executeQuery("select * from customer where c_username='"+ username +"'");
		   	    while(rs1.next()){
		   	    	 c_id=rs1.getString("c_id");
		   	    }
		           ResultSet rs=st.executeQuery("select * from order1 where c_id='"+c_id+"'");
		           while(rs.next()){				   
		        	 

			%>
			<tr>
				<!--FETCHING DATA FROM EACH
					ROW OF EVERY COLUMN-->
					<% 
					    p_id=rs.getString("p_id"); %>
					
				<td><%=rs.getString("order_id")%></td>
				<td><%=rs.getString("p_id")%></td>
				<td><%=rs.getString("products_name")%></td>
				<td><%=rs.getString("products_type")%></td>
				<td><%=rs.getString("products_price")%></td>
				<td><%=rs.getString("order_quantity")%></td>
				<td><%=rs.getString("total_bill")%></td>
				<td><%=rs.getString("delivery_add")%></td>
				
				
				
				
				
			</tr>
      
			<% 
				
		           }}catch(Exception e){
					out.print(e);
					}
				
        
			%>
      <button class="MyBkBtn" style="background:red; font-size:18px;"><a href="customer_dash.jsp">Close Table</button>
		</table></div>
</section>
</body>
 
</html>