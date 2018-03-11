<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<body>
<%@page import="java.util.*" %>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%
Random rand = new Random();
int n = rand.nextInt(90000) + 10000;

%>

<%
 HttpSession ses1=request.getSession(false);  
 String user = (String)ses1.getAttribute("user");
 
 out.println("Random generated number " + n );
 Class.forName("com.mysql.jdbc.Driver");
  java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/nishant?autoReconnect=true&useSSL=false","root","root"); 
  Statement st= con.createStatement();
  ResultSet r=st.executeQuery("select * from cutomer_record");
  
  while(r.next())
  {
	  String user_name = r.getString("uname");
	  if(user_name.equals(user))
	  {
		  Statement s= con.createStatement();
		  int flag = s.executeUpdate("update cutomer_record set bill_no = '" + n + "' where uname = '" + user +"'"  );
		  if(flag>0){
			  
			    response.sendRedirect("customer_record1.jsp"); 
		  }
	  }
  }

 

%>
  
</body>
</html>