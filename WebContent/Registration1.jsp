<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="http://fortawesome.github.io/Font-Awesome/assets/font-awesome/css/font-awesome.css">
</head>
<style>
.button {
    background-color: #4CAF50;
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
}  
</style>
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
    background-image: url("hd1.jpg");
    background-color: #cccccc;
     height: 50%; 

    /* Center and scale the image nicely */
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
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

  input[type=button] {
    width: 10%;
    padding: 10px 18px;
    margin: 8px 0;
    box-sizing: border-box;
    border: none;
    background-color: green;
    color: white;
    
}
input[type=email] {
    width: 10%;
    padding: 10px 18px;
    margin: 8px 0;
    box-sizing: border-box;
    border: none;
    background-color: green;
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
<marquee style="background:RED" behavior="alternate"><h2>WELCOME TO NEW REGISTRATION</h2></marquee>
<form  name="Registration1" action="registration.jsp" method="post" onsubmit="return check()">
<p align="center">
                                                                     <h3 align="center">Registration Here:-</h3>
<pre>
                                                                     <label for="uname">USER ID*</label><i class="fa fa-user" aria-hidden="true"></i>
	               	                                             <input type="text" name="uname" required>
                                                                     <label for="password">PASSWORD*</label><i class="fa fa-lock"></i>
		                                                     <input type="password" name="password" required>
		                                                     <label for="confpassword">Confirm password*</label><i class="fa fa-lock"></i>
		                                                     <input type="password" name="confpassword" required>
		                                                     <label for="email">EMAIL ID*</label><i class="fa fa-envelope" aria-hidden="true"></i>
		                                                     <input type="text" name="email" required>
                                                                       <input type="submit" name="submit" value="submit">    <input type="reset" name="Reset">
					                                         <input type="button" value="BACK" onclick="window.location.href='http://localhost:8080/login/user.html'" />
              													
</pre>
                             
</form>
</body>
</html>