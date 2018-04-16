<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>new password</title>
</head>
<body>
<%@ page import="java.sql.*"%>
	<%@ page import="javax.sql.*"%>
	<%
String email=request.getParameter("email");
%>
<h1 >Checking data for <%out.println(email); %> : </h1>

<%
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/nishant?autoReconnect=true&useSSL=false","root","root"); 
Statement st= con.createStatement();
ResultSet rs=st.executeQuery("select * from registration where email='"+email+"'");
String uname1 = null;
String pwd = null;
try
{
if(rs.next())
{ 
	String em = rs.getString("email");
	
	if(email.equals(em))
	{
	  uname1 = rs.getString("uname");
	  pwd = rs.getString("password");
	  out.println("Username : "+uname1+"\n Password : "+pwd);
	}
}
else
{
	out.println("Please Insert Valid Email Id");
}
}
catch(Exception e)
{
	out.println("email id does not exist in database");
	out.println("error"  +e.getMessage());
}
%>
<br></br>
<form> <input type="button" value="BACK" onclick="window.location.href='http://localhost:8080/login/Login1.jsp'" /> </form> 
</body>
</html>