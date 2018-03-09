<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>GSM rate entry</title>
</head>
<body>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
String pno=request.getParameter("pno"); 
String Gsm_Usage=request.getParameter("Gsm_Usage"); 
session.putValue("pno",pno); 
String date=request.getParameter("date");
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/nishant?autoReconnect=true&useSSL=false",
"root","root"); 
Statement st= con.createStatement(); 
ResultSet rs2=st.executeQuery("select * from cutomer_record where pno='"+pno+"' order by pno");
if(rs2.next()){
st.executeUpdate("insert into gsmmeter values('"+pno+"','"+Gsm_Usage+"','"+date+"')"); 
HttpSession ses=request.getSession();  
out.println("meter entry successfully is done");
}
else
{
	out.println("number is not registerd");
}
%>
<br></br>
<form> <input type="button" value="HOME" onclick="window.location.href='http://localhost:8080/login/link.jsp'" /> </form>
<br></br>    
                                       <form>                                             <input type="button" value="LOG OUT" onclick="window.location.href='http://localhost:8080/login/Admin1.jsp'" />
              </form>	

</body>
</html>