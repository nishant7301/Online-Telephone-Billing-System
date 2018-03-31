<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>email updation</title>
</head>
<style>
body
{
background-image: url("m1.jpg");
    background-color: #cccccc;
}
</style>
<body>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
HttpSession ses=request.getSession(false);  
String uname = (String)ses.getAttribute("uname");
String  email= request.getParameter("email");
String em1 = request.getParameter("em1");
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/nishant?autoReconnect=true&useSSL=false",
"root","root"); 
Statement st= con.createStatement();
ResultSet rs=st.executeQuery("select * from registration where email='"+email+"'");
if(rs.next()) 
{ 
	int j1=st.executeUpdate("update registration  set  email='"+em1+"' where uname='"+uname+"'"); 
	out.println("email is successfully Updated\n");

}
else
{
	out.println("wrong emial id");
}
%>
<input type="button" value="BACK" onclick="window.location.href='http://localhost:8080/login/index1.jsp'" />  
                         

</body>
</html>