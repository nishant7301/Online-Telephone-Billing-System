<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1 align="center"><font color="">ENTER YOUR PHONE NUMBER TO SEE  YOUR BILL</font></h1>
<form name="generatebill1"  action="generatebill.jsp" method="post"  onsubmit="return check()">
<p align="center">
<pre>
                                      	
                          			  
                                                   phone number    <input type="pno" name="pno" required >				
	   
		                                                    <input type="submit" name="submit" value="SUBMIT"><form> <input type="button" value="BACK" onclick="window.location.href='http://localhost:8080/login/index1.jsp'" /> </form> 
			
		      
							
							
						
							
							</p>
							
							
							</form>

</body>
</html>