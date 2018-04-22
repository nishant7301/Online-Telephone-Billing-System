<html>
<meta charset="ISO-8859-1">
<title>User Page</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="http://fortawesome.github.io/Font-Awesome/assets/font-awesome/css/font-awesome.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
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
    background-image: url("hd1.jpg");
    background-color: #cccccc;
     height: 165%; 

    /* Center and scale the image nicely */
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
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
input[type=date] {
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
input[type=reset] {
    width: 10%;
    padding: 10px 18px;
    margin: 8px 0;
    box-sizing: border-box;
    border: none;
    background-color: RED;
    color: white;
    
}
</style>
<body>
<marquee style="background:RED" behavior="alternate"><h2>WELCOME TO NEW CONNECTION</h2></marquee>
<form name="customer_record1" action="customer_record.jsp "method="post" onsubmit="return f()">
 <input type="button" value="BACK" onclick="window.location.href='http://localhost:8080/login/index1.jsp'" /> <h3 align="center">ADD NEW CONNECTION HERE:-</h3>
<pre>	                                                                            
                                                                                   <label for="pno">PHONE NUMBER </label><i class="fa fa-mobile" aria-hidden="true"></i>
                                                                                   <input type="text" name="pno" required>											
                                                                                   <label for="cname">CUSTOMER NAME </label> <i class="fa fa-user" aria-hidden="true"></i>
                                                                                   <input type="text" name="cname" required>
                                                                                   <label for="occupation">OCCUPATION:</label>
                                                                                   <input type="text" name="occupation" required>
                                                                                   <label for="address">ADDRESS:</label><i class="fa fa-address-card" aria-hidden="true"></i>
                                                                                   <input type="text" name="address" required>
                                                                                   <label for="pin">PIN:</label><i class="fa fa-map-marker"></i>
                                                                                   <input type="text" name="pin" required>
                                                                                   <label for="baccount">BANK ACCOUNT:</label>
                                                                                   <input type="text" name="baccount" required>
                                                                                   <label for="cardno">CARD NUMBER:</label><i class="fa fa-credit-card" aria-hidden="true"></i>
                                                                                   <input type="password" name="cardno" id="myInput" required>  <input type="checkbox" onclick="myFunction()">Show card Number			
	                                                                           <label for="amount">AMOUNT:</label><i class="fa fa-money" aria-hidden="true"></i>
	                                                                           <input type="text" name="amount" required>
	                                                                           <label for="date">CONNECTION DATE:</label><i class="fas fa-calendar-alt"></i>
	                                                                           <input type="date" name="date" required> 
	                                                                           <label for="date">DATE BIRTH:</label><i class="fas fa-calendar-alt" aria-hidden="true"></i>
	                                                                           <input type="date" name="dob" required>
	                                                                           <label for="m">GENDER:</label>
	                                                                           <input type="radio" name="m" value="Male" checked> Male  <input type="radio" name="m" value="Female"/>Female  
					                                           <input type="submit" name="submit" value="SUBMIT">  <input type="reset" value="Reset">
					                                                                           
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

