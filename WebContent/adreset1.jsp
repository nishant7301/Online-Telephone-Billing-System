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
</style>

<title>Reset password</title>
</head>
<body>
<h1 align="center"><font color="red">WELCOME TO RESET PASSWORD</font></h1>
<form  name="adreset1" action="reset.jsp" method="post" onsubmit="return check()">

<p align="center">

<pre>

                                                 Old Password <input type="password" name="password1" required>
                                          
                                                 New Password <input type="password" name="newpassword" required>
                                                 
                                                 ConfPassword <input type="password" name="confpassword" required>

					                     <input type="submit" name="submit" value="INSERT">      <input type="button" value="BACK" onclick="window.location.href='http://localhost:8080/login/link.jsp'" />
             	                     
					                             
					                             
					                             
		 </pre>
					                                  
</form>

</body>
</html>