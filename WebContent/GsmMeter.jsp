<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<script type="text/javascript">
function f1()
{
	var pno = document.forms["GsmMeter1"]["pno"];
	var Gsm_Usage = document.forms["GsmMeter1"]["Gsm_Usage"];
	if(document.GsmMeter1.pno.value.length<10)
	{ alert(" phone number should be atleast 10 digit");
	return false;
	}
	if(document.GsmMeter1.pno.value.length>12)
	{ alert("phone number should be maximum 12 digit");
	return false;
	}
	if(isNaN(document.GsmMeter1.pno.value))
	{alert("Phone number should contain numerics only");
	return false;
	}
	if(isNaN(document.GsmMeter1.Gsm_Usage.value))
	{alert("GSM ENTERY  should be numerics only");
	return false;
	}
	
	
	}



</script>
<style>
body  {
    background-image: url("m1.jpg");
    background-color: #cccccc;
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


  input[type=button] {
    width: 10%;
    padding: 10px 18px;
    margin: 8px 0;
    box-sizing: border-box;
    border: none;
    background-color: RED;
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
input[type=date] {
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
<title>Gsm rate entery </title>
</head>
<body>
<h1 align="center">WLCCOME TO GSM BILL ENTERY </h1>
<form name="GsmMeter"  action="GsmMeter1.jsp" method="post" onSubmit=" return f1()">
<p align="center">
<pre>
                                                                    <label for="pno">PHONE NUMBER:</label>
                                                                    <input type="text" name="pno" required> 
                                                                    <label for="Gsm_Usage">GSM USAGE IN KB:</label>
                                                                    <input type="text" name="Gsm_Usage" required> 
                                                                    <label for="date">DATE:</label>
                                                                    <input type="date" name="date" required>                     
                                                                    <input type="submit" name="submit" value="SUBMIT">   <input type="button" value="BACK" onclick="window.location.href='http://localhost:8080/login/link.jsp'" />
                                                	           
                          			  
                    
                    </pre>
                    
                    </form>
                    

</body>
</html>