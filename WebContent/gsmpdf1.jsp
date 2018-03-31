<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Gsm bill</title>
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
</head>
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
body
{
background-image: url("m1.jpg");
    background-color: #cccccc;
}
</style>
<script>
function myFunction() {
    window.print();
}
</script>
<body>
<h2>GSM Bill Details:-</h2>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<div id="content">
<%
HttpSession ses=request.getSession(false);  
String uname = (String)ses.getAttribute("uname");
String pno1=request.getParameter("pno");
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/nishant?autoReconnect=true&useSSL=false",
"root","root"); 
Statement st= con.createStatement();
ResultSet rs=st.executeQuery("select * from cutomer_record where uname='"+uname+"' ");
String name=null;
String address=null;
int Bill=0;
String pno;
float gsm_money=0.0f;

if(rs.next())
{
	Bill=rs.getInt("bill_no");
	Statement st2= con.createStatement();
	ResultSet rs2=st2.executeQuery("select * from cutomer_record where pno='"+pno1+"' and uname='"+uname+"'");
	if(rs2.next())
	{
	name=rs2.getString("cname");
	address=rs2.getString("address");
	Statement st1= con.createStatement();
	ResultSet rs3=st.executeQuery("select * from gsmbill where pno='"+pno1+"' and uname='"+uname+"'");
	if(rs3.next())
	{
		gsm_money=rs3.getFloat("Gsm_money");
	}
	
	}
	else
	{
		out.println("Invalid Mobile Number");
	}
	
}
else
{
		response.sendRedirect("message.jsp"); 

}

%>
<div class ="col-sm-4"></div>
 
<div class ="col-sm-7" style = "margin:2px;border-radius:10px;">
<h3 align="center" style="background-color:white;padding:2px;margin:3px;border-radius:10px" >  BILL NUMBER : <% out.print(Bill);%></h3>
<h3 align="center" style="background-color:white;padding:2px;margin:3px;border-radius:10px" >  User name : <% out.print(uname);%></h3>
<h3 align="center" style="background-color:white;padding:2px;margin:3px;border-radius:10px" >  Customer Name : <% out.print(name);%></h3>
<h3 align="center" style="background-color:white;padding:2px;margin:3px;border-radius:10px" >  ADDRESS : <% out.print(address);%></h3>
<h3 align="center" style="background-color:white;padding:2px;margin:3px;border-radius:10px">   GSM MONEY : <% out.print(gsm_money);%></h3>

<br>
<br>
</div>
</div>
<center>
<div id="editor"></div>
<button id="btn">DOWNLOAD PDF</button>

<button onclick="myFunction()">Print Bill Details </button>
<br>
<br>
<form><input type="button" value="USER MENU"  onclick="window.location.href='http://localhost:8080/login/index1.jsp'" /></form> 
<br></br>

<form><font><input type="button" value="BACK" onclick="window.location.href='http://localhost:8080/login/gsmpdf.jsp'" /> </font></form>
</center>
</body>
</html>