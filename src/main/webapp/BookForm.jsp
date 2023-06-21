<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.sql.*,java.util.*"%>

    <%
    try{
    if(session.getAttribute("user").equals("1")){
    	String str1=request.getParameter("1");
    	String str2=request.getParameter("2");
    	String str3=request.getParameter("3");
    	String str4=request.getParameter("4");
    	String product="";
    	if(str1!=null){
    		product=str1;
    	}else if(str2!=null){
    		product=str2;
    	}else if(str3!=null){
    		product=str3;
    	}else if(str4!=null){
    		product=str4;
    	}
    	

    %>
    	<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Account</title>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order Now</title>
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
		<th> Product Id</th>
		<th>Product Name</th>
		<th>Product Type</th>
		<th>Selling Price</th>
        <th>Total Stock</th>
       
        </tr>
			<%
			try{
				 
		         Class.forName("com.mysql.jdbc.Driver");
		           Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/e-agro", "root", "8756");
		           Statement st=conn.createStatement();
		           
		           ResultSet rs=st.executeQuery("select * from products where products_name='"+product+"'");
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
               
                <td><form action="book.jsp" method="post">
                <input type="text" name="id" value="<%=rs.getString("products_id")%>" style="display:none">
                <input type="submit" value="Order Now"></form></td>
			</tr>
      
			<% 
				}}catch(Exception e){
					out.print(e);
					}
				
        
			%>
      <button class="MyBkBtn" style="background:red; font-size:18px;"><a href="Products.jsp">Close Table</button>
		</table></div>
</section>
</body>
 
</html>
		   
	 <%  }else if(session.getAttribute("user").equals("2")){
	        	response.sendRedirect("Products.jsp");
	   }
	   else if(session.getAttribute("user").equals("")){
	    	response.sendRedirect("account.jsp");

	   }
		   }catch(Exception e){
		   response.sendRedirect("account.jsp");
	   } %>
