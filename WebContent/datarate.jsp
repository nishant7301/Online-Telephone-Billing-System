<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>DATA RATE ENTERY</title>
<script type="text/javascript">
function f1()
{
	var data_id = document.forms["Datarate1"]["data_id"];
	var Gsm_rate= document.forms["Datarate1"]["Gsm_rate"];
	var Wcdma_rate= document.forms["Datarate1"]["Wcdma_rate"];
	if(isNaN(document.datarate.Gsm_rate.value))
	{alert("GSM RATE should be numerics only");
	return false;
	}
	if(isNaN(document.datarate.Wcdma_rate.value))
	{alert("WCDMA RATE should be numerics only");
	return false;
	}
	
	
	
	}


</script>
</head>

<body bgcolor="#808080">
<h1 align="center">WLCCOME TO DATA RATE ENTERY </h1>
<form name="DataRate"  action="Datarate1.jsp" method="get" onSubmit=" return f1()">
<p align="center">
<pre>

                                        DATA ID    :   <input type="data_id" name="data_id" required>                    
         
                                        GSM RATE   :   <input type="Gsm_rate" name="Gsm_rate" required> KB/S
                                       
                                        WCDMA RATE :   <input type="Wcdma_rate" name="Wcdma_rate" required> KB/S
                              
                                                       <input type="submit" name="submit" value="SUBMIT">  <form> <input type="button" value="BACK" onclick="window.location.href='http://localhost:8080/login/link.jsp'" />
                                                	           
                          			  
                    
                    </pre>
                    </p>
                    </form>
                    

</body>
</html>