<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<script type="text/javascript">
function check()
{
	var pno= document.forms["generatebill1"]["pno"];
	if(document.generatebill1.pno.value.length<10)
	{ alert("number should be atlest  10 digit");
     return false;
	}
	if(document.generatebill1.pno.value.length>11)
	{ alert("number  should not  be greater than 11 digit");
     return false;
	}
	 if(isNaN(document.generatebill1.pno.value))
		{alert("Phone number should contain numerics only");
		return false;
		}
}
</script>
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
  input[type=button] {
    width: 10%;
    padding: 10px 18px;
    margin: 8px 0;
    box-sizing: border-box;
    border: none;
    background-color: RED;
    color: white;
    
}

</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>PDF bill generation</title>
</head>
<body>
<h1 align="center"><font>ENTER YOUR PHONE NUMBER TO SEE  YOUR BILL</font></h1>
<form name="generatebill1"  action="generatebill.jsp" method="post"  onsubmit="return check()">
<p>
<pre>
                                      	                 <label for="pno">PHONE NUMBER:</label>
                                      	                 <input type="text" name="pno" required>				
                                      	                 <input type="submit" name="submit" value="SUBMIT">         <input type="button" value="BACK" onclick="window.location.href='http://localhost:8080/login/index1.jsp'" />			
		      
							
							
						
							
						
							</pre>
							
							</form>

</body>
</html>