<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ACTIVE USER</title>
</head>
<style>
body  {
    background-image: url("m1.jpg");
    background-color: #cccccc;
}
</style>
<body>
<form name="user" action="NewAction.jsp" method="post">
 <center>UserId  <input type="text" name="uname" required></center><br>
      <center>     <button type="submit" name="submit">Submit</button></center>
           </form>    
           <br>
           <br>
      <center>    <input type="button" value="BACK" onclick="window.location.href='http://localhost:8080/login/meter1.jsp'" />
                 </center> 
</body>
</html>