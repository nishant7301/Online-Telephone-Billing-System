<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>payment page</title>
</head>
<body>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
HttpSession ses=request.getSession(false);  
String user = (String)ses.getAttribute("uname");

Class.forName("com.mysql.jdbc.Driver");
String pno="";
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/nishant?autoReconnect=true&useSSL=false","root","root"); 
Statement st= con.createStatement();
ResultSet rs1=st.executeQuery("select * from cutomer_record where uname='"+user+"'");
if(rs1.next())
{
	ResultSet rs2=st.executeQuery("select pno from cutomer_record where uname='"+user+"'");
	if(rs2.next())
			{
		double l2=0;
		pno=rs2.getString("pno");
		ResultSet rs4=st.executeQuery("select total from bill_record where pno='"+pno+"'");
		while(rs4.next())
		{
		 l2 = rs4.getDouble("total");

		}
		out.println("before payment ballance is:"+l2);
	//	double temp=l2-k1;
		//out.println("after payment ballance is:"+temp);
		//int j1=st.executeUpdate("update bill_record set  total='"+temp+"' where pno='"+pno+"'"); 
		
			}
	
	
}
else
{
	out.println("YOU HAVE NOT TAKEN CONNECTION");
}

%>
<br>
</br>
                             <form> <input type="button" value="BACK" onclick="window.location.href='http://localhost:8080/login/index1.jsp'" /> </form> 
			
</body>
</html>