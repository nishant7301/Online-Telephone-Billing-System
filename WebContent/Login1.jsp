<!DOCTYPE html>
<html>

<script>
function checkForm()
{
	var uname = document.forms["Login1"]["uname"];
	var uname = document.forms["Login1"]["password"];

if((document.Login1.uname.value.length>32))
{
alert("Please Valid  User Id ");
return false;
}
if((document.Login1.password.value.length<6))
{
alert("Please enter valid  password");
return false;
}
}
</script>
<head>
<meta charset="ISO-8859-1">
<title>Login Page </title>
<style type="text/css">
body{
margin:0px;
padding:0px;
font-family:"Helvetica Neue",Helvetica,Arial;
}
#sidebar{
background:blue;
width:200px;
height:100%;
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

</style>
</head>
<body bgcolor="red">
<div id="sidebar"  class="visible">
<ul>
  
        <li><a href="#"><mark>DASHBOARD</mark></a></li>
         <li><a href="home.jsp">HOME</a></li>
        <li><a href="Registration1.jsp">Sign UP</a></li>
      <li><a  class="active" href="Login1.jsp">Login</a></li>
       
</ul>
</div>

<div id="sidebar-btn">
<span></span>
<span></span>
<span></span>
 
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script>
$(document).ready(function(){
	$('#sidebar-btn').click(function(){
		$('#sidebar').addClass('visible');
			});
	});
</script>

</style>
</head>
<body bgcolor="#808080">
<h1 align="center"><font color="">TELEPHONE BILLING SYSTEM</font></h1>
<form name="Login1"  action="login.jsp" method="post" onSubmit=" return checkForm()">
<input type="hidden" name="ID" value="INSERT">
<marquee style="background:RED" behavior="alternate"><a href="#"><img src="new.gif"><h2 onclick="myFunction()">Special Offfer in 399 get 1.5GB/Day and free voice call for 84 days</h2> </a></marquee>
<script>
function myFunction() {
    alert("Login first");
}
</script>
<p align="center">
<pre>

 
                                                                          UserId  <input type="text" name="uname" required>
                          			  
                                                                         Password <input type="password" name="password" required>				
	   
		                                                                           <button type="submit" name="submit">Submit</button>
		                                          
		              	                                                           <a href="forget1.jsp">FORGET PASSWORD?</a>
	                        	                   
						                                           <b>New user</b> <a href="Registration1.jsp">Registration</a>
						           
							</pre>
							
							
						
							
							</p>
							
							
							</form>


</body>
</html>