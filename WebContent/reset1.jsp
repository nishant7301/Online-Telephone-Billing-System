<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>

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
<style type="text/css">
body  {
    background-image: url("hd1.jpg");
    background-color: #cccccc;
     height: 50%; 

    /* Center and scale the image nicely */
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
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
   input[type=button] {
    width: 10%;
    padding: 10px 18px;
    margin: 8px 0;
    box-sizing: border-box;
    border: none;
    background-color: RED;
    color: white;
    
}
</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>RESET PASSWORD PAGE</title>
</head>
<body>
<h1 align="center"><font color="red">WELCOME TO RESET PASSWORD</font></h1>
<form  name="reset1" action="reset.jsp" method="post" onsubmit="return check()">
<input type="hidden" name="ID" value="INSERT">

<p >

<pre>
                                                                     <label for="password1">PASSWORD:</label>
                                                                     <input type="password" name="password1" required>
                                                                     <label for="newpassword">NEW PASSWORD:</label>
                                                                     <input type="password" name="newpassword" required>
                                                                     <label for="confpassword">CONFIRM PASSWORD:</label>
                                                                     <input type="password" name="confpassword" required>
                                                                     <input type="submit" name="submit" value="SUBMIT">      <input type="button" value="BACK" onclick="window.location.href='http://localhost:8080/login/index1.jsp'" />
                                  
					                             
					                             
					                             
		 </pre>
					                                   
</form>

</body>
</html>