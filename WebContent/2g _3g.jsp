<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
body {font-family: "Lato", sans-serif;}

.tablink {
    background-color: #555;
    color: white;
    float: left;
    border: none;
    outline: none;
    cursor: pointer;
    padding: 14px 16px;
    font-size: 17px;
    width: 25%;
    height:100%;
}

.tablink:hover {
    background-color: #777;
}

/* Style the tab content */
.tabcontent {
    color: white;
    display: none;
    padding: 50px;
    text-align: center;
}
#donate {
    margin:4px;
   
    float:left;
}

#donate label {
    float:left;
    width:170px;
    margin:4px;
    background-color:#EFEFEF;
    border-radius:4px;
    border:1px solid #D0D0D0;
    overflow:auto;
       
}

#donate label span {
    text-align:center;
    font-size: 32px;
    padding:13px 0px;
    display:block;
}

#donate label input {
    position:absolute;
    top:-20px;
}

#donate input:checked + span {
    background-color:#404040;
    color:#F7F7F7;
}


#donate .blue {
    background-color:#00BFFF;
    color:#333;
}
#donate .green {
    background-color:#A3D900;
    color:#333;
}

#Data-Pack{background-color:green;}

</style>
</head>
<body >
  <%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<div class = "fluid-container">
<button class="tablink" onclick="openCity('Data-Pack', this, 'green')">2G/3G DATA</button>


<div id="Top-up" class="tabcontent">

<%

Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/nishant?autoReconnect=true&useSSL=false","root","root"); 
Statement st= con.createStatement();  
ResultSet rs=st.executeQuery("select * from topup2g_3g");
%>
<!-- Adding Table Header 
<table class="table table-responsive">
     <thead>
         <tr>
             <th></th>
             
         </tr>
     </thead>
     <tbody>
     <form>
   --> 
  
<form metod = POST action="Billpayment1.jsp">            
<%

while(rs.next())
{
	int id = rs.getInt("id");
	float rechargePrice = rs.getFloat("Amount");
	String talktime= rs.getString("Data");
	String validity= rs.getString("Validity");
	String data= rs.getString("talktime");
	%>
	
	 
        <div id="donate">
            <label class="blue"><input type="radio" name="radioButtonData" ><span><h4><%out.print(rechargePrice + ",\t   " + "Talktime - " + talktime + ",\t     Validity - " + validity + ",\t Data -     " + data + "\t"); %></h4></span></label>
       </div>
	<% 
}

%>
<input type="submit" name="ADD" value="ADD">
</form>
<!-- 
	</form>
	</tbody>
</table>
</div>
 -->
<div id="Data-Pack" class="tabcontent">
  <h3>Paris</h3>
  <p>Paris is the capital of France.</p> 
</div>

<div id="Special-Offer" class="tabcontent">
  <h3>Tokyo</h3>
  <p>Tokyo is the capital of Japan.</p>
</div>

<div id="Full-Talktime" class="tabcontent">
  <h3>Oslo</h3>
  <p>Oslo is the capital of Norway.</p>
</div>
</div>

<script>
function openCity(cityName,elmnt,color) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablink");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].style.backgroundColor = "";
    }
    document.getElementById(cityName).style.display = "block";
    elmnt.style.backgroundColor = color;

}
// Get the element with id="defaultOpen" and click on it
document.getElementById("defaultOpen").click();
</script>
     
</body>
</html> 
 
