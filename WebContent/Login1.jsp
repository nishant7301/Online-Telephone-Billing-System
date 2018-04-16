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
alert("Please enter valid  password,Password atleast 6 digit");
return false;
}
}
function myFunction() {
    var x = document.getElementById("myInput");
    if (x.type === "password") {
        x.type = "text";
    } else {
        x.type = "password";
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
background:#FFFACD;
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
.button {
    background-color: #4CAF50;
    border: none;
    color: white;
    padding: 6px 16px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 10px;
    margin: 4px 2px;
    cursor: pointer;
}  
ul{
margin:0px;
padding:0px;
}
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

.visible a:hover {
  background-color: #ddd;
  color: black;
}
.visible a.active {
  background-color: #4CAF50;
  color: white;
}

body  {
    background-image: url("m1.jpg");
    background-color: #cccccc;
    font-size:100%;
    
}
</style>
</head>
<body >
                                                         
<div id="sidebar"  class="visible">
<ul>
  
       <li><a href="#">DASHBOARD</a></li>
         <li><a href="home.jsp">HOME</a></li>
        <li><a href="Registration1.jsp">Sign UP</a></li>
      <li><a  class ="btn active" href="Login1.jsp">Login</a></li>
       
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
<h1 align="center"><font>ONLINE TELEPHONE BILLING SYSTEM</font></h1>
<form name="Login1"  action="login.jsp" method="post" onSubmit=" return checkForm()">
<p align="center">
<pre>

 
                                                      <strong>                  UserId   <input type="text" name="uname" required> </strong>
                          			  
                                                      <strong>                  Password <input type="password" name="password" id="myInput" required></strong>  <input type="checkbox" onclick="myFunction()">Show Password				
	   
		                                                                           <button type="submit" name="submit">Submit</button>
		                                          
		              	                                         <strong>           FORGET PASSWORD?<a href="forgetuserpass1.jsp" class="button">CLICK HERE</a> </strong> 
	                        	                   
						                          <strong>          <b>New User</b><a href="Registration1.jsp" class="button">  Click here</a>
						           </strong>
							</pre>
							
							
						
							
					
							
							
							</form>


</body>
</html>