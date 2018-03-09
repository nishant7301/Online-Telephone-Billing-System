<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="#808080">
<h1 align="center"><font color="red">WELCOME TO RESET PASSWORD PAGE</font></h1>
<form  name="adreset1" action="reset.jsp" method="post" onsubmit="return check()">
<input type="hidden" name="ID" value="INSERT">

<p align="center">

<pre>

                                                 Old Password <input type="password" name="password1" required>
                                          
                                                 New Password <input type="password" name="newpassword" required>
                                                 
                                                 ConfPassword <input type="password" name="confpassword" required>

					                     <input type="submit" name="submit" value="INSERT"><form>      <input type="button" value="BACK" onclick="window.location.href='http://localhost:8080/login/link.jsp'" />
              </form>	                     
					                             
					                             
					                             
		 </pre>
					                                   
</p>
</form>

</body>
</html>