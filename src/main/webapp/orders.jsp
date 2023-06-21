<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@page import="java.sql.*,java.util.*"%>
	<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>orders</title>
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
  <div class="main_box" style="display:flex;margin-top:30px">
  <form action="orders1.jsp" method="post">
  
  <div class="box" style="margin-left:10px">
  <h3 style="text-align:center;">Display Order By Month</h3>
  <div class="form-element">
     <label for="month"><b>Choose a Month:</b></label>
  <select name="month" id="month" required>
  <option value="1">January</option>
  <option value="2">February</option>
  <option value="3">March</option>
  <option value="4">April</option>
  <option value="5">May</option>
  <option value="6">June</option>
  <option value="7">July</option>
  <option value="8">August</option>
  <option value="9">September</option>
  <option value="10">October</option>
  <option value="11">November</option>
  <option value="12">December</option>
  </select></div><br>
  <div class="form-element" >
   <label for="m_year"><b>Enter Year:</b></label>
   <select name="m_year" id="month" required>
  <option value="2023">2023</option>
  <option value="2022">2022</option>
  <option value="2021">2021</option>
  <option value="2020">2020</option>
  <option value="2019">2019</option>
  <option value="2018">2018</option></select>
   <!--  <input type="text" id="m_year" placeholder="YYYY" min="2022" max="2023" required>-->
   </div><br>
   <div class="form-element" >
  
    <input type="submit" value="Show Data" align="center">
   </div></div>
  </form>
  <form action="orders2.jsp" method="post">
  <div class="box" style="margin-left:25%">
  <h3 style="text-align:center;">Display Order By Year</h3>
  
  <div class="form-element" >
   <label for="m_year"><b>Enter Year:</b></label>
   <select name="m_year" id="month" required>
  <option value="2023">2023</option>
  <option value="2022">2022</option>
  <option value="2021">2021</option>
  <option value="2020">2020</option>
  <option value="2019">2019</option>
  <option value="2018">2018</option></select>
   <!--  <input type="text" id="m_year" placeholder="YYYY" min="2022" max="2023" required>-->
   </div><br>
   <div class="form-element" >
  
    <input type="submit" value="Show Data" align="center">
   </div></div>
  </form></div>
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
		          
		   	    
		   	    
		          ResultSet rs=st.executeQuery("select * from order1");
		         while(rs.next()){				   
		        	 

			%>
			<tr>
				<!--FETCHING DATA FROM EACH
					ROW OF EVERY COLUMN-->
				<%  String c_id=rs.getString("c_id");
					 String p_id=rs.getString("p_id"); %>
					
				<td><%=rs.getString("order_id")%></td>
				<td><%=rs.getString("p_id")%></td>
				<td><%=rs.getString("products_name")%></td>
				<td><%=rs.getString("products_type")%></td>
				<td><%=rs.getString("products_price")%></td>
				<td><%=rs.getString("order_quantity")%></td>
				<td><%=rs.getString("total_bill")%></td>
				<td><%=rs.getString("delivery_add")%></td>
				<td><%=rs.getDate("order_date")%></td>
				
				<td><%=c_id%></td>
				
				<td><%=rs.getString("c_Name")%></td>
				<td><%=rs.getString("c_email")%></td>
				<td><%=rs.getString("c_MobileNo")%></td>
               
			</tr>
      
			<% 
		           }}catch(Exception e){
					out.print(e);
					}
				
        
			%>
      <button class="MyBkBtn" style="background:red; font-size:18px;"><a href="admin_dash.jsp">Close Table</button>
		</table></div>
</section>
</body>
 
</html>