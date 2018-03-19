<!DOCTYPE html>
<html>
<script>
function check()
{
	var uname = document.forms["Registration1"]["uname"];
	var mnumber = document.forms["Registration1"]["mnumber"];
	var password = document.forms["Registration1"]["password"];
	var confpassword = document.forms["Registration1"]["confpassword"];
	if(document.Registration1.uname.value.length>32)
	{ alert("user id should be less than 32 digit");
     return false;
	}
	
	
	if(document.Registration1.mnumber.value.length==0)
	{ alert("Phone no is Mandatory");
     return false;
	}
	
	 if(isNaN(document.Registration1.mnumber.value))
	{alert("Phone number should contain numerics only");
	return false;
	}
	
	if((document.Registration1.mnumber.value.length<10))
	{ alert("phone should be atleast 10 digit");
	}
	if((document.Registration1.mnumber.value.length>11))
	{ alert("phone should not be greater 11 digit");
	}
	
	if((document.Registration1.password.value.length<6))
	{ alert("password is minimum 6 charecters");
	return false;
	}
if((document.Registration1.password.value.length>11))
	{ alert("password is maximum 11 charecters");
	return false;
	}
if(!(document.Registration1.password.value==document.Registration1.confpassword.value))
{
	alert("Enter password correctly");
	return false;
}
var x = document.forms["Registration1"]["email"].value;
var atpos = x.indexOf("@");
var dotpos = x.lastIndexOf(".");
if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length) {
    alert("Not a valid e-mail address");
    return false;
}

}
</script>
<style type="text/css">
body  {
    background-image: url("m1.jpg");
    background-color: #cccccc;
}
</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
<marquee style="background:RED" behavior="alternate"><h2>WELCOME TO NEW REGISTRATION</h2></marquee>

<form  name="Registration1" action="registration.jsp" method="post" onsubmit="return check()">
<input type="hidden" name="ID" value="INSERT">

<p align="center">

<pre>
	       	                                        UserId*   	<input type="text" name="uname" required>
		
		                                        mobile number   <input type="text" name="mnumber" required>

		                                        Password* 	<input type="password" name="password" required>
		
		                                        confPassword* 	<input type="password" name="confpassword" required>
		
		                                        Email Id*	<input type="text" name="email" required>

					
					                                  <input type="submit" name="submit" value="INSERT">    <input type="button" value="BACK" onclick="window.location.href='http://localhost:8080/login/user.html'" />
              													
</pre>
                             
</form>
 <h1>* denotes mandatory field</h1>
</body>
</html>