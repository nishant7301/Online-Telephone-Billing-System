<html>
 <title>Bootstrap Theme Simply Me</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<script>
function f()
{
	var uname = document.forms["customer_record1"]["uname"];
	var amount = document.forms["customer_record1"]["amount"];
	var cardno = document.forms["customer_record1"]["cardno"];
	var pno = document.forms["customer_record1"]["pno"];
	var occupation = document.forms["customer_record1"]["occupation"];
	var dob = document.forms["customer_record1"]["dob"];
	var  pin= document.forms["customer_record1"]["pin"];
	var baccount = document.forms["customer_record1"]["baccount"];
	var address = document.forms["customer_record1"]["address"];
	var cname = document.forms["customer_record1"]["cname"];
	var date = document.forms["customer_record1"]["date"];
	
if(document.customer_record1.uname.value.length>32)
	{ alert("User Name should not be greater than 32 character");
     return false;
	}
	
if(document.customer_record1.cname.value.length==0)
	{ alert("Name is Mandatory");
     return false;
	}
if(document.customer_record1.pno.value.length<10)
{ alert(" phone number should be atleast 10 digit");
return false;
}

if(document.customer_record1.pno.value.length>12)
{ alert("phone number should be maximum 12 digit");
return false;
}

if(isNaN(document.customer_record1.pno.value))
{alert("Phone number should contain numerics only");
return false;
}
if(document.customer_record1.occupation.value.length<1)
	{ alert("Occupation is Mandatory");
return false;
	}

if(document.customer_record1.address.value.length<1)
	{ alert("Address is Mandatory");
return false;
	}
	
if(isNaN(document.customer_record1.pin.value))
{alert("Pin number should contain numerics only");
return false;
}

if(document.customer_record1.pin.value.length>6)
	{ alert("Pin no: should  not be greater than 6 digit");
return false;
	}
	
if((document.customer_record1.pin.value.length<6))
{ 
	alert("Pin no: should be 6 digit");
return false;
}

if(isNaN(document.customer_record1.baccount.value))
{alert("Account number should contain numerics only");
return false;
}

if(!(document.customer_record1.baccount.value.length==11))
{ 
	alert("Account number should be  11 digit ");
	return false;
}
if(isNaN(document.customer_record1.cardno.value))
{alert("card number should contain numerics only");
return false;
}
if(!(document.customer_record1.cardno.value.length==16))
{ 
	alert("card number should be 16 digit");
return false;
}
if(isNaN(document.customer_record1.amount.value))
{alert("Amount should contain numerics only");
return false;
}

}
</script>



<body align="center" bgcolor="#808080">
<marquee style="background:RED" behavior="alternate"><h2>WELCOME TO NEW CONNECTION</h2></marquee>
<form name="customer_record1" action="customer_record.jsp "method="get" onsubmit="return f()">
<p align="center">
<pre>	
                                                                                    PHONE NUMBER:  <input type="text" name="pno" required>											

	               USERID: 	 <input type="text" name="uname" required>

		         Name: 	 <input type="text" name="cname" required>

		     Occupation: <input type="text" name="occupation" required>

		      ADDRESS:   <input type="text" name="address" required>

			   PIN:   <input type="text" name="pin" required>
		
		    Bank_Account: <input type="text" name="baccount" required>
		    
               CONNECTION  DATE   <input type="date" name="date" required> 
	  
	                   DOB:  <input type="date" name="dob" required>
	                 
	            card_number  <input type="password" name="cardno" required>
	            
	                 Amount  <input type="text" name="amount" required>
	                 
		
	            GENDER   <input type="radio" name="m" value="Male" checked="true"/> Male  <input type="radio" name="m" value="Female"/>Female  
					   
					             <input type="submit" name="submit" value="SUBMIT">
		<%
		 HttpSession ses=request.getSession(false);  
		 String user = (String)ses.getAttribute("user");
		 
		 HttpSession ses1=request.getSession();  
		 ses1.setAttribute("user", user);
		 
		 //out.println(user); 
 		  %>			             
					             
				<a href = "RandomBillNumber.jsp">Generate Your Bill Number.</a>	   
				<form> <input type="button" value="BACK" onclick="window.location.href='http://localhost:8080/login/index1.jsp'" /> </form> 
			  
																

	
</pre>
																				
																				  	

                                                                                  

</p>
</form>
</body>
</html>

