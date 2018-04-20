<html>
<meta charset="ISO-8859-1">
<title>User Page</title>
<script>
function f()
{

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
function myFunction() {
    var x = document.getElementById("myInput");
    if (x.type === "password") {
        x.type = "text";
    } else {
        x.type = "password";
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
    background-color: green;
    color: white;
    
}
 input[type=password] {
    width: 25%;
    padding: 10px 18px;
    margin: 8px 0;
    box-sizing: border-box;
    border: none;
    background-color: grey;
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
    width: 10%;
    padding: 10px 18px;
    margin: 8px 0;
    box-sizing: border-box;
    border: none;
    background-color: red;
    color: white;
    
}
</style>


<body>
<marquee style="background:RED" behavior="alternate"><h2>WELCOME TO NEW CONNECTION</h2></marquee>
<form name="customer_record1" action="customer_record.jsp "method="post" onsubmit="return f()">
 <input type="button" value="BACK" onclick="window.location.href='http://localhost:8080/login/index1.jsp'" /> <h3 align="center">ADD NEW CONNECTION HERE:-</h3>
<pre>	                                                                            
                                                                                   <label for="pno">PHONE NUMBER:</label>
                                                                                   <input type="text" name="pno" required>											
                                                                                   <label for="cname">CUSTOMER NAME:</label>
                                                                                   <input type="text" name="cname" required>
                                                                                   <label for="occupation">OCCUPATION:</label>
                                                                                   <input type="text" name="occupation" required>
                                                                                   <label for="address">ADDRESS:</label>
                                                                                   <input type="text" name="address" required>
                                                                                   <label for="pin">PIN:</label>
                                                                                   <input type="text" name="pin" required>
                                                                                   <label for="baccount">BANK ACCOUNT:</label>
                                                                                   <input type="text" name="baccount" required>
                                                                                   <label for="cardno">CARD NUMBER:</label>
                                                                                   <input type="password" name="cardno" id="myInput" required>  <input type="checkbox" onclick="myFunction()">Show card Number			
	                                                                           <label for="amount">AMOUNT:</label>
	                                                                           <input type="text" name="amount" required>
	                                                                           <label for="date">CONNECTION DATE:</label>
	                                                                           <input type="date" name="date" required> 
	                                                                           <label for="date">DATE BIRTH:</label>
	                                                                           <input type="date" name="dob" required>
	                                                                           <label for="m">GENDER:</label>
	                                                                           <input type="radio" name="m" value="Male" checked> Male  <input type="radio" name="m" value="Female"/>Female  
					                                           <input type="submit" name="submit" value="SUBMIT">  <button type="reset" value="Reset">Reset</button>
					                                                                           
		             <%
		 HttpSession ses=request.getSession(false);  
		 String user = (String)ses.getAttribute("user");
		 
		 HttpSession ses1=request.getSession();  
		 ses1.setAttribute("user", user);
		 
 		  %>	
	   
				                                                                                    
			  
																

	
</pre>
																				
																				  	

                                                                               
</form>
</body>
</html>

