<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
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
background:#151718;
width:200px;
height:110%;
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
background:#1C1E1F;
color:#ccc;
border-bottom:1px solid #111;
display:block;
width:180px;
padding:10px;
text-decoration:none;
}

</style>
</head>
<body>
	<marquee direction="right" behavior="alternate" style="background:RED">Voice Call Details:</marquee>
 




	<%@ page import="java.sql.*"%>
	<%@ page import="javax.sql.*"%>
<%
HttpSession ses=request.getSession(false);  
String uname = (String)ses.getAttribute("uname");
String pwd = (String)ses.getAttribute("password");
//out.println(uname);
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/nishant?autoReconnect=true&useSSL=false","root","root"); 
Statement st= con.createStatement();

String localmt = null;
String stdmt = null;
String Isdmt = null;
String cname = null;
String pno = null;
String total = null;
//while(rs.next())
//{
	//String user = rs.getString("uname");
	//if(uname.equals(user))
	//{
		// localmt = rs.getString("localmt");
		 //stdmt = rs.getString("stdmt");
		 //Isdmt = rs.getString("Isdmt");
		 //total = rs.getString("total");
	//}
//}
%>
<div class = "row" style ="background: url(tel.jpg) blue;">
<div class ="col-sm-4"></div>
<div class ="col-sm-7" style = "margin:2px;border-radius:10px;">

<h3 align="left" style="background-color:white;padding:2px;margin:3px;border-radius:10px" >  Local Minute : <% out.print(localmt);%></h3>
<h3 align="left" style="background-color:white;padding:2px;margin:3px;border-radius:10px" >  Std Minute : <% out.print(stdmt);%></h3>
<h3 align="left" style="background-color:white;padding:2px;margin:3px;border-radius:10px" >  Isd Minute : <% out.print(Isdmt);%></h3>
<h3 align="left" style="background-color:white;padding:2px;margin:3px;border-radius:10px" >  TOATAL DUE MONEY : <% out.print(total);%></h3>



</div>

</div>
<div class = "row" style ="background: url(tel.jpg) blue;">
<div class ="col-xs-4"></div>
<div class = "col-xs-8">
</div>

</div>
<br></br>
                                 <form> <input type="button" value="BACK" onclick="window.location.href='http://localhost:8080/login/index1.jsp'" /> </form> 
			
</body>
</html>