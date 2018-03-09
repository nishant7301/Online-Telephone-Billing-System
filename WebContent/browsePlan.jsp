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
table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

td, th {
    border: 1px solid #dddddd;
    text-align: left;
    padding: 8px;
}

tr:nth-child(even) {
    background-color: #dddddd;
}
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

#Top-up {background-color:green;}
#Data-Pack{background-color:green;}
#Special-Offer {background-color:green;}
#Full-Talktime{background-color:green;}
</style>
</head>
<body >
  <%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<h1>Plans:-</h1>
<div class = "fluid-container">
<button class="tablink" onclick="openCity('Top-up', this, 'green')" id="defaultOpen">Top Up</button>
<button class="tablink" onclick="openCity('Data-Pack', this, 'green')">2G/3G DATA</button>
<button class="tablink" onclick="openCity('Special-Offer', this, 'green')">Special-Offer</button>
<button class="tablink" onclick="openCity('Full-Talktime', this, 'green')">Full-Talktime</button>


<div id="Top-up" class="tabcontent">
<%


String table_name = null;
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/nishant?autoReconnect=true&useSSL=false","root","root"); 
Statement st= con.createStatement();  
ResultSet rs=st.executeQuery("select * from topup");




%>  
<form method = "post" action="Billpayment1.jsp" class="demoForm" id="demoForm">            
<%
// For topup Section
while(rs.next())
{
	int id = rs.getInt("id");
	float rechargePrice = rs.getFloat("Amount");
	String talktime= rs.getString("Talktime");
	String validity= rs.getString("Validity");
	String data= rs.getString("Data");
	%> 
        <div id="donate">
 <label class="blue"><input type="radio"  value = "<%out.print(id);%>" name="radioButtonDataTopup" ><span><h4><%out.print("Amount  "+rechargePrice + ",\t   " + "Talktime - " + talktime + ",\t     Validity - " + validity + ",\t Data -     " + data + "\t"); %></h4></span></label>
       </div>
      
       <div id="donate">
       
       
       </div>
	<% 
   }

%>
<input type="submit" name="ADD" value="ADD">
</form>
</div>
<div id="Data-Pack" class="tabcontent">
<% 
  ResultSet rs1=st.executeQuery("select * from 2g_3g");
%>
<form method ="post" action="Billpayment1.jsp">            
<%
while(rs1.next())
{
	int id1 = rs1.getInt("id1");
	float rechargePrice = rs1.getFloat("Amount");
	String Data= rs1.getString("Data");
	String validity= rs1.getString("Validity");
	String talktime= rs1.getString("talktime");
	%> 
        <div id="donate">
            <label class="blue"><input type="radio" value = "<%out.print(id1);%>" name="radioButtonData2G3G" ><span><h4><%out.print("Amount  "+rechargePrice + ",\t   " + "DATA- " + Data + ",\t     Validity - " + validity + ",\t Talktime -     " + talktime + "\t"); %></h4></span></label>
       </div>
	<% 
}

%>
<input type="submit" name="ADD" value="ADD">
</form>
</div>

<div id="Special-Offer" class="tabcontent">
<% 
ResultSet rs2=st.executeQuery("select * from specialoffer");
%> 
<form method ="post" action="Billpayment1.jsp">            
<%
while(rs2.next())
{
	int id2 = rs2.getInt("id2");
	float rechargePrice = rs2.getFloat("Amount");
	String Profit= rs2.getString("profit");
	String validity= rs2.getString("Validity");
	
	%> 
        <div id="donate">
            <label class="blue"><input type="radio"  name="radioButtonDataSpecialOffer" value ="<%out.print(id2);%>"><span><h4><%out.print("Amount  " + rechargePrice + ",\t   " + "Profit - " + Profit + ",\t     Validity - " + validity +  "\t"); %></h4></span></label>
       </div>
	<% 
}

%>
<input type="submit" name="ADD" value="ADD">
</form>
</div>
 
</div>

<div id="Full-Talktime" class="tabcontent">
<% 
 ResultSet rs3=st.executeQuery("select * from full_talktime");
%>  
<form method ="post" action="Billpayment1.jsp">            
<%
while(rs3.next())
{
	int id3 = rs3.getInt("id3");
	float rechargePrice = rs3.getFloat("Amount");
	String talktime= rs3.getString("Talktime");
	String validity= rs3.getString("Validity");
	String data= rs3.getString("data");
	%> 
        <div id="donate">
            <label class="blue"><input type="radio" name="radioButtonDataFullTalktime" value="<%out.print(id3); %>"><span><h4><%out.print("Amount  "+ rechargePrice + ",\t   " + "Talktime - " + talktime + ",\t     Validity - " + validity + ",\t Data -     " + data + "\t"); %></h4></span></label>
       </div>
	<% 
}




%>
<input type="submit" name="ADD" value="ADD">
</form> 
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
<br>
<br>
<br>
 <form><center>  <br>                               <input type="button" value="BACK" onclick="window.location.href='http://localhost:8080/login/Billpayment1.jsp'" /> </form> 
			</center><br>
                                <center> <form> <input type="button" value="USER MENU" onclick="window.location.href='http://localhost:8080/login/index1.jsp'" /> </form> 
			</center>
 
</body>
</html> 
 
