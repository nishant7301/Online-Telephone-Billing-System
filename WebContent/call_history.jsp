<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>History</title>
</head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>
table,th,td{
padding
}
</style>
<%@ page import="java.sql.*"%>
	<%@ page import="javax.sql.*"%>
<body>
 <% 
  HttpSession ses = request.getSession(false);
  String uname= (String)ses.getAttribute("uname");
  Class.forName("com.mysql.jdbc.Driver");
  java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/nishant?autoReconnect=true&useSSL=false","root","root"); 
  Statement st= con.createStatement();
  ResultSet n2=st.executeQuery("select * from cutomer_record where uname='"+uname+"'");	
  String pno1=null;
  while(n2.next())
  {
	pno1=n2.getString("pno");
  }
  
   %><h3 class = "text-center">Hello USER </h3> details for your number : <%out.println(pno1); %> ===><%;
  ResultSet rs=st.executeQuery("select * from customer_meter where pno = '"+pno1+"' order by date desc");
  int isd = 0;
  int std = 0;
  int local = 0;
  String date  = null;
  %>
<br>
<br>
   <table class = "table table-condensed">
	   <tr class = "danger">
	     <th class = "danger">
	        DATE
	      </th>
	      <th>
	       LOCAL (minutes)
	      </th>
	      <th>
	      STD (minutes)
	      </th>
	      <th>
	       ISD (minutes)
	      </th>
	   </tr>
	   <%
  while(rs.next())
  {
	  
	  isd = rs.getInt("Isd");
	  local = rs.getInt("local");
	  std = rs.getInt("Std");
	  try{
	  date = rs.getString("date");
	  }catch(Exception e){
		  out.println("Error occured \n you haven't register or something went wrong");
	  }
	  %>
	 <tr class = "success">
	   <td><% out.println(date);%></td>
	   <td><% out.println(local);%></td>
	   <td><% out.println(std);%></td>
	  <td><% out.println(isd);%></td>
	  </tr>
	  <%
  }
  
 %>
  </table>
 <form> <input type="button" value="BACK" onclick="window.location.href='http://localhost:8080/login/index1.jsp'" /> </form> 
			
		      
</body>
</html>