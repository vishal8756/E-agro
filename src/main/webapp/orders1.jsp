<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@page import="java.sql.*,java.util.*"%>
	<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>orders1</title>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order Now</title>
    <link rel="stylesheet" href="css/bookform.css">
        <link rel="stylesheet" href="css/nav.css">
        <link rel="stylesheet" href="css/form.css">
    

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
		<th>Produts Id</th>
		<th>Produts Name</th>
		<th>Produts Type</th>
        <th>Produts Price</th>
	     <th> Ordered Quantity</th>
		<th> Total Bill</th>
		<th> Delivery Address</th>
		<th> Order date</th>
		
		
        <th>Customer Id</th>
         <th>Customer Name</th>
         <th> Email</th>
         <th>Contact Number</th>
        
         
        </tr>
        <%String username=(String)session.getAttribute("username");
        String month=request.getParameter("month");
        String m_year=request.getParameter("m_year");
        
       // String p_id=request.getParameter("p_id");
		String a_id=""; %>
			<%
			try{
				
		         Class.forName("com.mysql.jdbc.Driver");
		           Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/e-agro", "root", "8756");
		           Statement st=conn.createStatement();
		           
		   	    
		   	if(!m_year.equals(null)) {
		   	 ResultSet rs2=st.executeQuery("select * from order1 where month(order_date)='"+month+"' and year(order_date)='"+m_year+"'");
		   	while(rs2.next()){%>
				<tr>
					<!--FETCHING DATA FROM EACH
						ROW OF EVERY COLUMN-->
					<%  String c_id=rs2.getString("c_id");
						 String p_id=rs2.getString("p_id"); %>
						
					<td><%=rs2.getString("order_id")%></td>
					<td><%=rs2.getString("p_id")%></td>
					<td><%=rs2.getString("products_name")%></td>
					<td><%=rs2.getString("products_type")%></td>
					<td><%=rs2.getString("products_price")%></td>
					<td><%=rs2.getString("order_quantity")%></td>
					<td><%=rs2.getString("total_bill")%></td>
					<td><%=rs2.getString("delivery_add")%></td>
					<td><%=rs2.getDate("order_date")%></td>
					
					<td><%=c_id%></td>
					
					<td><%=rs2.getString("c_Name")%></td>
					<td><%=rs2.getString("c_email")%></td>
					<td><%=rs2.getString("c_MobileNo")%></td>
				   
				</tr>
		   	<% } }}catch(Exception e){
					out.print(e);
					}
				
        
			%>
      <button class="MyBkBtn" style="background:red; font-size:18px;"><a href="orders.jsp">Close Table</button>
		</table></div>
</section>
</body>
 
</html>