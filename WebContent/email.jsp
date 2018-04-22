<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<script>
  function check()
    {
	    var em1= document.forms["email"]["em1"];
		var em2 = document.forms["email"]["em2"];
		if(!(document.email.em1.value==document.email.em2.value))
		{
			alert("Enter email correctly");
			return false;
		}

	}

</script>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>email update</title>
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
input[type=email] {
    width: 25%;
    padding: 10px 18px;
    margin: 8px 0;
    box-sizing: border-box;
    border: none;
    background-color: grey;
    color: white;
    
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
 input[type=password] {
    width: 25%;
    padding: 10px 18px;
    margin: 8px 0;
    box-sizing: border-box;
    border: none;
    background-color: grey;
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
input[type=reset] {
    width: 10%;
    padding: 10px 18px;
    margin: 8px 0;
    box-sizing: border-box;
    border: none;
    background-color: RED;
    color: white;
    
}
</style>
<body>
<h2 align="center">Welcome To Email Update</h2>
<form name=email action="email1.jsp" method="post" onsubmit="return check()">
<p align="center">
<pre>                                                                     <label for="email">Old email id:</label>
                                                                     <input type="email" name="email" required>
                                                                     <label for="email">New email id:</label>
                                                                     <input type="email" name="em1" required>
                                                                     <label for="email">Confirm email id:</label>
                                                                     <input type="email" name="em2" required>
                                                                     <input type="submit" name="submit"> <input type="button" value="BACK" onclick="window.location.href='http://localhost:8080/login/index1.jsp'" />  
                         
</pre>


</form>
                                           
</body>
</html>