<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Bootstrap Theme Simply Me</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Wcdma Bill</title>
</head>
<style>
body  {
    background-image: url("m1.jpg");
    background-color: #cccccc;
}
input[type=button] {
    width: 10%;
    padding: 10px 18px;
    margin: 8px 0;
    box-sizing: border-box;
    border: none;
    background-color: RED;
    color: white;
    
}
</style>
<h2> Wcdma Bill Details:-</h2>
<body>
<%@ page import="java.sql.*"%>
	<%@ page import="javax.sql.*"%>
<%
HttpSession ses=request.getSession(false);  
String uname = (String)ses.getAttribute("uname");
String pwd = (String)ses.getAttribute("password");
//out.println(uname);
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/nishant?autoReconnect=true&useSSL=false","root","root"); 
Statement st1= con.createStatement();
Statement st2= con.createStatement();
Statement st3= con.createStatement();
float  Wcdma_Usage=0;
float Gsm_rate=0;
float Wcdma_rate=0;
ResultSet n3=st2.executeQuery("select * from cutomer_record where uname='"+uname+"'");	
String pno1 = null;
if(n3.next())
{
	ResultSet n2=st2.executeQuery("select * from cutomer_record where uname='"+uname+"'");	
while(n2.next())
	{
		pno1 = n2.getString("pno");	
	}
String pno = null;	
ResultSet n7 = null;
n7=st1.executeQuery("select * from wcdmameter where pno='"+pno1+"'");

ResultSet rs5=st3.executeQuery("select * from datarate ");
while(rs5.next())
{
	
	Gsm_rate=rs5.getFloat("Gsm_rate");
	Wcdma_rate=rs5.getFloat("Wcdma_rate");
	
}
while(n7.next())
{
	pno = n7.getString("pno");
	float Wcdma_Usage1 = n7.getFloat("Wcdma_Usage");
	Wcdma_Usage+=Wcdma_Usage1;
}
float Wcdma_money=0.0f;
Wcdma_money=(Wcdma_Usage*Wcdma_rate)/1000;
Statement st4 = con.createStatement();
ResultSet rs=st4.executeQuery("select * from wcdmabill where pno='"+pno1+"'");
if(rs.next()){
	int j=st4.executeUpdate("delete from wcdmabill where pno='"+pno1+"'");
	st4.executeUpdate("insert into wcdmabill values('"+pno1+"','"+uname+"','"+Wcdma_money+"')");
}
else	
{
st4.executeUpdate("insert into wcdmabill values('"+pno1+"','"+uname+"','"+Wcdma_money+"')");
}


%>
<table class = "table table-condensed" >
 <tr class="danger">
<th>PHONE NUMBER</th>
<th>USER NAME</th>
<th>WCDMA USAGE(KB)</th>
<th>WCDMA RATE(Paise/5KB)</th>
<th>WCDMA DUE MONEY (RS) </th>
</tr>
 <tr class="danger">
  <td><% out.println(pno1);%></td>
<td><% out.println(uname);%></td>
<td><% out.println(Wcdma_Usage);%></td>
<td><% out.println(Wcdma_rate);%></td>
<td><% out.println(Wcdma_money);%></td>
</tr>
</table>
<% 
}
else
{
	response.sendRedirect("message.jsp"); 
}
%>
<center>
                                    <br><br><form> <input type="button" value="BACK" onclick="window.location.href='http://localhost:8080/login/index1.jsp'" /> </form> 
<br> 
 <form> <input type="button" value="GENERATE BILL" onclick="window.location.href='http://localhost:8080/login/wcdmapdf.jsp'" /> </form>  						
 <br><form> <input type="button" value="PAY NOW" onclick="window.location.href='http://localhost:8080/login/wcdmapayment1.jsp'" /> </form>
 </center>
</body>
</html>