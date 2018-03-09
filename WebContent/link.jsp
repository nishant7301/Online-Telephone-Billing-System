<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>sidebar menu  </title>
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
#sidebar{
background:red;
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
background:#111;
margin-bottom:5px;
display:block;
}
ul{
margin:0px;
padding:0px;
}
table, th, td {
    border: 2px solid black;
    border-collapse: collapse;
    align:center;
    width:100%;
    padding:15px;
}
tr:nth-child(even){
background-color:grey;}
ul li{
list-style:none;

}
ul li a{
background:red;
color:#ccc;
border-bottom:1px solid #111;
display:block;
width:180px;
padding:10px;
text-decoration:none;
}

</style>
</head>
<body bgcolor="#808080">

<h1 align="center">WELCOME  TO  ADMIN PAGE</h1>
<div class = "row">
<div class = "col-sm-4 visible" id="sidebar">
<ul>
        <li><a href="Admin1.jsp">ADMIN HOME</a></li>
        <li><a href="listuser.jsp">ACTIVE USER LIST</a></li>
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
<div class = "colsm-8">

</div>
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
//ResultSet rs=st.executeQuery("select * from cutomer_record");
//String c_name = null;
//String mobile = null;
//String occupation = null;
//String gender = null;
//String dob = null;
//String bank_account = null;
//String address = null;
//String pin = null;
//String  local= null;
//String   std= null;
//String   total = null;
%>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script>
$(document).ready(function(){
	$('#sidebar-btn').click(function(){
		$('#sidebar').addClass('visible');
			});
	});
</script>
  <center><img src="121 .jpg" class="img-responsive img-rectangle" style="display:inline" alt="121" width="50%" height="50%">
</center>
</body>
</html>