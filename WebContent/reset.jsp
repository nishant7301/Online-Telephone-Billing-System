<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>reset password</title>
</head>
<body>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
HttpSession ses=request.getSession(false);  
String user_name = (String)ses.getAttribute("uname");
 
String password1=request.getParameter("password1"); 
String newpassword=request.getParameter("newpassword");  
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/nishant?autoReconnect=true&useSSL=false",
"root","root"); 
Statement st= con.createStatement();  
ResultSet rs=st.executeQuery("select * from registration where uname='"+user_name+"'");
try
{
	while(rs.next()) { 
		String pwd = rs.getString("password");
		
		if(password1.equals(pwd))
		{
			int j1=st.executeUpdate("update registration set  password='"+newpassword+"' where uname='"+user_name+"'"); 
			out.println("password is successfully updated:");
			String information1="<a href=\"home.jsp\">HOME</a>";
		  break;
		}
		else
		{
			out.println("password can't be updated beacuse your old password is wrong ");
		}
	}
}


catch(Exception e)
{
out.println("error")	;
}
%>
</body>
</html>