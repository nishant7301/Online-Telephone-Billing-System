<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<script>
  function check()
    {
	    var em1= document.forms["email"]["em1"];
		var em2 = document.forms["email"]["em2"];
		if(!(document.email.em1.value==document.email.em2.value))
		{
			alert("Enter email correctly");
			return false;
		}

	}

</script>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>email update</title>
</head>
<style>
body  {
    background-image: url("m1.jpg");
    background-color: #cccccc;
}
</style>
<body>
<h2 align="center">Welcome To Email Update</h2>
<form name=email action="email1.jsp" method="post" onsubmit="return check()">
<p align="center">
<pre>
                                                                     Old Email id <input type="email" name="email" required>
        
                                                                     new Email id <input type="email" name="em1" required>
        
                                                                 confirm Email id <input type="email" name="em2" required>
                     
                                                                                  <input type="submit" name="submit"> <input type="button" value="BACK" onclick="window.location.href='http://localhost:8080/login/index1.jsp'" />  
                         
</pre>


</form>
                                           
</body>
</html>