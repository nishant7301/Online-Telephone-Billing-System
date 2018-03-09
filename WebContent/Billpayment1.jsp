<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<html>
<script>
function checkForm()
{
	var money = document.forms["Billpayment1"]["money"];

	var pno = document.forms["Billpayment1"]["pno"];
	if(document.Billpayment1.pno.value.length<10)
	{ alert(" phone number should be atleast 10 digit ");
	return false;
	}
	if(document.Billpayment1.pno.value.length>12)
	{ alert("Invalid phone number or phone number should be maximum 12 digit");
	return false;
	}
	if(isNaN(document.Billpayment1.money.value))
	{alert("money should contain numerics only");
	return false;
	}

}
</script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>payment page</title>
</head>

<body bgcolor="#808080">
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<form name="Billpayment1"  action="Billpayment.jsp" method="get"  onSubmit=" return checkForm()">
<p align="center">
<pre>             
 								          <%
 								        Class.forName("com.mysql.jdbc.Driver");
 								        java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/nishant?autoReconnect=true&useSSL=false","root","root"); 
 								        Statement st= con.createStatement();
 								        ResultSet r=st.executeQuery("select * from cutomer_record ");
 								        String mobile_number = null;
 								        while(r.next())
 								        {
 								        	mobile_number = r.getString("pno");
 								        }
                                          %>
                                         <div class = "container"> 
                                          
                                         
                                               
                                          <pre><h4> Mobile Number :  <% out.println(mobile_number);%></h4> </pre>
                                        <% 
                                          float amount = 0.0f;
                                        
                                        
                                          String plan= request.getParameter("radioButtonDataTopup");
                                          
                                          int id_plan  = 0;
                                          out.println(id_plan); 
                                          if(plan != null){
                                        	   id_plan = Integer.parseInt(plan.trim());
                                                Statement s = con.createStatement();
                                                ResultSet r1 = st.executeQuery("select * from topup");
                                                
                                                while(r1.next())
                                                {
                                                    int id = r1.getInt("id");
                                                    float amo = r1.getFloat("Amount");
                                                    
                                                    if(id == id_plan)
                                                    {
                                                    	amount = amo;
                                                    	
                                                    }
                                                }
                                          }
                                          %> Enter money <input  name="money"  value = "<% out.print(amount);%>" ><a href ="browsePlan.jsp">Browse Plan</a>
                                          <%
                                         
                                          
                                          
                                          %>
                                            
                                                                        				
	   
		                                      <input type="submit" name="submit" value="SUBMIT"><form> <input type="button" value="BACK" onclick="window.location.href='http://localhost:8080/login/index1.jsp'" /> </form> 
			
		      
							
		      
							
							
						
							
							</p>
							
							</pre>
							</form>
							
</div>

</body>
</html>