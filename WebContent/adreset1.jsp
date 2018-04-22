<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<script type="text/javascript">
function check()
{
	var password = document.forms["adreset1"]["password"];
	var confpassword = document.forms["adreset1"]["confpassword"];
	if((document.adreset1.password.value.length<6))
	{ alert("password is minimum 6 charecters");
	return false;
	}
if((document.adreset1.password.value.length>11))
	{ alert("password is maximum 11 charecters");
	return false;
	}
if(!(document.adreset1.password.value==document.adreset1.confpassword.value))
{
	alert("Enter password correctly");
	return false;
}
	
	
	
	}


</script>
<head>
<style>
body  {
    background-image: url("m1.jpg");
    background-color: #cccccc;
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
input[type=password] {
    width: 25%;
    padding: 10px 18px;
    margin: 8px 0;
    box-sizing: border-box;
    border: none;
    background-color: grey;
    color: white;
    
}

</style>

<title>Reset password</title>
</head>
<body>
<h1 align="center"><font color="red">WELCOME TO RESET PASSWORD</font></h1>
<form  name="adreset1" action="reset.jsp" method="post" onsubmit="return check()">

<p align="center">

<pre>
                                                              <label for="password1">OLD PASSWORD:</label>
                                                              <input type="password" name="password1" required>
                                                              <label for="newpassword">NEW PASSWORD:</label>
                                                              <input type="password" name="newpassword" required>
                                                              <label for="confpassword">CONFIRM PASSWORD:</label>
                                                              <input type="password" name="confpassword" required>
                                                              <input type="submit" name="submit" >      <input type="button" value="CANCEL" onclick="window.location.href='http://localhost:8080/login/link.jsp'" />
             	                     
					                             
					                             
					                             
		 </pre>
					                                  
</form>

</body>
</html>