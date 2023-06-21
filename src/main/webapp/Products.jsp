<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>products</title>
    <link rel="stylesheet" href="css/productss.css">
    
    
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
</head>
<body class="body" style="background: linear-gradient(90deg, rgba(59,241,150,1) 0%, rgba(29,203,192,1) 35%, rgba(209,0,255,1) 100%);">
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
  <form action="BookForm.jsp" method="POST">
  
  <h2 class="corh">BUY Product...</h2><br>
     <hr>
     
      <section class="cor">
        
        <div class="container"style="
    HEIGHT: 200%;
    width: 380px;
">
          <div class="card">
            <div class="front">
              <div class="content">
                <img src="css/img/INSECTICIDES/DECIS INSCTICIDE.PNG" />
                <h3>INSECTICIDES</h3>
              </div>
            </div>
            <div class="back">
              <div class="content">

                <p><b>TYPES: </b> 
                 CONFIDOR , DECIS MOVENTO 
                 </p>
                <p><b>Price:</b>1100-2000 RS/LTR </p>
                
                <button name="1" value="INSECTICIDES">ORDER NOW</button>

              </div>
            </div>
          </div>
        </div>
        
         <div class="container"style="
    HEIGHT: 200%;
    width: 380px;
">
          <div class="card">
            <div class="front">
              <div class="content">
                <img src="css/img/FUNGICIDES/Aliette FUNGICIDES.PNG" />
                <h3>FUNGICIDES</h3>
              </div>
            </div>
            <div class="back">
              <div class="content">

                <p><b>TYPES: </b> 
                 Aliette , Antracol Folicure
                 </p>
                <p><b>Price:</b>1500-2000 RS/LTR </p>
                
                <button name="2" value="FUNGICIDES">ORDER NOW</button>

              </div>
            </div>
          </div>
        </div>
        
        <div class="container"style="
    HEIGHT: 200%;
    width: 380px;
">
          <div class="card">
            <div class="front">
              <div class="content">
                <img src="css/img/HERBICIDES/roundup.png" />
                <h3>HERBICIDES</h3>
              </div>
            </div>
            <div class="back">
              <div class="content">

                <p><b>TYPES: </b> 
                 ROUNDUP , SEMAPARA
                 </p>
                <p><b>Price:</b>1300-2000 RS/LTR </p>
                
                <button name="3" value="HERBICIDES">ORDER NOW</button>

              </div>
            </div>
          </div>
        </div>
        <div class="container"style="
    HEIGHT: 200%;
    width: 380px;
">
          <div class="card">
            <div class="front">
              <div class="content">
                <img src="css/img/FERTILIZERS/isabion.jpg" />
                <h3>FERTILIZERS</h3>
              </div>
            </div>
            <div class="back">
              <div class="content">

                <p><b>TYPES: </b> 
                 isabion , multiplex chamak
                 </p>
                <p><b>Price:</b>1300-2800 RS/LTR </p>
                
                <button name="4" value="FERTILIZERS">ORDER NOW</button>

              </div>
            </div>
          </div>
        </div>
        </section>
</form>



  </body>

</html>