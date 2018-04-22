<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style type="text/css">
body
{
background-image: url("hd1.jpg");
    background-color: #cccccc;
     height: 50%; 

    /* Center and scale the image nicely */
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
    }
      input[type=button] {
    width: 10%;
    padding: 10px 18px;
    margin: 8px 0;
    box-sizing: border-box;
    border: none;
    background-color: RED;
    color: white;
    
}

input[type=submit] {
    width: 10%;
    padding: 10px 18px;
    margin: 8px 0;
    box-sizing: border-box;
    border: none;
    background-color: RED;
    color: white;
    
}
input[type=text] {
    width: 25%;
    padding: 10px 18px;
    margin: 8px 0;
    box-sizing: border-box;
    border: none;
    background-color: grey;
    color: white;
    
}
    

</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>telephone billing system</title>
</head>
<body>
<h1 align="center">WELCOME TO USER ELIMINATION </h1>
<form action="Delete.jsp" method="post">
<p align="center">
<pre>


                                                                                            <label for="uname">DELETE USER FROM DATABASE:</label>
                                                                                            <input type="text" name="uname" required>
                                                                                            <input type="submit" />   <input type="button" value="CANCEL" onclick="window.location.href='http://localhost:8080/login/link.jsp'" />
                                                                                            <input type="button" value="Log Out" onclick="window.location.href='http://localhost:8080/login/Admin1.jsp'" />  
              	                     </pre>  	               
					 		   
</form>
	
</body>
</html>