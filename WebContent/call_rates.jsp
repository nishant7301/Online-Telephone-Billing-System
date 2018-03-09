<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>TELEPHONE BILLING RATE ENTERY</title>
</head>
<body>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
String local=request.getParameter("local"); 
String call_id=request.getParameter("call_id"); 
session.putValue("call_id",call_id); 
String Std=request.getParameter("Std"); 
String Isd=request.getParameter("Isd"); 
String M_Rental=request.getParameter("M_Rental"); 
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/nishant?autoReconnect=true&useSSL=false",
"root","root"); 
Statement st= con.createStatement();
ResultSet res=st.executeQuery("select call_id from call_rate where call_id='"+call_id+"' ");
if(res.next())
{
int kfger=st.executeUpdate("delete from call_rate where call_id='"+call_id+"'");
st.executeUpdate("insert into call_rate values('"+local+"','"+Std+"','"+Isd+"','"+call_id+",'"+M_Rental+"'')");
out.println("successfully inserted");
}
else{
	out.println("wrong call_id");
}
%>
<br></br>
<form> <input type="button" value="BACK" onclick="window.location.href='http://localhost:8080/login/call_rates1.jsp'" /> </form>
<br></br>    
                                       <form>                                             <input type="button" value="LOG OUT" onclick="window.location.href='http://localhost:8080/login/Admin1.jsp'" />
              </form>	                        	               
</body>
</html>