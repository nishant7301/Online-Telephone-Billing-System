<html>
<script>
function f()
{
	var uname = document.forms["customer_record1"]["uname"];
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
var x=(document.customer_record1.dob.value.substring(0,2));
var y=(document.customer_record1.dob.value.substring(3,5));
var z=(document.customer_record1.dob.value.substring(6,document.customer_record1.dob.value.length));
if(x<0||x>31||y<0||y>12||z<1890)
{
alert("enter valid date");
 return false;
}
switch(y)
{
 case "04": 
case "06":
 case "09": 
case "11":  
if(x==31)
{ 
alert("enter valid day");
 return false;
}
break;
case "02":
if((z%400!=0)&&(z%4!=0||z%100!=0)&&(x>28))
{
alert("its not a leap year ");
 return false;
}
else
{
if(x>29)
{ 
alert("enter valid day");
 return false;
}
}
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

}
</script>



<body align="center" bgcolor="#808080">
         <h2 align="center">NEW    CONNECTION     PAGE</h2>
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
		    
	  CONNECTION  DATE  : <input type="date" name="date" required> 
	  
	               DOB:  <input type="date" name="dob" required>
		
	            GENDER   <input type="radio" name="m" value="Male" checked="true"/> Male  <input type="radio" name="m" value="Female"/>Female  
					   
					             <input type="submit" name="submit" value="SUBMIT">
					   
				             <form> <input type="button" value="BACK" onclick="window.location.href='http://localhost:8080/login/index1.jsp'" /> </form> 
			
																

	
</pre>
																				
																				  	

                                                                                  

</p>
</form>
</body>
</html>

