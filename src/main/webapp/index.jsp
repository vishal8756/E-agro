<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>home</title>
    <link rel="stylesheet" href="css/index.css">
    
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
</head>
<body style="background-color: #ffffff; margin: 0%;">
  <div class="background">
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
  
  <div class="btn">
<a href="Products.jsp" class="book-btn">ORDER NOW</a></div>
</div>
    
    
  <div class="row">
    <p class="BranchHeading">Our Products are...</p>
      <div class="column">
          <div class="card">
              <p>INSECTICIDES</p>
            <img  class="cardimg"   src="css/img/INSECTICIDES/CONFIDOR INSECTICIDE.PNG" alt="">
          </div>
      </div>
      <div class="column">
        <div class="card">
            <p>HERBICIDES</p>
            <img  class="cardimg"   src="css/img/HERBICIDES/roundup.png" alt="">
        </div>
    </div>
    <div class="column">
        <div class="card">
            <p>FUNGICIDES</p>
            <img  class="cardimg"   src="css/img/FUNGICIDES/folicure.PNG" alt="">
        </div>
    </div>
   <div class="column">
            <div class="card">
                <p>FERTILIERS</p>
                <img  class="cardimg"   src="css/img/FERTILIZERS/isabion.jpg" alt="">
            </div>   
   </div> 



  </div>
<!--section for footer -->

  
</body>

<!--section for footer -->

<section class="footer">
  <div class="container">

    <div class="col-3">

      <div class="f-desc">
        <ul>
           <li class="logo">E_AGRO</li>
      <li class="active"><a href="account.jsp">Account</a></li>
      <li><a href="SellProduct.jsp">Sell Product</a></li>
      
      <li><a href="product.jsp">Products</a></li>
      <li><a  href="AboutUs.html">About Us</a></li>
      <li><a href="index.jsp">Home</a></li>
        </ul>
      </div>
    </div>

    <div class="f-desc">
        <div class="icon">
          <a href="">
            <i class="fa fa fa-facebook"></i>
          </a>
          <a href="">
            <i class="fa fa fa-instagram"></i>
          </a>
          <a href="">
            <i class="fa fa fa-youtube"></i>
          </a>
          <a href="https://www.linkedin.com/in/vishal-thorat-766a59232/">
            <i class="fa fa fa-linkedin"></i>
          </a>
        </div>
         </div>
       </div>
    </div>
    <hr> 
       <p style= "color: green;"> &copy;copyrights2023 TSF. All rights reserved!<br>
        made by @ThoratVishal. </p>
  </section>

</html>