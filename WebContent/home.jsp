<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Theme Simply Me</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  .container-fluid {
      padding-top: 70px;
      padding-bottom: 70px;
  }
  .navbar {
      padding-top: 15px;
      padding-bottom: 15px;
      border: 0;
      border-radius: 0;
      margin-bottom: 0;
      font-size: 12px;
      letter-spacing: 5px;
  }
  .navbar-nav  li a:hover {
      color: #1abc9c !important;
  }
  .button {
    background-color: #4CAF50;
    border: none;
    color: white;
    padding: 20px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
}
.topnav {
  overflow: hidden;
  background-color: #333;
}

.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 20px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav a.active {
  background-color: #4CAF50;
  color: white;
}
  </style>
</head>
<body>
<div class="topnav">
  <a class="active" href="home.jsp">Home</a>
  <a href="Login1.jsp">Recharge</a>
  <a href="user.html">User Login</a>
  <a href="Admin1.jsp">Admin Login</a>
  <a href="#">About</a>
</div>
      <!--  
      <a class="navbar-brand" href="#"></a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="home.jsp">HOME</a></li>
         <li><a href="Login1.jsp">RECHARGE</a></li>
        <li><a href="user.html">USER</a></li>
         <li><a href="Admin1.jsp">ADMIN LOGIN</a></li>
          <li><a href="#">CONTACT US</a></li>
      </ul>
    </div>
  </div>
</nav>
-->
<marquee behavior="alternate" style="background:RED"><h3>Telephone Billing System</h3></marquee>
<div class="container-fluid bg-1 text-center">
  <img src="tele.jpg" class="center" style="display:inline" width="35%" height="50%">
  <center>
  <a href="user.html" class="button">USER</a>
  <a href="Admin1.jsp" class="button">ADMIN</a>
  </center>

</div>



<div class="container-fluid bg-3 text-center">    
  <div class="row">
    <div class="col-sm-4"> 
      <p>This software is  protected by copyright laws</p>
    </div>
    <div class="col-sm-4"> 
    </div>
  </div>
</div>

</body>
</html>
