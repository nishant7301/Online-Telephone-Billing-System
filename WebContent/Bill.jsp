<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Bill detail</title>
<style type="text/css">
body{
	background-color:#808080;
	
}
table, th, td {
    border: 1px solid black;
    padding: 5px;
}
tr:nth-child(even){
background-color:grey;
}

</style>
</head>
<body>
<h1>Voice Bill Details:-</h1>
<%@ page import="java.sql.*"%>
	<%@ page import="javax.sql.*"%>
<%
try{
HttpSession ses=request.getSession(false);  
String uname = (String)ses.getAttribute("uname");
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/nishant?autoReconnect=true&useSSL=false","root","root"); 
Statement st= con.createStatement();
Statement st1= con.createStatement();
Statement st2 = con.createStatement();
int local = 0;
int std = 0;
int isd = 0;
int l1=0,l2=0,l3=0;
double m_rental=0.0;
double localmt = 0.0,stdmt = 0.0,Isdmt = 0.0;

int STD = 0;
int LOCAL = 0;
int ISD = 0;

	ResultSet n2=st2.executeQuery("select * from cutomer_record where uname='"+uname+"'");	
	String pno1 = null;
	while(n2.next())
		{
			pno1 = n2.getString("pno");	
		}

		String pno = null;	
		ResultSet n7 = null;
		n7=st1.executeQuery("select * from customer_meter where pno='"+pno1+"'");
	
	ResultSet rs5=st.executeQuery("select * from call_rate ");
	while(rs5.next())
	{
 	
 	l1=rs5.getInt("local");
 	l2=rs5.getInt("Std");
 	l3=rs5.getInt("Isd");
 	m_rental=rs5.getDouble("M_Rental");
 	
	}
	
	while(n7.next())
	{
		pno = n7.getString("pno");
		int local1 = n7.getInt("local");
		int std1 = n7.getInt("Std");
		int isd1  = n7.getInt("Isd");
		 STD = std1;
		 LOCAL = local1;
		 ISD = isd1;
		
         local += local1;
         std += std1;
         isd += isd1;
		
		
	}
	
	String address=null;
	
	localmt = (local * 1.0 * l1)/100;
	stdmt =  (std  * 1.0 *l2)/100;
	Isdmt =  (isd * 1.0 *l3)/100;
	ResultSet rs11=st.executeQuery("select * from cutomer_record where pno='"+pno+"'" );
	while(rs11.next())
	{
	 address = rs11.getString("address");
 	uname = rs11.getString("uname");
	}
	double total=localmt+stdmt+Isdmt;
	Statement st4 = con.createStatement();
	ResultSet rs=st4.executeQuery("select * from bill_record where pno='"+pno+"'");
	if(rs.next()){
		int j=st.executeUpdate("delete from bill_record where pno='"+pno+"'");
		st.executeUpdate("insert into bill_record values('"+uname+"','"+pno+"','"+address+"','"+localmt+"','"+stdmt+"','"+Isdmt+"','"+total+"')");
	}
	else	
	{
	st.executeUpdate("insert into bill_record values('"+uname+"','"+pno+"','"+address+"','"+localmt+"','"+stdmt+"','"+Isdmt+"','"+total+"')");
	}
	%>
<table class = "table table-condensed" style = "width:70%;">
	   <tr class = "danger">
<th>CALL TYPE</th>
<th>CALL METER(in minutes)</th>
<th>MULTIPLY</th>
<th>CALL RATE(in paise)</th>
<th>TOTAL(in Rupees)</th>
</tr>
<tr class="danger">
<th>LOCAL </th>
<td><% out.println(local);%></td>
<td><% out.println("*");%></td>
<td><% out.println(l1);%></td>
<td><% out.println(localmt);%></td>
</tr>
<tr>
<th>STD </th>
<td><% out.println(std);%></td>
<td><% out.println("*");%></td>
<td><% out.println(l2);%></td>
<td><% out.println(stdmt);%></td>
</tr>
<tr class="danger">
<th>ISD</th>
<td><% out.println(isd);%></td>
<td><% out.println("*");%></td>
<td><% out.println(l3);%></td>
<td><% out.println(Isdmt);%></td>
</tr>
<th></th>
<td></td>
<td></td>
<td></td>
<td><% out.println("TOTAL  :" + (localmt+stdmt+Isdmt));%></td>
<tr>
  
  
</tr>
</table>
</br>
</br>
<table><th>MONTHLY RENTAL</th>
<td><%out.println(m_rental); %></td>

</table>
<table><th>TOTAL==</th>
<td><%out.println(m_rental+total); %></td>

</table>

	<%
	

%>

<% 
String information="<a href=\"Billpayment1.jsp\">Bill payment</a>";
out.println("<br/><br/>");
out.println(information); 
out.println("<br/>");
String information1="<a href=\"generatebill1.jsp\">Bill generate</a>";
out.println("<br/><br/>");
out.println(information1); 
out.println("<br/>");
out.println("<br/>");

}
catch(Exception e)
{
	out.println("you haven't taken a connection\n");
}
%>

<form> <input type="button" value="BACK" onclick="window.location.href='http://localhost:8080/login/index1.jsp'" /> </form> 
<br></br> 					
</body>
</html>