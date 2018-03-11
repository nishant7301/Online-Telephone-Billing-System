<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Bootstrap Theme Simply Me</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>generate bill</title>
</head>
<script>
function myFunction(){
	print();
	       
}

</script>
<style>
#pdf_button{
font-color:#ffffff;
color:#ffffff;
}
#button1{
font-color:#ffffff;
color:#ffffff;
}
#button2{
font-color:#ffffff;
color:#ffffff;
}

</style>
<body bgcolor="#808080">
<h1>Bill Details:-</h1>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>

<div class ="col-sm-3">
<%
HttpSession ses=request.getSession(false);  
String user = (String)ses.getAttribute("uname");
String pno=request.getParameter("pno");
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/nishant?autoReconnect=true&useSSL=false","root","root"); 
Statement st= con.createStatement();

	ResultSet rs2=st.executeQuery("select * from bill_record where pno='"+pno+"' and uname='"+user+"'");
if(rs2.next())
{
	int k=1;
for( k=1;k<=7;k++)
{
	switch(k){
	 case 1:
	        out.println("<br/><centre>user name:</centre>");
	        out.println(rs2.getString(k));
	         out.println("<br/>");
	        out.println("<br/>");
	        break;
	 case 2:
		   out.println("<br/>phone number:");
		   out.println(rs2.getString(k));
		   out.println("<br/>");
		   out.println("<br/>");
		   break;
	 case 3:
	    		out.println("<br/>address:");
	    		out.println(rs2.getString(k));
	    		out.println("<br/>");
	    		out.println("<br/>");
	    		break;
	 case 4:
 		out.println("<br/>local voice call Rs:");
 		out.println(rs2.getString(k));
 		out.println("<br/>");
 		out.println("<br/>");
 		break;
	 case 5:
 		out.println("<br/>Std voice call Rs:");
 		out.println(rs2.getString(k));
 		out.println("<br/>");
 		out.println("<br/>");
 		break;
	 case 6:
 		out.println("<br/>Isd voice call Rs:");
 		out.println(rs2.getString(k));
 		out.println("<br/>");
 		out.println("<br/>");
 		break;
	 case 7:
	 		out.println("<br/>Total voice call Rs:");
	 		out.println(rs2.getString(k));
	 		out.println("<br/>");
	 		out.println("<br/>");
	 		break;
	}
}
	
}
else
{
	out.println("Invalid Mobile number");
}
Statement st1= con.createStatement();
ResultSet rs3=st.executeQuery("select * from gsmbill where pno='"+pno+"' and uname='"+user+"'");
if(rs3.next())
{
int n=1;
for( n=1;n<=3;n++)
{
	switch(n){
	 case 3:
	        out.println("<br/>Gsm Money:");
	        out.println(rs3.getString(n));
	         out.println("<br/>");
	        out.println("<br/>");
	        break;
	}
}

}
Statement st2= con.createStatement();
ResultSet rs4=st.executeQuery("select * from wcdmabill where pno='"+pno+"' and uname='"+user+"'");
if(rs4.next())
{
int i=1;
for( i=1;i<=3;i++)
{
	switch(i){
	 case 3:
	        out.println("<br/>WCDMA Money:");
	        out.println(rs4.getString(i));
	         out.println("<br/>");
	        out.println("<br/>");
	        break;
	}
}
}
Statement st0= con.createStatement();
ResultSet rs7=st0.executeQuery("select * from call_rate");
if(rs7.next()){
double m_rental=rs7.getDouble("M_Rental");
out.println("<br/>MONTHLY RENTAL:");
out.println(m_rental);
}
out.println("<br/>TOTAL:");
%>
</div>
<br></br>
<button id = "pdf_button" onclick="myFunction()"><font color="red"> Generate PDF</font> </button><br></br>
<form><input type="button" value="USER MENU"  onclick="window.location.href='http://localhost:8080/login/index1.jsp'" /></form> 
<br></br>

<form><font><input type="button" value="BACK" onclick="window.location.href='http://localhost:8080/login/generatebill1.jsp'" /> </font></form> 
							

</body>
</html>