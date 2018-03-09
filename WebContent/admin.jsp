<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title><h1> WELCOME ADMIN PAGE</h1></title>
<style type="text/css">
body{
	background-color:#808080
}
</style>
</head>
<body>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%

String uname=request.getParameter("uname"); 
session.putValue("uname",uname); 
String password=request.getParameter("password");
HttpSession ses1=request.getSession();  
ses1.setAttribute("uname",uname);
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/nishant?autoReconnect=true&useSSL=false",
"root","root"); 
Statement st= con.createStatement();  
ResultSet rs1=st.executeQuery("select * from registration where uname='"+uname+"'and admin=1");
if(rs1.next()) 
{ 
if(rs1.getString(2).equals(password)) 
{ 
	String url="http://localhost:8080/login/link.jsp";
	HttpSession ses=request.getSession();  
	ses.setAttribute("uname",uname);
	ses.setAttribute("password", password);
	response.sendRedirect(url);
}
else{
	out.println("invalid password");
}
}
else{
	out.println("not a valid userid or not a admin");
}
%>
<form> <input type="button" value="BACK" onclick="window.location.href='http://localhost:8080/login/Admin1.jsp'" /> </form> 
			
		      

</body>
</html>