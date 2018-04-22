<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
body{
	background-image: url("hd1.jpg");
    background-color: #cccccc;
	
}
 input[type=button] {
    width: 10%;
    padding: 10px 18px;
    margin: 8px 0;
    box-sizing: border-box;
    border: none;
    background-color: green;
    color: white;
    
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>WELCOME TO TELEPHONE REGISTRATION PAGE</title>
</head>
<body>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
String mobnum=null;
String uname=request.getParameter("uname"); 
String password=request.getParameter("password"); 
String confpassword=request.getParameter("confpassword"); 
String email=request.getParameter("email");
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/nishant?autoReconnect=true&useSSL=false",
"root","root"); 
Statement st= con.createStatement();  
ResultSet rs=st.executeQuery("select * from registration where uname='"+uname+"'");
if(rs.next()){
	out.println("USER NAME ALREADY EXISTS");
}
else{
st.executeUpdate("insert into registration values('"+uname+"','"+password+"',0,1 ,'"+email+"','"+mobnum+"')"); /* here lab.test is lab(project_name) and test(project_table_name) */

out.println("Registeration successful\n"); 
}
%>
<center>
<input type="button" value="CANCEL" onclick="window.location.href='http://localhost:8080/login/home.jsp'" />			
<input type="button" value="LOGIN" onclick="window.location.href='http://localhost:8080/login/Login1.jsp'" />	</center>		
</body>
</html>