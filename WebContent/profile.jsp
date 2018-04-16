<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<script>
function f()
{
	var dob = document.forms["profile"]["occupation"];
	var  pin= document.forms["profile"]["pin"];
	var baccount = document.forms["profile"]["baccount"];
	var address = document.forms["profile"]["address"];
	if(document.profile.occupation.value.length<1)
	{ alert("Occupation is Mandatory");
     return false;
	}
	if(document.profile.address.value.length<1)
	{ alert("Address is Mandatory");
return false;
	}
if(isNaN(document.profile.pin.value))
{alert("Pin number should contain numerics only");
return false;
}
if(document.profile.pin.value.length>6)
	{ alert("Pin no: should  not be greater than 6 digit");
return false;
	}
if((document.profile.pin.value.length<6))
{ 
	alert("Pin no: should be 6 digit");
return false;
}
if(isNaN(document.profile.baccount.value))
{alert("Account number should contain numerics only");
return false;
}
if(!(document.profile.baccount.value.length==11))
{ 
	alert("Account number should be  11 digit ");
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
<title>profile</title>
</head>
<body>
<h2 align="center"><font color="RED">UPDATE INFORMATION</font></h2>
<form name="profile" action="updateinfo.jsp" method="post" onsubmit="return f()">
<pre>



                                                        Occupation       <input type="text" name="occupation" required>
                         
                                                        ADDRESS          <input type="text" name="address" required>

			                                   PIN           <input type="text" name="pin" required>
		
		                                      Bank_Account No    <input type="text" name="baccount" required>
		

                                                                             <input type="submit" name="submit">  <button type="reset" value="Reset">Reset</button> 
                                                                             
                                                                             <input type="button" value="BACK" onclick="window.location.href='http://localhost:8080/login/index1.jsp'" />  
                         
</pre>
</form>

</body>
</html>