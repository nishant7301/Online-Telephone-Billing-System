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
    background-color: #3CBC8D;
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
                                                                         <label for="pno">PHONE NUMBER:</label>
                                                                         <input type="text" name="pno" required> 
               
                                                                         <input type="submit" value="submit">       <input type="button" value="BACK" onclick="window.location.href='http://localhost:8080/login/index1.jsp'" />	
               </pre>
</form>

</body>
</html>