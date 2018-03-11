<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<title>Bootstrap Theme Simply Me</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<script type="text/javascript">
function check()
{
	var password = document.forms["reset1"]["password"];
	var confpassword = document.forms["reset1"]["confpassword"];
	if((document.reset1.password.value.length<6))
	{ alert("password is minimum 6 charecters");
	return false;
	}
if((document.reset1.password.value.length>11))
	{ alert("password is maximum 11 charecters");
	return false;
	}
if(!(document.reset1.password.value==document.reset1.confpassword.value))
{
	alert("Enter password correctly");
	return false;
}
	
	
	
	}

</script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>RESET PASSWORD PAGE</title>
</head>
<body>
<h1 align="center"><font color="red">WELCOME TO RESET PASSWORD</font></h1>
<form  name="reset1" action="reset.jsp" method="post" onsubmit="return check()">
<input type="hidden" name="ID" value="INSERT" onsubmit="return check()">

<p align="center">

<pre>

                                                 Old Password <input type="password" name="password1" required>
                                          
                                                 New Password <input type="password" name="newpassword" required>
                                                 
                                                 ConfPassword <input type="password" name="confpassword" required>

					                     <input type="submit" name="submit" value="INSERT"><form>      <input type="button" value="BACK" onclick="window.location.href='http://localhost:8080/login/index1.jsp'" />
              </form>	                     
					                             
					                             
					                             
		 </pre>
					                                   
</p>
</form>

</body>
</html>