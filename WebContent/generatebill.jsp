<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jspdf/0.9.0rc1/jspdf.min.js"></script>
<script type="text/javascript">
var doc = new jsPDF();
var specialElementHandlers = {
'#editor': function (element, renderer) {
return true;
}
};

$(document).ready(function() {
$('#btn').click(function () {
doc.fromHTML($('#content').html(), 60, 30, {
'width': 50,
'elementHandlers': specialElementHandlers
});
doc.save('sample-content.pdf');
});
});
</script>
<title>Bootstrap Theme Simply Me</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>generate bill</title>
</head>
<script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jspdf/0.9.0rc1/jspdf.min.js"></script>
<script>
function myFunction() {
    window.print();
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
body  {
    background-image: url("m1.jpg");
    background-color: #cccccc;
}

</style>
<body bgcolor="#808080">
<h1>Bill Details:-</h1>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<div id="content">
<div class ="col-sm-3">
<%
HttpSession ses=request.getSession(false);  
String user = (String)ses.getAttribute("uname");
String pno1=request.getParameter("pno");
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/nishant?autoReconnect=true&useSSL=false","root","root"); 
Statement st= con.createStatement();

ResultSet r=st.executeQuery("select * from cutomer_record where uname='"+user+"'");
	if(r.next())
	{
		String bill_no=r.getString("bill_no");
		out.println("Bill Number :"+bill_no);
		out.println("<br/>");
		out.println("<br/>");
		
		ResultSet rs2=st.executeQuery("select * from bill_record where pno='"+pno1+"' and uname='"+user+"'");

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
ResultSet rs3=st.executeQuery("select * from gsmbill where pno='"+pno1+"' and uname='"+user+"'");
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
ResultSet rs4=st.executeQuery("select * from wcdmabill where pno='"+pno1+"' and uname='"+user+"'");
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
	}
	else{
		response.sendRedirect("message.jsp"); 
	}
%>
</div>
</div>
<div id="editor"></div>
<button id="btn">DOWNLOAD PDF</button>
<br>
<br>
<form><input type="button" value="USER MENU"  onclick="window.location.href='http://localhost:8080/login/index1.jsp'" /></form> 
<br></br>

<form><font><input type="button" value="BACK" onclick="window.location.href='http://localhost:8080/login/generatebill1.jsp'" /> </font></form> 
		<br>
		<button onclick="myFunction()">Print Bill Details </button>
							

</body>
</html>