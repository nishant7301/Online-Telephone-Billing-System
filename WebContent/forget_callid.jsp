<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
String email_id=request.getParameter("email_id");
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/nishant?autoReconnect=true&useSSL=false","root","root"); 
Statement st= con.createStatement(); 
String call_id=null;
ResultSet rs=st.executeQuery("select * from registration where email='"+email_id+"' and admin=1");
if(rs.next())
{	
	 ResultSet r1=st.executeQuery("select * from call_rate ");
	 while(r1.next())
	 {
	call_id=r1.getString("call_id");
	
	 }
	 out.println("your call_id is:"+call_id);
}
else
{
	out.println("YOU ARE NOT A ADMIN");
}

%>
<center>
<form> <input type="button" value="BACK" onclick="window.location.href='http://localhost:8080/login/call_rates1.jsp'" /> </form>
</center>
</body>
</html>