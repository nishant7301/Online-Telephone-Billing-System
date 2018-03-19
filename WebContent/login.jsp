<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>online telephone  login page</title>
<link rel="stylesheet" href="http://localhost:8080/login/login/assets/css/style1.css" />
</head>
<body>
<h1 align="center"><font color="red"> </font></h1>
	<%@ page import="java.sql.*"%>
	<%@ page import="javax.sql.*"%>
	<%
String uname=request.getParameter("uname"); 
String password=request.getParameter("password"); 
HttpSession ses=request.getSession();  
ses.setAttribute("uname",uname);
ses.setAttribute("password", password);
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/nishant?autoReconnect=true&useSSL=false","root","root"); 
Statement st= con.createStatement();
ResultSet rs=st.executeQuery("select * from registration where uname='"+uname+"' and permission= 1");
if(rs.next()) { 
	if(rs.getString(1).equals(uname))
			{
if(rs.getString(2).equals(password)) { 
	String url="http://localhost:8080/login/index1.jsp";
	response.sendRedirect(url);
}
else
{
	out.println("WRONG PASSWORD");
 }
	}
	else
	{
		out.println("Wrong user id");
	}
}
else
{
	out.println("WRONG USERID");
}
  
%>
<br></br>

<form> <input type="button" value="HOME" onclick="window.location.href='http://localhost:8080/login/home.jsp'" /> </form> 

<br></br>
<form> <input type="button" value="BACK" onclick="window.location.href='http://localhost:8080/login/Login1.jsp'" /> </form> 
<br>
<br>
</body>
</html>
