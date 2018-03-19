<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
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
<style>
body  {
    background-image: url("m1.jpg");
    background-color: #cccccc;
}
</style>
<body>
<h1 align="center">WLCCOME TO DATA RATE ENTERY </h1>
<form name="DataRate"  action="Datarate1.jsp" method="get" onSubmit=" return f1()">
<p align="center">
<pre>

                                                                        DATA ID    :   <input type="text" name="data_id" required>                    
         
                                                                        GSM RATE   :   <input type="text" name="Gsm_rate" required> KB/paise
                                       
                                                                        WCDMA RATE :   <input type="text" name="Wcdma_rate" required> KB/paise
                              
                                                                                       <input type="submit" name="submit" value="SUBMIT">   <input type="button" value="BACK" onclick="window.location.href='http://localhost:8080/login/link.jsp'" />
                                                	           
                          			  
                    
                    </pre>
                   
                    </form>
                    

</body>
</html>