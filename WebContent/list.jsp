<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
body{
	background-color:#808080
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>telephone billing system</title>
</head>
<body>
<br></br>
<form action="Delete.jsp" method="post">
    DELETE USER FROM DATABASE           <input type="text" name="uname"/>         
 <input type="submit" />
 
 <br></br>
      <form> <input type="button" value="Home" onclick="window.location.href='http://localhost:8080/login/Admin1.jsp'" />
              </form>	                        	               
			<br></br>
      <form> <input type="button" value="BACK" onclick="window.location.href='http://localhost:8080/login/link.jsp'" />
              </form>	                        	               
					 		  
</form>
		<%@ page import="java.sql.*"%>
	<%@ page import="javax.sql.*"%>
	<% 

%>
</body>
</html>