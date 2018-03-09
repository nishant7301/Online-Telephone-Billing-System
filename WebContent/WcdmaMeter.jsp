<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script type="text/javascript">
function f1()
{
	var pno = document.forms["WcdmaMeter1"]["pno"];
	var Gsm_Usage = document.forms["WcdmaMeter1"]["Wcdma_Usage"];
	if(document.WcdmaMeter1.pno.value.length<10)
	{ alert(" phone number should be atleast 10 digit");
	return false;
	}
	if(document.WcdmaMeter1.pno.value.length>12)
	{ alert("phone number should be maximum 12 digit");
	return false;
	}
	if(isNaN(document.WcdmaMeter1.pno.value))
	{alert("Phone number should contain numerics only");
	return false;
	}
	if(isNaN(document.WcdmaMeter1.Wcdma_Usage.value))
	{alert("WCDMA ENTERY  should be numerics only");
	return false;
	}
	
	
	}



</script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>WCDMA rate entry </title>
</head>
<body bgcolor="#808080">
<h1 align="center">WELCOME TO WCDMA BILL ENTERY </h1>
<form name="WcdmaMeter"  action="WcdmaMeter1.jsp" method="get" onSubmit=" return f1()">
<p align="center">
<pre>
                                     phone no <input type="text" name="pno" required> 
                
                        WCDMA USAGE IN SECOND <input type="text" name="Wcdma_Usage" required> 
                              
                                      DATE    <input type="date" name="date" required>                      
         
                                              <input type="submit" name="submit" value="SUBMIT">  <form> <input type="button" value="BACK" onclick="window.location.href='http://localhost:8080/login/link.jsp'" />
                                                	           
                          			  
                    
                    </pre>
                    </p>
                    </form>
                    

</body>
</html>