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
<title>Billing</title>
</head>

<style>
#snackbar {
    visibility: hidden;
    min-width: 250px;
    margin-left: -125px;
    background-color: #333;
    color: #fff;
    text-align: center;
    border-radius: 2px;
    padding: 16px;
    position: fixed;
    z-index: 1;
    left: 50%;
    bottom: 30px;
    font-size: 17px;
}

#snackbar.show {
    visibility: visible;
    -webkit-animation: fadein 0.5s, fadeout 0.5s 2.5s;
    animation: fadein 0.5s, fadeout 0.5s 2.5s;
}

@-webkit-keyframes fadein {
    from {bottom: 0; opacity: 0;} 
    to {bottom: 30px; opacity: 1;}
}

@keyframes fadein {
    from {bottom: 0; opacity: 0;}
    to {bottom: 30px; opacity: 1;}
}

@-webkit-keyframes fadeout {
    from {bottom: 30px; opacity: 1;} 
    to {bottom: 0; opacity: 0;}
}

@keyframes fadeout {
    from {bottom: 30px; opacity: 1;}
    to {bottom: 0; opacity: 0;}
}
body  {
    background-image: url("m1.jpg");
    background-color: #cccccc;
}

</style>

<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<body>
   <h1></h1>
  <%  HttpSession s=request.getSession(false);
     String usr = (String)s.getAttribute("user");
     String bill_num=request.getParameter("bnum"); 
     String card_no=request.getParameter("cardno"); 
     Class.forName("com.mysql.jdbc.Driver");
     String pno="";
     java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/nishant?autoReconnect=true&useSSL=false","root","root"); 
     Statement st= con.createStatement();
     Statement st1= con.createStatement();
     ResultSet rs11=st1.executeQuery("select * from cutomer_record where uname='"+usr+"'");
     float amount_from_customer = 0.0f;
     String bill_type="voice bill";
     String mode="Online";
     try
     {
    	 if(rs11.next())
    	 {
    		 ResultSet rs2= st.executeQuery("select * from bill_record where uname='"+usr+"'");
    	     
    	     String amount1 = null;
    	     while(rs2.next())
    	     {
    	    	 amount1 = rs2.getString("total");
    	    	 pno = rs2.getString("pno");
    	     } 
    	     Double amount = Double.parseDouble(amount1.trim());
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
     		float myFloat = amount.floatValue();    
     	     if(amount <= amount_from_customer )
     	     {
     	     	  amount_from_customer = amount_from_customer - myFloat;
     	          int i = st.executeUpdate("update cutomer_record set Amount = "+ amount_from_customer + " where uname = '" + usr  + "'");
     	          if(i == 1)
     	        	  {
     	        	 st.executeUpdate("insert into payment_history values('"+bill_type+"','"+mode+"','"+amount1+"','"+pno+"')");
     	        	    out.println("\n\nRecharge Succes !!"+"\n");
     	        	    out.println("\n\n" + amount1 + "Amount deducted"+"\n");
     	 int flag = st.executeUpdate("update bill_record set localmt = " + 0.00 + ", stdmt = " + 0.00 + ", Isdmt =" + 0.00 + ", total = '0' where uname = '" + usr +"'");          
     	                if(flag > 0){   	
         	        	    int flag_customer_record = st.executeUpdate("update customer_meter set local = " + 0 + ", Std = " + 0 + ", Isd =" + 0 + " where pno = '" + pno +"'");
     	                	if(flag_customer_record > 0 ){
     	                		out.println("Customer_meter Updated");
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
     <div id="snackbar">Customer Meter Updated. And Payment Successful</div>


<script>
function myFunction() {
    var x = document.getElementById("snackbar")
    x.className = "show";
    setTimeout(function(){ x.className = x.className.replace("show", ""); }, 3000);
   }
    
</script>
</body>
</html>