<!DOCTYPE html>
<html>
<script type="text/javascript">
  function f()
{
	var cname = document.forms["Meter1"]["cname"];
	var pno = document.forms["Meter1"]["pno"];
	var local = document.forms["Meter1"]["local"];
	var Std = document.forms["Meter1"]["std"];
	var Isd = document.forms["Meter1"]["isd"];
	var date = document.forms["Meter1"]["date"];
	if(document.Meter1.pno.value.length<10)
	{ alert(" phone number should be atleast 10 digit");
	return false;
	}
	if(document.Meter1.pno.value.length>12)
	{ alert("phone number should be maximum 12 digit");
	return false;
	}
	if(isNaN(document.Meter1.pno.value))
	{alert("Phone number should contain numerics only");
	return false;
	}
	if(document.Meter1.cname.value.length>32)
	{ alert("User Name should not be greater than 32 character");
     return false;
	}

	if(isNaN(document.Meter1.local.value))
	{alert("Phone number should contain numerics only");
	return false;
	}
	if(isNaN(document.Meter1.Std.value))
	{alert("Phone number should contain numerics only");
	return false;
	}
	if(isNaN(document.Meter1.Isd.value))
	{alert("Phone number should contain numerics only");
	return false;
	}
	
	}

</script>
<head>
<meta charset="ISO-8859-1">
<title>Meter entry</title>
</head>
<body bgcolor="#808080">
<h1 align="center"><font color="">WELCOME TO CALL METER ENTERY PAGE</font></h1>
<form name="Meter1"  action="Meter.jsp" method="get" onSubmit=" return checkForm()">
<p align="center">
<pre>
           PHONE NUMBER: <input type="text" name="pno" required>                          <form> <input type="button" value="USER DETAIL" onclick="window.location.href='http://localhost:8080/login/user.jsp'" /> </form>	                        	           
                          			  
                    NAME <input type="text" name="cname" required>
                    
              LOCAL CALL <input type="text" name="local" required>
              
                STD CALL <input type="text" name="Std" required>
                
                ISD CALL <input type="text" name="Isd" required>
                
                 DATE    <input type="date" name="date" required> dd/mm/yyyy
                				
	   
		         <input type="submit" name="submit" value="SUBMIT">  <form> <input type="button" value="BACK" onclick="window.location.href='http://localhost:8080/login/link.jsp'" />
                 
                       <form> <input type="button" value="LOG OUT" onclick="window.location.href='http://localhost:8080/login/Admin1.jsp'" />
              </form>	                        	           
              </form>     
		                                         
							</pre>			
							</p>
							</form>
	
</body>
</html>