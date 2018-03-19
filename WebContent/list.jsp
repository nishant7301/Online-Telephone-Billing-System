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
<style type="text/css">
body
{
background-image: url("m1.jpg");
    background-color: #cccccc;
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
 
 <br><br>
                                   <input type="button" value="Home" onclick="window.location.href='http://localhost:8080/login/Admin1.jsp'" />
              	                        	               
			<br><br>
                                  <input type="button" value="BACK" onclick="window.location.href='http://localhost:8080/login/link.jsp'" />
              	                        	               
					 		  
</form>
		<%@ page import="java.sql.*"%>
	<%@ page import="javax.sql.*"%>
	<% 

%>
</body>
</html>