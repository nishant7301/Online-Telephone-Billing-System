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
<title>WELCOME TO TELEPHONE REGISTRATION PAGE</title>
</head>
<body>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
String uname=request.getParameter("uname"); 
String password=request.getParameter("password"); 
String confpassword=request.getParameter("confpassword"); 
String email=request.getParameter("email");
String mobnum=request.getParameter("mnumber"); 
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/nishant?autoReconnect=true&useSSL=false",
"root","root"); 
Statement st= con.createStatement();  
ResultSet rs=st.executeQuery("select * from registration where uname='"+uname+"'");
if(rs.next()){
	out.println("username already exists");
}
else{
st.executeUpdate("insert into registration values('"+uname+"','"+password+"',0,1 ,'"+email+"','"+mobnum+"')"); /* here lab.test is lab(project_name) and test(project_table_name) */

out.println("Registered\n"); 
String url="http://localhost:8080/login/Login1.jsp";
response.sendRedirect(url);
}

%>
<a href="Login1.jsp">Login page</a>

</body>
</html>