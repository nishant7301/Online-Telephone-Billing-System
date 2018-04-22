<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>ACTIVE USER</title>
</head>
<style>
body  {
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
    background-color: red;
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
<body>
<marquee style="Background:RED"><h1>search active user</h1></marquee>
<form name="user" action="NewAction.jsp" method="post">
<p align="center">
 <pre>                                                      <label for="uname"> USER ID*</label>
                                                            <input type="text" name="uname" required>
                                                            <input type="submit" name="submit" value="submit">   <input type="button" value="CANCEL" onclick="window.location.href='http://localhost:8080/login/meter1.jsp'" />
                                                            
                                                           
                                                                
                                                            
          </pre>
          
           </form>    
         
                          
</body>
</html>