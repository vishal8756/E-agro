<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Dashboard</title>
<link rel="stylesheet" href="css/admin_dash.css">
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
<section class="dashboard" id="udash">
<!--  <form action="" method="POST">-->
  <div class="dash" id="a_dash">
  <h1 style="text-align: center;">Customer Dashboard</h1>
    <div class="row">
      <button class="ref" name="tbooking" ><a href="CustomerProfile.jsp">
      <div class="element">
        <p>Profile</p>
      </div></a></button>
      <button class="ref" name="c-details"><a href="MyOrders.jsp">
      <div class="element" >
        <p>My Orders</p>
      </div></a></button>
    </div>
    
    <div class="row" style="margin-top:3%;">
    <button class="ref" name="editprice">
      <div class="element" >
        <p>Delivery Status</p>
      </div></a></button>
      <button class="ref" name="logOut"><a href="logout.jsp">
      <div class="element" >
        <p >Logout</p>
      </div></a>
      </button>
    </div>
  </div><!--</form>-->
</section>

</body>
</html>