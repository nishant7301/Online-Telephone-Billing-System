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
  input[type=button] {
    width: 10%;
    padding: 10px 18px;
    margin: 8px 0;
    box-sizing: border-box;
    border: none;
    background-color: green;
    color: white;
    
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
input[type=date] {
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

<head>
<title>Meter entry</title>
</head>
<body>
<h1 align="center"><font color="RED">WELCOME TO CALL METER ENTERY </font></h1>
<form name="Meter1"  action="Meter.jsp" method="post" onSubmit=" return checkForm()">
<p align="center">
<pre>            
                                                 <label for="pno">PHONE NUMBER:</label>
                                                 <input type="text" name="pno" required>          <input type="button" value="USER DETAIL" onclick="window.location.href='http://localhost:8080/login/user.jsp'" />	                        	           
                                                 <label for="local">LOCAL CALL:</label>			         
                                                 <input type="text" name="local" required>
                                                 <label for="std">STD CALL:</label>
                                                 <input type="text" name="Std" required>
                                                 <label for="Isd">ISD CALL:</label>
                                                 <input type="text" name="Isd" required>
                                                 <label for="date">DATE:</label>
                                                 <input type="date" name="date" required>
                	                         <input type="submit" name="submit" value="SUBMIT">   <input type="reset" value="Reset">  
                	                         <input type="button" value="BACK" onclick="window.location.href='http://localhost:8080/login/link.jsp'" />
                                                 <input type="button" value="Log Out" onclick="window.location.href='http://localhost:8080/login/Admin1.jsp'" />
              	                        	           
                  
		                                         
							</pre>			
							
							</form>
	
</body>
</html>