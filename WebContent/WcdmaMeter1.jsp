<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css"></style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
String pno=request.getParameter("pno"); 
String Wcdma_Usage=request.getParameter("Wcdma_Usage"); 
String date=request.getParameter("date");
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/nishant?autoReconnect=true&useSSL=false",
"root","root"); 
Statement st= con.createStatement(); 
ResultSet rs2=st.executeQuery("select * from cutomer_record where pno='"+pno+"' order by pno");
if(rs2.next()){
st.executeUpdate("insert into WcdmaMeter values('"+pno+"','"+Wcdma_Usage+"','"+date+"')"); 
st.executeUpdate("insert into temp_WcdmaMeter values('"+pno+"','"+Wcdma_Usage+"','"+date+"')"); 
HttpSession ses=request.getSession();  
out.println("meter entry successfully is done");
}
else
{
	out.println("number is not registerd");
}
%>
<br></br>
<form> <input type="button" value="BACK" onclick="window.location.href='http://localhost:8080/login/link.jsp'" /> </form>
<br></br>    
                                       <form>                                             <input type="button" value="LOG OUT" onclick="window.location.href='http://localhost:8080/login/Admin1.jsp'" />
              </form>	

</body>
</html>