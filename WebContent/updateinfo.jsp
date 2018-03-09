<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.sql.*"%>
	<%@ page import="javax.sql.*"%>
<%
HttpSession ses=request.getSession(false);  
String uname = (String)ses.getAttribute("uname"); 
String occupation=request.getParameter("occupation");
String  address= request.getParameter("address");
String pin = request.getParameter("pin");
String baccount = request.getParameter("baccount");
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/nishant?autoReconnect=true&useSSL=false",
"root","root"); 
Statement st= con.createStatement();
ResultSet rs=st.executeQuery("select * from cutomer_record where uname='"+uname+"'");
if(rs.next()) 
{ 
	int j1=st.executeUpdate("update cutomer_record set  occupation='"+occupation+"',address='"+address+"',pin='"+pin+"',baccount='"+baccount+"' where uname='"+uname+"'"); 
	out.println("recorded is successfully inserted \n");

}

%>
<form> <input type="button" value="BACK" onclick="window.location.href='http://localhost:8080/login/index1.jsp'" /> </form> 
                         

</body>
</html>