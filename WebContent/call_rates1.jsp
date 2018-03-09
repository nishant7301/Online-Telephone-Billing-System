<!DOCTYPE html>
<html>
<script>
function check()
{
	var call_id = document.forms["call_rates1"]["call_id"];
	var local = document.forms["call_rates1"]["local"];
	var Std = document.forms["call_rates1"]["Std"];
	var Isd = document.forms["call_rates1"]["Isd"];
	var M_Rental = document.forms["call_rates1"]["M_Rental"];
	
	 if(isNaN(document.call_rates1.local.value))
	{alert("local charge should contain numerics only");
	return false;
	}
	 if(isNaN(document.call_rates1.Std.value))
		{alert("std charge should contain numerics only");
		return false;
		}
	 if(isNaN(document.call_rates1.Isd.value))
		{alert("Isd charge should contain numerics only");
		return false;
		}
	 if(isNaN(document.call_rates1.M_Rental.value))
		{alert("Monthely charge should contain numerics only");
		return false;
		}
}
</script>

<head>
<meta charset="ISO-8859-1">
<title>telephone billing system</title>
</head>
                    <body bgcolor="#808080">
             <h1 align="center"><font color="red">WELCOME TO CALL RATE ENTERY PAGE</font></h1>
<form name="call_rates1" action="call_rates.jsp" method="get" onsubmit="return check()">
<p align="center">
<pre>
                                 call_id     <input type="text" name="call_id" required><br></br>
                                 Local       <input type="text" name="local" required><br></br>
                                 STD         <input type="text" name="Std"required><br></br>
                                 ISD         <input type="text" name="Isd" required><br></br>
                                MONTHLY RATE <input type="text" name="Isd" required><br></br>
                                             <input type="submit" name="submit" value="SUBMIT"><form> <input type="button" value="BACK" onclick="window.location.href='http://localhost:8080/login/link.jsp'" /> </form>    
                                       <form>                                             <input type="button" value="LOG OUT" onclick="window.location.href='http://localhost:8080/login/Admin1.jsp'" />
              </form>	                        	               
                          
                      

</pre>
</p>
</form>


</body>
</html>