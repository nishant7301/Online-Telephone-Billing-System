<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>gsm_payment</title>
<style type="text/css">
body  {
    background-image: url("m1.jpg");
    background-color: #cccccc;
}
</style>
</head>
<body>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<body>
   <h1></h1>
  <%  HttpSession s=request.getSession(false);
     String usr = (String)s.getAttribute("user");
     String bill_num=request.getParameter("bnum"); 
     String card_no=request.getParameter("cardno"); 
     Class.forName("com.mysql.jdbc.Driver");
     String pno="null";
     java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/nishant?autoReconnect=true&useSSL=false","root","root"); 
     Statement st= con.createStatement();
     Statement st1= con.createStatement();
     ResultSet rs11=st1.executeQuery("select * from cutomer_record where uname='"+usr+"'");
     float amount_from_customer ;
     float amount1=0.0f;
     String bill_type="3g Internet";
     String mode="Online";
     try
     {
    	 if(rs11.next())
    	 {
    		 ResultSet rs2= st.executeQuery("select * from wcdmabill where uname='"+usr+"'");
    	     
    	     
    	     while(rs2.next())
    	     {
    	    	 amount1 = rs2.getFloat("Wcdma_money");
    	    	 pno = rs2.getString("pno");
    	     } 
    	ResultSet rs1=st1.executeQuery("select * from cutomer_record where uname='"+usr+"'");
     	while(rs1.next())
     	{
     		String x=rs1.getString("bill_no"); 
     		if(x.equals(bill_num))
     		{
     		String cno=rs1.getString("card_no");
     			if(cno.equals(card_no))
     			{
     		amount_from_customer = rs1.getFloat("Amount");  
     	     if(amount1 <= amount_from_customer )
     	     {
     	     	  amount_from_customer = amount_from_customer - amount1;
     	          int i = st.executeUpdate("update cutomer_record set Amount = "+ amount_from_customer + " where uname = '" + usr  + "'");
     	          if(i == 1)
     	        	  {
     	        	 st.executeUpdate("insert into payment_history values('"+bill_type+"','"+mode+"','"+amount1+"','"+pno+"')");
     	        	    out.println("\n\nRecharge Succes !!"+"\n");
     	        	    out.println("\n\n" + amount1 + "   Amount deducted"+"\n");
     	                  int flag = st.executeUpdate("update wcdmabill set Wcdma_money="+0.0+" where pno='"+pno+"'");          
     	                if(flag > 0){   	
         	        	    int flag_customer_record = st.executeUpdate("update wcdmameter set Wcdma_Usage="+0+ " where pno = '" +pno+"'");
     	                	if(flag_customer_record > 0 ){
     	                		out.println("");
     	                	}
     	                }
     	        	  }
     	          else 
     	        	  out.println("\n\nRecharge Failed !!");
     	     }
     	     else
     	     {
     	    	 out.println("Insufficient Balance");
     	     }
     			}
     			else
     			{
     			out.println("Card number is wrong");	
     			}
     		}
     		else
     		{
     		out.println("Bill number is wrong");	
     		}
        }
    	 }
    	 else
    	 {
    		 response.sendRedirect("message.jsp"); 

    	 }
     } 
     catch(Exception e ){
     	out.println("\n\n ERROR  " + e );
     }     		
     %>
   <center>   <input type="button" value="BACK" onclick="window.location.href='http://localhost:8080/login/index1.jsp'; myFunction();" /> 
   </center>

</body>
</html>