<!DOCTYPE html>
<html>
<script type="text/javascript">
  function f()
{
	
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
<style>
body  {
    background-image: url("m1.jpg");
    background-color: #cccccc;
}
</style>

<head>
<title>Meter entry</title>
</head>
<body>
<h1 align="center"><font color="RED">WELCOME TO CALL METER ENTERY </font></h1>
<form name="Meter1"  action="Meter.jsp" method="post" onSubmit=" return checkForm()">
<p align="center">
<pre>
           PHONE NUMBER: <input type="text" name="pno" required>          <input type="button" value="USER DETAIL" onclick="window.location.href='http://localhost:8080/login/user.jsp'" />	                        	           
                          			         
           LOCAL CALL    <input type="text" name="local" required>
              
           STD CALL      <input type="text" name="Std" required>
                
           ISD CALL      <input type="text" name="Isd" required>
                
           DATE          <input type="date" name="date" required>
                				
	   
		         <input type="submit" name="submit" value="SUBMIT">   <input type="button" value="BACK" onclick="window.location.href='http://localhost:8080/login/link.jsp'" />
                 
                         <input type="button" value="LOG OUT" onclick="window.location.href='http://localhost:8080/login/Admin1.jsp'" />
              	                        	           
                  
		                                         
							</pre>			
							
							</form>
	
</body>
</html>