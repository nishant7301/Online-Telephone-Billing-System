<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script type="text/javascript">
function check()
{
	  var x = document.forms["forgetuserpass1"]["email"].value;
	    var atpos = x.indexOf("@");
	    var dotpos = x.lastIndexOf(".");
	    if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length) {
	        alert("Not a valid e-mail address");
	        return false;
	    }
	}

</script>
<style>
body  {
    background-image: url("m1.jpg");
    background-color: #cccccc;
}


</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>new password </title>
</head>
<body>
<form  name="forgetuserpass1" action="forgetuserpass.jsp"  onsubmit="return check();" method="post">

<p align="center">

<pre>
                                                                Email: <input type="text" name="email">
					
					                                    <input type="submit" name="submit" value="submit">  <input type="button" value="BACK" onclick="window.location.href='http://localhost:8080/login/Login1.jsp'" />  
<br><br>         
					                             
					                             
		 </pre>
					                                  
</form>
     

</body>
</html>