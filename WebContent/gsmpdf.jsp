<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
body  {
    background-image: url("m1.jpg");

</style>
<script type="text/javascript">
function check()
{
variable pno=document.forms["gsmpdf"]["pno"];

if(isNaN(document.gsmpdf.pno.value))
{alert("Phone number should contain numerics only");
return false;
}
}
</script>
<body>
<h2 align="center">GENERATE GSM PDF </h2>

<form name="gsmpdf"  action="gsmpdf1.jsp" method="post" onsubmit="return check()">
          <p align="center">
          <pre>
                                                                        PHONE NUMBER  <input type="text" name="pno" required> 
               
                                                                                             <input type="submit" value="submit">  <input type="button" value="BACK" onclick="window.location.href='http://localhost:8080/login/index1.jsp'" />	
               </pre>
</form>

</body>
</html>