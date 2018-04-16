<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Generate Bill Number</title>
</head>
<style>
.button {
    background-color: #4CAF50;
    border: none;
    color: white;
    padding: 5px 8px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 10px;
    margin: 1px 1px;
    cursor: pointer;
}

</style>
<body>
      <%
		 HttpSession ses=request.getSession(false);  
		 String user = (String)ses.getAttribute("user");
		 
		 HttpSession ses1=request.getSession();  
		 ses1.setAttribute("user", user);
		 
 		  %>	
					             
				                                                    
				                                                    <a href = "RandomBillNumber.jsp" class="button">Generate Your Bill Number.</a>	  
				                                                     
				                                                    <input type="button" value="BACK" onclick="window.location.href='http://localhost:8080/login/index1.jsp'" /> 

</body>
</html>