<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>telephone billing system</title>
</head>

<body>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
HttpSession ses=request.getSession(false);  
String uname = (String)ses.getAttribute("uname");
String cname=request.getParameter("cname"); 
String pno=request.getParameter("pno"); 
String occupation=request.getParameter("occupation");
String gender = request.getParameter("m");
String dob=request.getParameter("dob"); 
String  address= request.getParameter("address");
String pin = request.getParameter("pin");
String baccount = request.getParameter("baccount");
String date=request.getParameter("date"); 
String Amount=request.getParameter("amount"); 
String card_no=request.getParameter("cardno"); 
try
{
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/nishant?autoReconnect=true&useSSL=false",
"root","root"); 
Statement st= con.createStatement(); 
ResultSet rs=st.executeQuery("select * from cutomer_record where pno='"+pno+"' or uname='"+uname+"'");
if(rs.next()) 
{ 
	out.println("ALREADY YOU HAVE TAKEN CONNECTION");
}
else
{
int j=st.executeUpdate("insert into cutomer_record values('"+uname+"','"+cname+"','"+pno+"','"+occupation+"','"+gender+"','"+dob+"','"+address+"','"+pin+"','"+baccount+"','"+date+"','"+Amount+"','"+card_no+"','"+null+"')"); /* here lab.test is lab(project_name) and test(project_table_name) */

out.println("recorded is successfully inserted \n");
}

 }
catch(Exception e)
{
	out.println(e.getMessage());
}
 %>
 <form> <input type="button" value="BACK" onclick="window.location.href='http://localhost:8080/login/index1.jsp'" /> </form> 
			<br>
			<br>
	<form> <input type="button" value="LOG OUT" onclick="window.location.href='http://localhost:8080/login/home.jsp'" /> </form> 
			

</body>
</html>