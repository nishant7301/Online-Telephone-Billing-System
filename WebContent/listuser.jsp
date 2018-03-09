<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>user list</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>


<body>
<div class = "colsm-8">
</div>
<marquee behavior="alternate" style=background:RED><h1>Active User list</h1></marquee>
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
  <th>DUE AMOUNT</th>
  
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
		 Statement st2= con.createStatement();
		 ResultSet rs1=st2.executeQuery("select * from bill_record ");
		 String due = "0";		 
		 while(rs1.next())
		 { 
			 String uname2 = rs1.getString("uname");
			 if(uname2.equals(user))
			 {
			    due = rs1.getString("total");	 
			 }
		 }
		 ResultSet rs2=st2.executeQuery("select * from registration");
		 while(rs2.next())
		 {
			 String uname3=rs2.getString("uname");
			 if(uname3.equals(user)){
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
    <td><%out.println(due); %></td>
  </tr>

<%
	}

%>
</table>
<form> <input type="button" value="BACK" onclick="window.location.href='http://localhost:8080/login/link.jsp'" /> </form>

</body>
</html>