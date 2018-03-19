<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>WCDMA Payment</title>
<script type="text/javascript">
 function f1()
{
	var bnum = document.forms["wcdmapayment1"]["bnum"];
	var cardno = document.forms["wcdmapayment1"]["cardno"];
	
	if(isNaN(document.wcdmapayment1.bnum.value))
	{
	alert("Bill Number should be contain numerics only");
	return false;
	}
	
	if(isNaN(document.wcdmapayment1.cardno.value))
	{
	alert("card number should be contain numerics only");
	return false;
	}
	
	if(!(document.wcdmapayment1.cardno.value.length==16))
	{ 
		alert("card number should be 16 digit");
	return false;
	}
	
	}
</script>

<style type="text/css">
body  {
    background-image: url("m1.jpg");
    background-color: #cccccc;
}
</style>
</head>
<body>
<h1 align="center"> WELCOME TO WCDMA BILL PAYMENT </h1>

<form name="wcdmapayment1"  action="wcdmapayment.jsp" method="post" onsubmit=" return f1()">
<p>
<pre>

 


                                                                Bill Number  <input type="text" name="bnum" required>

                                                                Card no      <input type="password" name="cardno" required >
                
                                                                <%
                                                                HttpSession ses=request.getSession(false);  
                                                       		    String user = (String)ses.getAttribute("user");
                                                       		 
                                                       		    HttpSession ses1=request.getSession();  
                                                       		    ses1.setAttribute("user", user);
                                                       		    
                                                                 %>
					                                       <input type="submit" name="submit" value="SUBMIT">    <input type="button" value="BACK" onclick="window.location.href='http://localhost:8080/login/index1.jsp'" /> 
		
</pre>                                                                                
</form>

</body>
</html>