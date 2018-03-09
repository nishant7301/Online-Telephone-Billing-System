<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
body{
	background-color:#808080
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>telephone billing system </title>
</head>
<body>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
/* here lab is project name of sql database */
String uname=request.getParameter("uname");
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/nishant?autoReconnect=true&useSSL=false",
"root","root"); 
Statement st= con.createStatement();  
ResultSet rs2=st.executeQuery("select * from registration where uname='"+uname+"' and  admin=0");
try
{
if(rs2.next()){
int j=st.executeUpdate("delete from cutomer_record where uname='"+uname+"'");
int k=st.executeUpdate("delete from registration where uname='"+uname+"'");
int l=st.executeUpdate("delete from bill_record where uname='"+uname+"'");
out.println("the user deleted from database");
}
else{
	out.println("CANNOT DELETE THE USER");
}
}catch(Exception e)
{
	out.println("error"+e.getMessage());
}
%>
<br></br>
<form> <input type="button" value="HOME" onclick="window.location.href='http://localhost:8080/login/Admin1.jsp'" /> </form> 
<br></br>
<form> <input type="button" value="BACK" onclick="window.location.href='http://localhost:8080/login/list.jsp'" /> </form> 
</body>
</html>
