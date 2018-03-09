<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>telephone billing system</title>
</head>
<body>
<%@ page import="java.sql.*"%>
	<%@ page import="javax.sql.*"%>
	<% 
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/nishant?autoReconnect=true&useSSL=false","root","root"); 
Statement st= con.createStatement(); 
ResultSet rs=st.executeQuery("select uname from registration ");
ResultSet rs1=st.executeQuery("select pno from cutomer_record ");
String msg=" Active account list:";
out.println("<h1>"+msg+"</h1>");
while(rs.next()){
out.print("<h1>"+ rs.getString(1)+"</h1>");	
//out.print("<h1>"+ rs1.getString(3)+"</h1>");	
}

%>

</body>
</html>