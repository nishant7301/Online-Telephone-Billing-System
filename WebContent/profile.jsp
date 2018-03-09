<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>profile</title>
</head>
<body align="center" bgcolor="#808080">
<h2 align="center">UPDATE INFORMATION</h2>
<form name="profile" action="updateinfo.jsp "method="get" onsubmit="return f()">
<p align="center">
<pre>



                          Occupation   <input type="text" name="occupation" required>
                         
                          ADDRESS      <input type="text" name="address" required>

			   PIN         <input type="text" name="pin" required>
		
		      Bank_Account No: <input type="text" name="baccount" required>
		

                                       <input type="submit" name="submit" value="INSERT"> <form> <input type="button" value="BACK" onclick="window.location.href='http://localhost:8080/login/index1.jsp'" /> </form> 
                         

<br>
</br>
 			
																








	
</pre>
																				
																				  	

                                                                                  

</p>
</form>

</body>
</html>