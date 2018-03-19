<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script type="text/javascript">
function check()
{
	  var x = document.forms["forget1"]["email"].value;
	    var atpos = x.indexOf("@");
	    var dotpos = x.lastIndexOf(".");
	    if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length) {
	        alert("Not a valid e-mail address");
	        return false;
	    }
	}

</script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>new password </title>
</head>
<body>
<form  name="forget1" action="forget.jsp"  onsubmit="return check();" method="post">

<p align="center">

<pre>
                                          Email: <input type="text" name="email">
					
					            <input type="submit" name="submit" value="INSERT">  <input type="button" value="BACK" onclick="window.location.href='http://localhost:8080/login/Login1.jsp'" />  
<br><br>         
					                             
					                             
		 </pre>
					                                  
</form>
     

</body>
</html>