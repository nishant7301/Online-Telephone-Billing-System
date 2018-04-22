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
<style>
body  {
    background-image: url("m1.jpg");
    background-color: #cccccc;
    }
    .button {
    background-color: #4CAF50;
    border: none;
    color: white;
    padding: 8px 25px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 10px;
    margin: 4px 2px;
    cursor: pointer;
 
    
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
input[type=button] {
    width: 10%;
    padding: 10px 18px;
    margin: 8px 0;
    box-sizing: border-box;
    border: none;
    background-color: RED;
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

</style>
<head>
<meta charset="ISO-8859-1">
<title>telephone billing system</title>
</head>
 <body>
 <h1 align="center"><font color="red">WELCOME TO CALL RATE ENTRY </font></h1>
 
<form name="call_rates1" action="call_rates.jsp" method="post" onsubmit="return check()">

<pre>
                                                                 <label for="call_id"> CALL ID:</label>
                                                                 <input type="text" name="call_id" required>
                                                                 <label for="local">LOCAL: </label>
                                                                 <input type="text" name="local" required>
                                                                 <label for="Std">STD:</label>
                                                                 <input type="text" name="Std"required>
                                                                 <label for="Isd">ISD:</label>
                                                                 <input type="text" name="Isd" required>
                                                                 <label for="month_rate">MONTHLY RATE:</label>
                                                                 <input type="text" name="month_rate" required>
                                                                 <input type="submit" name="submit" value="SUBMIT">   <input type="button" value="BACK" onclick="window.location.href='http://localhost:8080/login/link.jsp'" />
                                                                 <input type="button" value="LOG OUT" onclick="window.location.href='http://localhost:8080/login/Admin1.jsp'" />   <strong><a href="forget_callid1.jsp" class="button">FORGET CALL_ID?</a>	</strong>


           </pre>         
</form>


</body>
</html>