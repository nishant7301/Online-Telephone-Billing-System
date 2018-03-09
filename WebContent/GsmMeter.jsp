<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Gsm rate entery </title>
</head>
<body bgcolor="#808080">
<h1 align="center">WLCCOME TO GSM BILL ENTERY </h1>
<form name="GsmMeter"  action="GsmMeter1.jsp" method="get" onSubmit=" return f1()">
<p align="center">
<pre>
                                    PHONE NO: <input type="text" name="pno" required> 
                
                         GSM USAGE IN SECOND: <input type="text" name="Gsm_Usage" required> 
                              
                                      DATE  : <input type="date" name="date" required> dd/mm/yyyy                     
         
                                              <input type="submit" name="submit" value="SUBMIT">  <form> <input type="button" value="BACK" onclick="window.location.href='http://localhost:8080/login/link.jsp'" />
                                                	           
                          			  
                    
                    </pre>
                    </p>
                    </form>
                    

</body>
</html>