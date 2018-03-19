<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>meter entry </title>
</head>
<style>
body  {
    background-image: url("m1.jpg");
    background-color: #cccccc;
}

</style>
<body>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%

String pno=request.getParameter("pno"); 
String local=request.getParameter("local");
String Std=request.getParameter("Std");
String Isd=request.getParameter("Isd");
String date=request.getParameter("date");

Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/nishant?autoReconnect=true&useSSL=false",
"root","root"); 
Statement st= con.createStatement(); 
ResultSet rs2=st.executeQuery("select * from cutomer_record where pno='"+pno+"' order by pno");
try
{
if(rs2.next())
{
st.executeUpdate("insert into customer_meter values('"+pno+"','"+local+"','"+Std+"','"+Isd+"','"+date+"')"); 
st.executeUpdate("insert into temp_customer_meter values('"+pno+"','"+local+"','"+Std+"','"+Isd+"','"+date+"')"); 
HttpSession ses=request.getSession();  
ses.setAttribute("pno",pno); 
ses.setAttribute("local",local);
ses.setAttribute("Std", Std);
ses.setAttribute("Isd", Isd);
ses.setAttribute("date", date);
out.println("meter entry successfully inserted");
}
else
{
	out.println("number is not registerd");
}
}
catch(Exception e)
{
	out.println(e);
}
%>
<br>
<br>
<center><input type="button" value="BACK" onclick="window.location.href='http://localhost:8080/login/link.jsp'" /></center>
<br>
<br>
<center><input type="button" value="LOG OUT" onclick="window.location.href='http://localhost:8080/login/Admin1.jsp'" /></center>
</body>
</html>