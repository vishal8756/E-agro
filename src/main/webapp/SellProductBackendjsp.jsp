<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String product_type=request.getParameter("product_type");
String type=request.getParameter("type");
String p_price=request.getParameter("p_price");
String p_stock=request.getParameter("p_stock");
String username=(String)session.getAttribute("username");
String admin_id="";
try{
	  
         Class.forName("com.mysql.jdbc.Driver");
           Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/e-agro", "root", "8756");
           Statement st=conn.createStatement();
           ResultSet rs=st.executeQuery("select a_id from admin where a_username='"+username+"'");
   	    while(rs.next()){
   	    	 admin_id=rs.getString("a_id");
   	    	 //out.print(admin_id);
   	            }
           int i=st.executeUpdate("insert into products(products_name,products_type,products_price,products_stock)values('"+product_type+"','"+type+"','"+p_price+"','"+p_stock+"')");
           response.sendRedirect("account.jsp");
             
} catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}         

       

 %>