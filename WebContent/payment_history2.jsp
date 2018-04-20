<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>payment History</title>
</head>
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
body
{
background-image:url("m1.jpg");

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
<body>
<h3><font color="red">Payment History of User :</font></h3>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<div id="content">
<%
HttpSession ses = request.getSession(false);
String uname = (String)ses.getAttribute("uname");
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/nishant?autoReconnect=true&useSSL=false",
"root","root"); 
Statement st= con.createStatement();  
Statement st2= con.createStatement();
Statement st3= con.createStatement();
ResultSet n3=st.executeQuery("select * from cutomer_record where uname='"+uname+"'");	
String pno1=null;
String email=null;
String name=null;
if(n3.next())
{
	ResultSet n2=st.executeQuery("select * from cutomer_record where uname='"+uname+"'");	
	
while(n2.next())
{
	pno1=n2.getString("pno");
	name=n2.getString("cname");
}
ResultSet n4=st3.executeQuery("select * from registration where uname='"+uname+"'");	
while(n4.next())
{
	email=n4.getString("email");
}
%>
<%;
  ResultSet rs=st.executeQuery("select * from payment_history ");
  String Bill_type =null;
  String mode = null;
  float amount = 0.0f;
  %>
<br>
<br>
   <table class = "table table-condensed">
	   <tr class = "danger">
	     <th class = "danger">
	       Customer Name
	      </th>
	      <th>
	     
	        Bill Type
	      </th>
	      <th>
	       Payment Mode
	      </th>
	      <th>
	      Amount Payed
	      </th>
	      <th>
	       Phone Number
	      </th>
	      <th>
	       Email Id
	      </th>
	   </tr>
	   <%
  while(rs.next())
  {
	  
	  Bill_type= rs.getString("Bill_type");
	  mode= rs.getString("mode");
	  amount= rs.getFloat("amount");
	  %>
	 <tr class = "success">
	 <td><% out.println(name);%></td>
	   <td><% out.println(Bill_type);%></td>
	   <td><% out.println(mode);%></td>
	   <td><% out.println(amount);%></td>
	  <td><% out.println(pno1);%></td>
	   <td><% out.println(email);%></td>
	  </tr>
	  <%
  }
  }
 %>
  </table>
  <center>
 <input type="button" value="BACK" onclick="window.location.href='http://localhost:8080/login/link.jsp'" /> 
 
 <font color="green"><button onclick="myFunction()">Print Bill Details </button></font>
 
 </center>
</div>			
</body>
</html>