<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Wcdma Bill</title>
</head>
<title>Bootstrap Theme Simply Me</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<body bgcolor="#808080">
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
int  Wcdma_Usage=0;
int Gsm_rate=0;
int Wcdma_rate=0;
ResultSet n2=st2.executeQuery("select * from cutomer_record where uname='"+uname+"'");	
String pno1 = null;
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
	
	Gsm_rate=rs5.getInt("Gsm_rate");
	Wcdma_rate=rs5.getInt("Wcdma_rate");
	
}
while(n7.next())
{
	pno = n7.getString("pno");
	int Wcdma_Usage1 = n7.getInt("Wcdma_Usage");
	Wcdma_Usage+=Wcdma_Usage1;
}
double Wcdma_money=0.0;
Wcdma_money=(Wcdma_Usage*Wcdma_rate)/100;
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
<th>WCDMA MONEY </th>
</tr>
 <tr class="danger">
  <td><% out.println(pno1);%></td>
<td><% out.println(uname);%></td>
<td><% out.println(Wcdma_money);%></td>
</tr>
</table>
                                    <br><br><form> <input type="button" value="BACK" onclick="window.location.href='http://localhost:8080/login/index1.jsp'" /> </form> 
<br></br> 			
</body>
</html>