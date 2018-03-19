<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- Theme Made By www.w3schools.com - No Copyright -->
  <title>Bootstrap Theme Simply Me</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Bill detail</title>
<style type="text/css">
table, th, td {
    border: 2px solid black;
    padding: 5px;
    text-align: center;
    border-radius: 5px;
    
    float: none;
}
tr:nth-child(even){
background-color:grey;
}
.currentRates{
background-color:#a1a1a1;
border-radius:8px;
font-color:white;
margin:8px;
padding:5px;
}
.rate{
background-color:white;
border-radius:8px;
font-color:black;
margin:8px;
padding:5px;
}
body  {
    background-image: url("4.jpg");
    background-color: #cccccc;
}

</style>
</head>
<body>
<h1>Voice Bill Details:-</h1>
<%@ page import="java.sql.*"%>
	<%@ page import="javax.sql.*"%>
<%
try{
	Double to;	
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
		n7=st1.executeQuery("select * from customer_meter where pno='"+pno1+"'");
	
	ResultSet rs5=st.executeQuery("select * from call_rate ");
	while(rs5.next())
	{
 	
 	l1=rs5.getInt("local");
 	l2=rs5.getInt("Std");
 	l3=rs5.getInt("Isd");
 	m_rental=rs5.getDouble("M_Rental");
 	
	}
	 String  date=null;
	 String  due_date=null;
	 ResultSet n1=st.executeQuery("select * from cutomer_record ");
	while(n7.next())
	{
		pno = n7.getString("pno");
		int local1 = n7.getInt("local");
		int std1 = n7.getInt("Std");
		int isd1  = n7.getInt("Isd");
		      date=n7.getString("date");
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
	ResultSet rs11=st.executeQuery("select * from cutomer_record where pno='"+pno1+"'" );
	while(rs11.next())
	{
	 address = rs11.getString("address");
 	uname = rs11.getString("uname");
	}
	double total=localmt+stdmt+Isdmt;
	Statement st4 = con.createStatement();
	ResultSet rs=st4.executeQuery("select * from bill_record where pno='"+pno1+"'");
	if(rs.next()){
		int j=st.executeUpdate("delete from bill_record where pno='"+pno1+"'");
		st.executeUpdate("insert into bill_record values('"+uname+"','"+pno1+"','"+address+"','"+localmt+"','"+stdmt+"','"+Isdmt+"','"+total+"')");
        
	}
	else	
	{
	st.executeUpdate("insert into bill_record values('"+uname+"','"+pno1+"','"+address+"','"+localmt+"','"+stdmt+"','"+Isdmt+"','"+total+"')");
	}
	
	
	
	// Code Due....
	
	%>
<div class = "text-center currentRates jumbotron">
      
      <h3 class = "text-center"> Current Call Rate</h3>
      
   <div class = "row">
         
         <div class = "col-md-3 rate">
              
              <h4> Local    </h4><%out.println(l1);%>
              
         </div>
         <div class = "col-md-1"></div>
         
         <div class = "col-md-3 rate">
              
              <h4> STD    </h4><%out.println(l2);%>
              
         </div>
                  <div class = "col-md-1"></div>
         
         <div class = "col-md-3 rate">
              
              <h4> ISD    </h4><%out.println(l3);%>
              
         </div>
                 <div class = "col-md-1"></div>
   </div>
</div>	
	
<table class = "table table-condensed center" style = "width:70%;"  align="center">
	   <tr class = "danger">
<th>CALL TYPE</th>
<th>CALL METER(in minutes)</th>

<th>TOTAL(in Rupees)</th>
</tr>
<tr class="danger">
<th>LOCAL </th>
<td><% out.println(local);%></td>

<td><% out.println(localmt);%></td>
</tr>
<tr>
<th>STD </th>
<td><% out.println(std);%></td>

<td><% out.println(stdmt);%></td>
</tr>
<tr class="danger">
<th>ISD</th>
<td><% out.println(isd);%></td>

<td><% out.println(Isdmt);%></td>
</tr>
<th> </th>
<td> </td>

<td><% out.println("TOTAL  :" + (localmt+stdmt+Isdmt));%></td>
<tr>
  
  
</tr>
</table>
<br>
	<%
	
	 HttpSession s=request.getSession();
	  s.setAttribute("user", uname);
%>

<% 
String information1="<a href=\"generatebill1.jsp\">Bill generate</a>";
out.println("<br/><br/>");
out.println(""); 
out.println("<br/>");
out.println("<br/>");
	}
	else
	{
	
		response.sendRedirect("message.jsp"); 
	
	}
}
catch(Exception e)
{
	out.println("you haven't taken a connection\n");
}
%>
<center> <input type="button" value="Bill generate" onclick="window.location.href='http://localhost:8080/login/generatebill1.jsp'" /> 
         

             <input type="button" value="PAY NOW" onclick="window.location.href='http://localhost:8080/login/postBill1.jsp'" /> <br>
                             <br>
 <input type="button" value="BACK" onclick="window.location.href='http://localhost:8080/login/index1.jsp'" /></center> 
<br>	
</body>
</html>