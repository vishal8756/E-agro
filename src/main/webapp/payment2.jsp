<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*"%>
     <%@page import="java.text.DateFormat"%>
     <%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>




<%

Date today = new Date();

SimpleDateFormat formatter = new SimpleDateFormat("yyyy/MM/dd");  
String strDate= formatter.format(today);
//out.println(strDate);
DateFormat shortDF = DateFormat.getDateInstance(DateFormat.SHORT);
String date=shortDF.format(today);



String p_id=request.getParameter("p_id");

String quantity=request.getParameter("quantity");
String add=request.getParameter("add");
String bill=request.getParameter("bill");
String username=(String)session.getAttribute("username");
// String date=request.getParameter("date");
String c_id="";
String c_username="";
String c_Name="";
String c_email="";
String c_MobileNo="";
String c_Address="";

String a_Name="";
String a_email="";
String a_MobileNo="";
String a_Address="";

String products_name="";
String products_type="";
String products_price="";
String products_stock="";


try{
	

 Class.forName("com.mysql.jdbc.Driver");
      Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/e-agro", "root", "8756");
      Statement st=conn.createStatement();
      ResultSet rs=st.executeQuery("select * from customer where c_username='"+ username +"'");
	    while(rs.next()){
	    	 c_id=rs.getString("c_id");
	    	 c_username=rs.getString("c_username");
	    	 c_Name=rs.getString("c_Name");
	    	 c_email=rs.getString("c_email");
	    	 c_MobileNo=rs.getString("c_MobileNo");
	    	 c_Address=rs.getString("c_Address");
	    }
	    
	    ResultSet rs1=st.executeQuery("select * from admin");
	    while(rs1.next()){
	    	 a_Name=rs1.getString("a_Name");
	    	 a_email=rs1.getString("a_email");
	    	 a_MobileNo=rs1.getString("a_MobileNo");
	    	 a_Address=rs1.getString("a_Address");
	    }
	    
	    ResultSet rs2=st.executeQuery("select * from products where products_id='"+ p_id +"'");
	    while(rs2.next()){
	    	products_name=rs2.getString("products_name");
	    	products_type=rs2.getString("products_type");
	    	products_price=rs2.getString("products_price");
	    	products_stock=rs2.getString("products_stock");
	    }
	    int q2=Integer.parseInt(products_stock);
	    int q1=Integer.parseInt(quantity);
	    q2=q2-q1;
		st.executeUpdate("update products set products_stock='"+q2+"'where products_id='"+ p_id +"'");

    st.executeUpdate("insert into order1(c_id,p_id,order_quantity,total_bill,delivery_add,order_date,products_name,products_type,products_price,c_Name,c_email,c_MobileNo,c_Address)values('"+c_id+"','"+p_id+"','"+quantity+"','"+bill+"','"+add+"','"+strDate+"','"+products_name+"','"+products_type+"','"+products_price+"','"+c_Name+"','"+c_email+"','"+c_MobileNo+"','"+c_Address+"')");
	
    %><script>alert("Order Confirmed!!");</script><% 
   
}catch(Exception e){
	out.println(e);
} 

%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Creating PDF from HTML</title>
    <link rel="stylesheet" href="style.css">
<link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link rel="stylesheet" href="css/nav.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.4/jspdf.debug.js" ></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.4/jspdf.min.js" ></script>
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
    <div id="whatToPrint" style="width: 1000px;height:2000px">
        <div class="container">
    <div class="row">
        <div class="col-xs-12">
    		<div class="invoice-title">
    			<h2>E-Agro Order Receipt</h2>
    		</div>
    		<hr>
    		<div class="row">
    			<div class="col-xs-6">
    				<address>
    				<strong style="font-size:18px;">Customer Details:</strong><br>
    					<b>Customer Id:</b><%out.print(c_id); %><br>
    					<b>Username:</b><%out.print(c_username); %><br>
    					<b>Name:</b><%out.print(c_Name); %><br>
    					<b>Email:</b><%out.print(c_email); %><br>
    					<b>Mobile No:</b><%out.print(c_MobileNo); %><br>
    					<b>Address:</b><%out.print(c_Address); %><br>
    					
    					
    				</address>
    			</div>
    			<div class="col-xs-2 ">
    				<address>
    				<strong style="font-size:18px;">Admin Details:</strong><br>
    					
    					<b>Name:</b><%out.print(a_Name); %><br>
    					<b>Email:</b><%out.print(a_email); %><br>
    					<b>Mobile No:</b><%out.print(a_MobileNo); %><br>
    					<b>Address:</b><%out.print(a_Address); %><br>
    					
    					
    				</address>
    			</div>
    		</div>
    		<div class="row">
    			<div class="col-xs-6">
    				<address>
    					<strong>Payment Method:</strong>
    					Online<br>
    					<strong>Payment Status:</strong>
    					Done<br>
    				</address>
    			</div>
    			<div class="col-xs-2 ">
    				<address>
    					<strong>Order Date:</strong><br><%out.print(date);%>
    					<br><br>
    				</address>
    			</div>
    		</div>
    	</div>
    </div>
    
    <div class="row">
    	<div class="col-md-8">
    		<div class="panel panel-default">
    			<div class="panel-heading">
    				<h3 class="panel-title"><strong>Order summary</strong></h3>
    			</div>
    			<div class="panel-body">
    				<div class="table-responsive">
    				<div class="row">
    			    <div class="col-xs-6">
    				<address>
    				<!--  <strong style="font-size:15px;">Grains Details:</strong><br>-->
    					<b>Product Id:</b><%out.print(p_id); %><br>
    					<b>Product Name:</b><%out.print(products_name); %><br>
    					<b>Product Type:</b><%out.print(products_type); %><br>
    					<b>Delivery Address:</b><%out.print(add); %><br>
    					
    				</address>
    				</div>
    				<address>
    				<div class="col-xs-4">
    				<!--<strong style="font-size:15px; ">Grains Details:</strong><br>-->
                        <b>Product Price:</b><%out.print(products_price); %><br>
    					<b>Order Quantity:</b><%out.print(quantity); %><br><br>
    					<strong style="font-size:18px; ">Total Bill:</strong><br>
    					<%out.print(bill); %><br>	
    				</address>
    				</div>
    				</div>
    				
    				</div>
    			</div>
    		</div>
    	</div>
    </div>
    

   <br><br>     <!--<img src="https://th.bing.com/th/id/OIP.wdkLi0wAUuLf5gdNFincPwHaEd?pid=ImgDet&rs=1"/>-->
<div class="btn-group" ">
                <a href="javascript:generatePDF()" id="downloadButton" class="btn btn-lg btn-warning">Click To Download</a>
            </div>
       <!--  <a href="javascript:generatePDF()" id="downloadButton">Click to download</a>-->
    </div>

    <script>
        async function generatePDF() {
            document.getElementById("downloadButton").innerHTML = "Currently downloading, please wait";

            //Downloading
            var downloading = document.getElementById("whatToPrint");
            var doc = new jsPDF('l', 'pt');

            await html2canvas(downloading, {
                //allowTaint: true,
                //useCORS: true,
                width: 1000
            }).then((canvas) => {
                //Canvas (convert to PNG)
                doc.addImage(canvas.toDataURL("image/png"), 'PNG', 5, 5, 1000, 2000);
            })

            doc.save("Document.pdf");

            //End of downloading

            document.getElementById("downloadButton").innerHTML = "Click to download";
        }
    </script>
</body>
</html>

<!--

HTML + CSS -> PNG (html2canvas)
PNG -> Add to PDF (jsPDF)
Download PDF (jsPDF)

-->