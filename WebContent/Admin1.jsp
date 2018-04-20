<!DOCTYPE html>
<html>
<title> Admin page</title>
<script>
function checkForm()
{
	var uname = document.forms["Admin1"]["uname"];
	var uname = document.forms["Admin1"]["password"];

if((document.Admin1.uname.value.length>32))
{
alert("Please Valid  User Id ");
return false;
}
if((document.Admin1.password.value.length<6))
{
alert("Please enter valid  password");
return false;
}
}
$(document).ready(function(){
	$('#sidebar-btn').click(function(){
		$('#sidebar').addClass('visible');
			});
	});
	
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
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta charset="ISO-8859-1">
<style type="text/css">
#sidebar{
background:grey;
width:200px;
height:180%;
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
.button {
    background-color: #4CAF50;
    border: none;
    color: white;
    padding: 6px 25px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 10px;
    margin: 4px 2px;
    cursor: pointer;
}  

body  {
    background-image: url("admin.jpg");
    background-color: #cccccc;
      height: 100%; 

    /* Center and scale the image nicely */
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
    }
    input[type=text] {
    width: 25%;
    padding: 10px 18px;
    margin: 8px 0;
    box-sizing: border-box;
    border: none;
    background-color: #3CBC8D;
    color: white;
    
}
 input[type=password] {
    width: 25%;
    padding: 10px 18px;
    margin: 8px 0;
    box-sizing: border-box;
    border: none;
    background-color: #3CBC8D;
    color: white;
    
}
 input[type=submit] {
    width: 10%;
    padding: 10px 18px;
    margin: 8px 0;
    box-sizing: border-box;
    border: none;
    background-color: RED;
    color: white;
    
}
</style>
</head>
<body>
<h1 align="center"><font color="red">WELCOME TO ADMIN</font></h1>
<div id="sidebar"  class="visible">
<ul>
         <li><a href="#">DASHBOARD</a></li>
         <li><a href="home.jsp">HOME</a></li>
        <li><a  class="btn active" href="Admin1.jsp">ADMIN ENTRY</a></li>
      <li><a href="#">ABOUT</a></li>     
</ul>
</div> 
<form name="Admin1"  action="admin.jsp" method="post" onSubmit=" return checkForm()">
<p>
<pre>                          

                                                                    <label for="uname">User Name:</label><i class="fa fa-user" aria-hidden="true"></i>
                                                                    <input type="text" id="fname" name="uname" required>
                                                                    <label for="password">PASSWORD:</label><i class="fa fa-lock"></i>
                                                                    <input type="password" id1="password" name="password" id="myInput" required> <input type="checkbox" onclick="myFunction()">Show Password						
		                                                                       
		                                                               <input type="submit" name="submit" value="SUBMIT">
						                                                 
						                                            <strong> FORGET PASSWORD?<a href="forget1.jsp" class="button">Click Here</a>	</strong>
 
                                                                 
							</pre>	
				
							</form>
					</body>
					
						
							

</html>