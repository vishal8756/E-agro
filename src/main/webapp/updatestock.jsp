<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.sql.*,java.util.*"%>
<%String username=(String)session.getAttribute("username");
		String a_id=""; 
		String p_id=request.getParameter("p_id");
		String p_stock=request.getParameter("p_stock");
			try{
				 
		         Class.forName("com.mysql.jdbc.Driver");
		           Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/e-agro", "root", "8756");
		           Statement st=conn.createStatement();
		          
		           ResultSet rs=st.executeQuery("select * from products");
		           while(rs.next()){				   
		        	 if(p_id.equals(rs.getString("products_id"))){
		        		 st.executeUpdate("update products set products_stock ='"+p_stock+"'where products_id='"+p_id+"'"); 
		        		 response.sendRedirect("Update.jsp");
		        	 }else{
		        	 %>
		        	 <script>alert("Invalid Product Id");
		        	 location.replace("Update.jsp");
		        	 </script>
		        	 <%
		        		 
		        	 }

			
				}}catch(Exception e){
					out.print(e);
					}
				
        
			%>