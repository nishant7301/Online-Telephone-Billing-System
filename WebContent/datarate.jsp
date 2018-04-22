<%@ page language="java" contentType="text/html; charset=ISO-8859-1"pageEncoding="ISO-8859-1"%>
<html>
<head>
<title>DATA RATE ENTRY</title>
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
    background-image: url("hd1.jpg");
    background-color: #cccccc;
     height: 50%; 

    /* Center and scale the image nicely */
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
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
<body>
<h1 align="center">WLCCOME TO DATA RATE ENTRY </h1>
<form name="DataRate"  action="Datarate1.jsp" method="post" onSubmit=" return f1()">
<p align="center">
<pre>
                                                                           <label for="data_id">DATA ID:</label>
                                                                           <input type="text" name="data_id" required>                    
                                                                           <label for="Gsm_rate">GSM RATE:</label>
                                                                           <input type="text" name="Gsm_rate" required>Paise/KB
                                                                           <label for="Wcdma_rate">WCDMA RATE</label>
                                                                           <input type="text" name="Wcdma_rate" required>Paise/KB
                                                                           <input type="submit" name="submit" value="SUBMIT">   <input type="button" value="BACK" onclick="window.location.href='http://localhost:8080/login/link.jsp'" />
                                                	                           <strong><a href="forget_callid1.jsp" class="button">FORGET DATA_ID?</a>	</strong>
                    
                    </pre>
                   
                    </form>
                    

</body>
</html>