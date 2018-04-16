<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>user page</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
#sidebar{
background:royalblue;
width:200px;
height:150%;
display:block;
position:absolute;
left:-200px;
top:0px;
transition:left 0.3s linear;
}
#sidebar.visible{
left:0px;
transition:left 0.3s linear;
}
#sidebar-btn{
display:inline-block;
vertical-align:middle;
width:20px;
height:15px;
cursor:pointer;
margin:20px;
}
#sidebar-btn span{
height:1px;
background:royalblue;
margin-bottom:5px;
display:block;
}
ul{
margin:0px;
padding:0px;
}

ul li{
list-style:none;

}
ul li a{
background:royalblue;
color:#ccc;
border-bottom:1px solid #111;
display:block;
width:180px;
padding:10px;
text-decoration:none;
}
body  {
    background-image: url("images.jpg");
    background-color: #cccccc;
}
.visible a:hover {
  background-color: #ddd;
  color: black;
}
.visible a.active {
  background-color: #4CAF50;
  color: white;
}
.avatar {
    vertical-align: middle;
    width: 120px;
    height: 120px;
    border-radius: 80%;
}


</style>
</head>
<body>

<marquee style="background:FUchsia" behavior="alternate"><h3>WELCOME TO ADMIN</h3></marquee>
<div class = "visible" id="sidebar">
<ul>
        <li><a class="active" href="Admin1.jsp">ADMIN HOME</a></li>
        <li><a href="listuser.jsp">ACTIVE USER LIST</a></li>
          <li><a href="payment_history2.jsp">USER PAYMENT HISTORY</a></li>
      <li><a href="meter1.jsp">CALL METER ENTERY</a></li>
      <li><a href="GsmMeter.jsp">GSM METER ENTERY</a></li>
      <li><a href="WcdmaMeter.jsp">WCDMA METER ENTERY</a></li>
       <li><a href="call_rates1.jsp">CALL RATE ENTERY</a></li>
       <li><a href="datarate.jsp">DATA RATE ENTERY</a></li>
        <li><a href="list.jsp">EDIT USER DETAIL</a></li>
         <li><a href="adreset1.jsp">RESET PASSWORD</a></li>
          <li><a href="Admin1.jsp">LOG OUT</a></li>
</ul>
</div>



	<%@ page import="java.sql.*"%>
	<%@ page import="javax.sql.*"%>
<%
HttpSession ses=request.getSession(false);  
String uname = (String)ses.getAttribute("uname");
String pwd = (String)ses.getAttribute("password");

Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/nishant?autoReconnect=true&useSSL=false","root","root"); 
Statement st= con.createStatement();
ResultSet rs=st.executeQuery("select * from cutomer_record");
String c_name = null;
String mobile = null;
String occupation = null;
String gender = null;
String dob = null;
String bank_account = null;
String address = null;
String pin = null;
String  local= null;
String   std= null;
String   total = null;
String email = null;

while(rs.next())
{
	String user = rs.getString("uname");
	
	if(user.equals(uname))
	{
		Statement st1 = con.createStatement();
		ResultSet rs1 = st1.executeQuery("select * from registration");
		while(rs1.next())
		{
			String user2 = rs1.getString("uname");
			if(user.equals(user2))
			{
				c_name = rs.getString("cname");
				 mobile = rs.getString("pno");
				 HttpSession ses1 = request.getSession();
				 ses1.setAttribute("pno",mobile);
				 occupation = rs.getString("occupation");
				 gender = rs.getString("gender");
				 dob = rs.getString("dob");
				 bank_account = rs.getString("baccount");
				 address = rs.getString("address");
				 pin = rs.getString("pin");
				 email = rs1.getString("email");
			}
			
		}
		
	}
}
%>



<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script>
$(document).ready(function(){
	$('#sidebar-btn').click(function(){
		$('#sidebar').addClass('visible');
			});
	});
</script>
<div class ="col-lg-7"></div>
<div class="col-lg-5">
<img src="photo.jpg" alt="Avatar" class="avatar">
</div>
<div class ="col-lg-6"></div>
<div class ="col-sm-4" style = "margin:2px;border-radius:10px;">
<h3 align="left" style="background-color:white;padding:2px;margin:3px;border-radius:10px" >  ADMIN ID : <% out.print(uname);%></h3>
<h3 align="left" style="background-color:white;padding:2px;margin:3px;border-radius:10px" >  GENDER : <% out.print(gender);%></h3>
<h3 align="left" style="background-color:white;padding:2px;margin:3px;border-radius:10px" >  OCCUPATION: <% out.print(occupation);%></h3>
<h3 align="left" style="background-color:white;padding:2px;margin:3px;border-radius:10px" >  DOB : <% out.print(dob);%></h3>
<h3 align="left" style="background-color:white;padding:2px;margin:3px;border-radius:10px" >  ADDRESS : <% out.print(address);%></h3>
<h3 align="left" style="background-color:white;padding:2px;margin:3px;border-radius:10px" >  PIN:   <% out.print(pin);%></h3>
<h3 align="left" style="background-color:white;padding:2px;margin:3px;border-radius:10px" >  EMAIL : <% out.print(email);%></h3>
<br>
<br>
</div>
</body>
</html>