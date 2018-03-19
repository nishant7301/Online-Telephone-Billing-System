<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</head>
<style>
body  {
    background-image: url("m1.jpg");
    background-color: #cccccc;
}


</style>
<body>
<%@ page import="java.sql.*"%>
	<%@ page import="javax.sql.*"%>
	<%
	String uname=request.getParameter("uname");
	Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/nishant?autoReconnect=true&useSSL=false","root","root"); 
Statement st= con.createStatement(); 
ResultSet rs2=st.executeQuery("select * from cutomer_record where uname='"+uname+"'");
String user=null;
String c_name=null;
String pno=null;
String address=null;
String gender=null;
String dob=null;
int pin=0;
String date=null;
String occupation=null;
String baccount=null;
String bill_no=null;
%>
<table class="table">
<tr class="thead-dark">
  <th >User id</th>
  <th>USER NAME</th>
  <th>MOBILE NUMBER</th>
  <th>GENDER</th>
  <th>ADDRESS</th> 
  <th>OCCUPATION</th>
  <th>PIN</th>
    <th>DOB</th>
  <th>BANK ACCOUNT</th>
    <th>CONNECTION DATE</th>
    <th>BILL NUMBER</th>
  
</tr>

<%
	  while(rs2.next())
	  {
			          user=rs2.getString("uname");
			         c_name=rs2.getString("cname");
			         pno=rs2.getString("pno");
			           occupation=rs2.getString("occupation");
			           gender=rs2.getString("gender");
			           dob=rs2.getString("dob");
			            address=rs2.getString("address");
			          pin=rs2.getInt("pin");
			           baccount=rs2.getString("baccount");
			            date=rs2.getString("date");
			            bill_no=rs2.getString("bill_no");
			          
		}
%>
 <tr class="success">
   <td><% out.println(user);%></td>
    <td><% out.println(c_name);%></td>
    <td><%out.println(pno); %></td> 
    <td><%out.println(gender); %></td>
    <td><%out.println(address); %></td>
     <td><%out.println(occupation); %></td>
     <td><%out.println(pin); %></td> 
    <td><%out.println(dob); %></td>
        <td><%out.println(baccount); %></td>
    <td><%out.println(date); %></td>
     <td><%out.println(bill_no); %></td>
    
    
  </tr>
</table>
<br></br>
  <form> <input type="button" value="BACK" onclick="window.location.href='http://localhost:8080/login/user.jsp'" />
  </form>
                 
</body>
</html>
