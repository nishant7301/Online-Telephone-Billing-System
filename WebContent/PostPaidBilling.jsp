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
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<body>
  <%  HttpSession s=request.getSession(false);
     String usr = (String)s.getAttribute("user");
     //String amount1 = request.getParameter("amt");
     
     
     
     
     
     
     
     Class.forName("com.mysql.jdbc.Driver");
     String pno="";
     java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/nishant?autoReconnect=true&useSSL=false","root","root"); 
     Statement st= con.createStatement();
     
     ResultSet rs2= st.executeQuery("select * from bill_record where uname='"+usr+"'");
     
     String amount1 = null;
     while(rs2.next()){
    	 amount1 = rs2.getString("total");
     }
     
     
     Double amount = Double.parseDouble(amount1.trim());
     out.println(amount);
     out.print(usr);
     ResultSet rs1=st.executeQuery("select * from cutomer_record where uname='"+usr+"'");
     float amount_from_customer = 0.0f;
     try{
     	while(rs1.next())
     	{
     		amount_from_customer = rs1.getFloat("Amount");
        }
     } catch(Exception e ){
     	out.println("\n\nYOU HAVE NOT TAKEN CONNECTION " + e );
     }


     float myFloat = amount.floatValue();     // Due Recharge Cong=firmateon not done 
     if(amount <= amount_from_customer )
     {
     	  amount_from_customer = amount_from_customer - myFloat;
          int i = st.executeUpdate("update cutomer_record set Amount = "+ amount_from_customer + " where uname = '" + usr  + "'");
          if(i == 1)
        	  {
        	    out.println("\n\nRecharge Succes !!");
        	    out.println("\n\n" + amount1 + "Amount deducted");
        	    int flag = st.executeUpdate("update bill_record set localmt = " + 0.00 + ", stdmt = " + 0.00 + ", Isdmt =" + 0.00 + ", total = '0' where uname = '" + usr +"'");
        	    
        	    // usr name available 
        	    // minute table --> extract --> set to zero
        	    // Calender method ---> getDate() -->current Date.
        	    // when months end ---> Total bill payment --> pay now
        	    // if due date expire ---> then penalty.
        	    
        	 
        	  }
          else out.println("\n\nRecharge Failed !!");
     }
     
     %>
</body>
</html>