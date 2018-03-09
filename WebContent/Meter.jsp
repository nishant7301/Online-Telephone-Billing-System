<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>meter entry </title>
</head>
<body bgcolor="#808080">
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%

String pno=request.getParameter("pno"); 
session.putValue("pno",pno); 
String cname=request.getParameter("cname");
String local=request.getParameter("local");
String Std=request.getParameter("Std");
String Isd=request.getParameter("Isd");
String date=request.getParameter("date");

Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/nishant?autoReconnect=true&useSSL=false",
"root","root"); 
Statement st= con.createStatement(); 
ResultSet rs2=st.executeQuery("select * from cutomer_record where pno='"+pno+"' order by pno");
if(rs2.next()){
st.executeUpdate("insert into customer_meter values('"+pno+"','"+local+"','"+Std+"','"+Isd+"','"+cname+"','"+date+"')"); 
HttpSession ses=request.getSession();  
ses.setAttribute("pno",pno);
ses.setAttribute("cname", cname);  
ses.setAttribute("local",local);
ses.setAttribute("Std", Std);
ses.setAttribute("Isd", Isd);
ses.setAttribute("date", date);
out.println("meter entry successfully is done");
}
else
{
	out.println("number is not registerd");
}
%>

<a href="Admin1.jsp">Go to admin home page</a>
</body>
</html>