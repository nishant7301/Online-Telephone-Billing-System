<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>DATA RATE ENTERY</title>
</head>
<body bgcolor="#808080"> 
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%

String data_id=request.getParameter("data_id");
String Gsm_rate=request.getParameter("Gsm_rate"); 
String Wcdma_rate=request.getParameter("Wcdma_rate"); 
session.putValue("data_id",data_id); 
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/nishant?autoReconnect=true&useSSL=false",
"root","root"); 
Statement st= con.createStatement(); 
ResultSet res=st.executeQuery("select data_id from datarate where data_id='"+data_id+"' ");
if(res.next())
{
int kfger=st.executeUpdate("delete from datarate where data_id='"+data_id+"'");
st.executeUpdate("insert into datarate values('"+data_id+"','"+Gsm_rate+"','"+Wcdma_rate+"')");
out.println("successfully inserted");
}
else{
	out.println("wrong data_id");
}
%>
<br></br>
<form> <input type="button" value="BACK" onclick="window.location.href='http://localhost:8080/login/datarate.jsp'" /> </form>
<br></br>    
                                       <form>                                             <input type="button" value="BACK" onclick="window.location.href='http://localhost:8080/login/Admin1.jsp'" />
              </form>	             
</body>
</html>