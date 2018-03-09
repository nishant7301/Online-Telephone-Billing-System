<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>payment page</title>
</head>
<body>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
HttpSession ses=request.getSession(false);  
String user = (String)ses.getAttribute("uname");

float amount_from_browsePlan = Float.parseFloat(request.getParameter("browse_plan_money").trim());



Class.forName("com.mysql.jdbc.Driver");
String pno="";
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/nishant?autoReconnect=true&useSSL=false","root","root"); 
Statement st= con.createStatement();
ResultSet rs1=st.executeQuery("select * from cutomer_record where uname='"+user+"'");
float amount_from_customer = 0.0f;
try{
	while(rs1.next())
	{
		amount_from_customer = rs1.getFloat("Amount");
   }
} catch(Exception e ){
	out.println("YOU HAVE NOT TAKEN CONNECTION");
}


// Due Recharge Cong=firmateon not done 
if(amount_from_browsePlan <= amount_from_customer )
{
	amount_from_customer = amount_from_customer - amount_from_browsePlan;
     int i = st.executeUpdate("update cutomer_record set Amount = "+ amount_from_customer + " where uname = '" + user  + "'");
     if(i == 1) out.println("Recharge Succes !!");
     else out.println("Recharge Failed !!");
}
else
{
	out.print("You don't have sufficient Money in your wallet");
}



%>
<br>
</br>
                             <form> <input type="button" value="BACK" onclick="window.location.href='http://localhost:8080/login/index1.jsp'" /> </form> 
			
</body>
</html>