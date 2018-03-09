<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script type="text/javascript">
function check()
{
	  var x = document.forms["myForm"]["email"].value;
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
<body bgcolor="#808080">
<form  name="myForm" action="forget.jsp"  onsubmit="return check();" method="post"">
<input type="hidden" name="ID" value="INSERT">

<p align="center">

<pre>
                                          Email: <input type="text" name="email">
					
					            <input type="submit" name="submit" value="INSERT"> <form> <input type="button" value="HOME" onclick="window.location.href='http://localhost:8080/login/home.jsp'" /> </form> 
<br></br>         
					                             
					                             
		 </pre>
					                                   
</p>
</form>
     

</body>
</html>