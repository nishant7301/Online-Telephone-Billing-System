<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<style>
body  {
    background-image: url("m1.jpg");
    background-color: #cccccc;
}
.table {
  overflow: hidden;
  background-color: red;
}

.button {
    background-color: #4CAF50;
    border: none;
    color: white;
    padding: 10px 20px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 10px;
    margin: 3px 1.5px;
    cursor: pointer;
}
  input[type=button] {
    width: 10%;
    padding: 10px 18px;
    margin: 8px 0;
    box-sizing: border-box;
    border: none;
    background-color: green;
    color: white;
    
}
  
</style>
</head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>user list</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<body>
<input type="button" value="BACK" onclick="window.location.href='http://localhost:8080/login/link.jsp'" />         <h5 align="right"> User id <input type="text" placeholder="Search.."><button type="submit">Submit</button></h5>  <h1 align="center"><font color="RED">Active User list</font></h1> 
<%@ page import="java.sql.*"%>
	<%@ page import="javax.sql.*"%> 
<%
HttpSession ses = request.getSession(false);
String uname = (String)ses.getAttribute("uname");
String pwd = (String)ses.getAttribute("password");
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/nishant?autoReconnect=true&useSSL=false","root","root"); 
Statement st= con.createStatement();
Statement st1= con.createStatement();
ResultSet rs=st.executeQuery("select * from cutomer_record");
String c_name = null;
String mobile = null;
String occupation = null;
String gender = null;
String dob = null;
String bank_account = null;
String address = null;
String pin = null;
String email=null;
String Bill_no=null;


%>

<table class="table">
<tr class="thead-dark">
  <th >User id</th>
  <th>USER NAME</th>
  <th>MOBILE NUMBER</th>
  <th>GENDER</th>
  <th>ADDRESS</th> 
  <th>OCCUPATION</th>
  <th>EMAIL</th>
  <th>BILL NUMBER</th>
  <th>VOICE CALL DUE</th>
  <th>GSM DUE</th>
  <th>WCDMA DUE</th>
  <th>VOICE METER ENTERY</th>
  
</tr>
<% 
while(rs.next())
{
	String user = rs.getString("uname");
    c_name = rs.getString("cname");
    mobile = rs.getString("pno");
    occupation = rs.getString("occupation");
     gender = rs.getString("gender");
		 dob = rs.getString("dob");
		 bank_account = rs.getString("baccount");
		 address = rs.getString("address");
		 pin = rs.getString("pin");
		 Bill_no=rs.getString("bill_no");
		 
		 Statement st2= con.createStatement();
		 ResultSet rs1=st2.executeQuery("select * from bill_record ");
		 String due = "0.0";	
		 
		 while(rs1.next())
		 { 
			 String uname2 = rs1.getString("uname");
			 if(uname2.equals(user))
			 {
			    due = rs1.getString("total");	 
			 }
		 }
		 String gsm_due="0.0";
		 ResultSet rs3=st2.executeQuery("select * from gsmbill where uname='"+user+"' ");
		 while(rs3.next())
		 { 
			 String uname3 = rs3.getString("uname");
			 if(uname3.equals(user))
			 {
			    gsm_due = rs3.getString("Gsm_money");	 
			 }
		 }
		 String wcdma_due ="0.0";
		 
		 ResultSet rs4=st2.executeQuery("select * from wcdmabill where uname='"+user+"' ");
		 while(rs4.next())
		 { 
			 String uname4 = rs4.getString("uname");
			 if(uname4.equals(user))
			 {
			    wcdma_due = rs4.getString("Wcdma_money");	 
			 }
		 }

		 ResultSet rs2=st2.executeQuery("select * from registration");
		 while(rs2.next())
		 {
			 String uname5=rs2.getString("uname");
			 if(uname5.equals(user)){
			email=rs2.getString("email");
			 }
		 }
		
		%>
		

  <tr class="success">
   <td><% out.println(user);%></td>
    <td><% out.println(c_name);%></td>
    <td><%out.println(mobile); %></td> 
    <td><%out.println(gender); %></td> 
    <td><%out.println(address); %></td>
    <td><%out.println(occupation); %></td>
     <td><%out.println(email); %></td>
     <td><%out.println(Bill_no); %></td>
    <td><%out.println(due); %></td>
    <td><%out.println(gsm_due); %></td>
    <td><%out.println(wcdma_due); %></td>
    <td><a href="meter1.jsp" class="button">click Here</a></td>
  </tr>

<%
	}

%>
</table>

</body>
</html>