<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Page</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
body{
margin:0px;
padding:0px;
font-family:"Helvetica Neue",Helvetica,Arial;
}
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
#sidebar{
background:blue;
width:200px;
height:130%;
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
background:#111;
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
background:blue;
color:#ccc;
border-bottom:1px solid #111;
display:block;
width:180px;
padding:10px;
text-decoration:none;
}
.visible a:hover {
  background-color: #ddd;
  color: black;
}
.visible a.active {
  background-color: #4CAF50;
  color: white;
} 
body
{
background-image:url("images.jpg");
}
.image-upload > input
{
    display: none;
}
.avatar {
    vertical-align: middle;
    width: 120px;
    height: 120px;
    border-radius: 80%;
}
</style>
</head>
<script>
$(document).ready(function(){
	$('#sidebar-btn').click(function(){
		$('#sidebar').addClass('visible');
			});
	});
$("#image id").click(function(){
    $("#input id").click();
});
</script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<body>
		<%@ page import="java.sql.*"%>
	<%@ page import="javax.sql.*"%>
<% HttpSession ses=request.getSession(false);  
String uname = (String)ses.getAttribute("uname");
String pwd = (String)ses.getAttribute("password");

HttpSession s=request.getSession();
s.setAttribute("user", uname);

Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/nishant?autoReconnect=true&useSSL=false","root","root"); 
Statement st= con.createStatement();
ResultSet rs=st.executeQuery("select * from cutomer_record ");
String c_name = null;
String mobile = null;
String occupation = null;
String gender = null;
String dob = null;
String bank_account = null;
String address = null;
String pin = null;
String email = null;
String date = null;
String bill_no = null;
Float balance = null;
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
				 date = rs.getString("date");
				 bill_no = rs.getString("bill_no");
				 balance = rs.getFloat("Amount");
			}
			
		}
		
		 
		
	}
}

%>
<marquee direction="right" behavior="alternate" style="background:RED"><h4><%out.print("WELCOME "+uname);%></h4></marquee>
<div class ="visible" id="sidebar" >
<ul>
 <li><a href="#"><mark>DASHBOARD</mark></a></li>
        <li><a href="home.jsp">Home</a></li>
           <li><a class ="btn active" href="customer_record1.jsp">ADD CONNECTION</a></li>
        <li><a href = "call_history.jsp">CALL HISTORY</a></li>
         <li><a href = "payment_history.jsp">PAYMENT HISTORY</a></li>     
        <li><a href = "gsmhistory.jsp">DATA HISTORY</a></li>
      <li><a href="Bill.jsp">VIEW VOICE CALL BILL</a></li>
      <li><a href="Gsmbill.jsp">VIEW GSM  BILL</a></li>
      <li><a href="wcdmabill.jsp">VIEW WCDMA  BILL</a></li>
       <li><a href="generatebill1.jsp">GENERATE PDF BILL</a></li>
                <li><a href="profile1.jsp">UPDATE PROFILE</a></li>
        <li><a href="reset1.jsp">RESET PASSWORD</a></li>
                 <li><a href="email.jsp">UPDATE EMAIL</a></li>
                  <li><a href="help.jsp">HELP</a></li>
        <li><a href="Login1.jsp">LOG OUT</a></li>
</ul>
</div>
<div class ="col-sm-7" ></div>
<div class ="col-sm-4" style = "margin:2px;border-radius:10px;">
<h3 align="left" style="background-color:white;padding:2px;margin:3px;border-radius:10px" >  UserId : <% out.print(uname);%></h3>
<h3 align="left" style="background-color:white;padding:2px;margin:3px;border-radius:10px" >  Customer Name : <% out.print(c_name);%></h3>
<h3 align="left" style="background-color:white;padding:2px;margin:3px;border-radius:10px" >  Gender : <% out.print(gender);%></h3>
<h3 align="left" style="background-color:white;padding:2px;margin:3px;border-radius:10px">  Mobile No. : <% out.print(mobile);%></h3>
<h3 align="left" style="background-color:white;padding:2px;margin:3px;border-radius:10px">  Occupation : <% out.print(occupation);%></h3>
<h3 align="left" style="background-color:white;padding:2px;margin:3px;border-radius:10px">  Address : <% out.print(address);%></h3>
<h3 align="left" style="background-color:white;padding:2px;margin:3px;border-radius:10px">  Bank Account Details : <% out.print(bank_account);%></h3>
<h3 align="left" style="background-color:white;padding:2px;margin:3px;border-radius:10px">  Email ID: <% out.print(email);%></h3>
<h3 align="left" style="background-color:white;padding:2px;margin:3px;border-radius:10px">  Connection Date: <% out.print(date);%></h3>
<h3 align="left" style="background-color:white;padding:2px;margin:3px;border-radius:10px">  Bill Number: <% out.print(bill_no);%> <a href="RandomBillNumber.jsp" class="button">Generate Bill Number</a></h3>  
<h3 align="left" style="background-color:white;padding:2px;margin:3px;border-radius:10px">  Account Balance: <% out.print(balance);%></h3>
<br>
<br>
</div>

</body>
</html>