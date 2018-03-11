<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <!-- Theme Made By www.w3schools.com - No Copyright -->
  <title>Bootstrap Theme Simply Me</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Bill payment</title>
<script type="text/javascript">
f1()
{
	var bnum = document.forms["payBill1"]["bnum"];
	var amt= document.forms["payBill1"]["amt"];
	var cardno = document.forms["payBill1"]["cardno"];
	if(isNaN(document.payBill1.amt.value))
	{alert("amount should be contain numerics only");
	return false;
	}
	if(isNaN(document.payBill1.cardno.value))
	{alert("card number should be contain numerics only");
	return false;
	}

	}

</script>
</head>
<body>
<center><font color="RED"><h1>WELCOME TO BILL PAYMENT </h1></center></font>
<form name="postBill1"  action="PostPaidBilling.jsp" method="get" onsubmit="return f1()">
<p align="center">
<pre>

 


                                                                Bill Number  <input type="text" name="bnum" required>

                                                                

                                                                Card no      <input type="password" name="cardno" required >
                                                                <%
                                                                HttpSession ses=request.getSession(false);  
                                                       		    String user = (String)ses.getAttribute("user");
                                                       		 
                                                       		    HttpSession ses1=request.getSession();  
                                                       		    ses1.setAttribute("user", user);
                                                       		    
                                                                 %>
					 
					                                              <input type="submit" name="submit" value="SUBMIT">
					
					                                    <form> <input type="button" value="BACK" onclick="window.location.href='http://localhost:8080/login/index1.jsp'" /> 
		
</pre>                                                                                

</p>
</form>
                                                     
			
			</center>
</body>
</html>