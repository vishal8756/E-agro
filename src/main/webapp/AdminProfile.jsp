<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Profile</title>
<link rel="stylesheet" href="css/AdminProfile.css">
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

try{String username=(String)session.getAttribute("username");
String name,id,email,address,mobile;
	   
      Class.forName("com.mysql.jdbc.Driver");
      Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/e-agro", "root", "8756");
      Statement st=conn.createStatement();
      ResultSet rs=st.executeQuery("select * from admin where a_username='"+ username +"'");
	    while(rs.next()){
	    	name=rs.getString("a_Name");
	    	id=rs.getString("a_id");
	    	email=rs.getString("a_email");
	    	address=rs.getString("a_Address");
	    	mobile=rs.getString("a_MobileNo");
	    	
	    %>
	    


<div class="userprofile">
  <h2>Profile</h2>
  <p class="point"><b>Id:</b><%=rs.getString("a_id")%> </p>
      <p class="point"><b>User Name:</b><%=rs.getString("a_username")%> </p>
      <p class="point"><b>Name:</b><%=rs.getString("a_Name")%></p>
      <p class="point"><b>Email:</b><%=rs.getString("a_email")%></p>
      <p class="point"><b>Mobile Number:</b><%=rs.getString("a_MobileNo")%> </p>
      <p class="point"><b>Address:</b><%=rs.getString("a_Address")%> </p>
      <button class="ProfileBtn"><a href="admin_dash.jsp">OK</a></button>
</div><% }
}catch(Exception e){
	    	out.print(e);
	    }  
%>
</section>
</body>
</html>