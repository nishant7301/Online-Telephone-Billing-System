<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <html>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

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
                                         
                                          
                                         
                                               
                                          <h4> Mobile Number :  <% out.println(mobile_number);%></h4> 
                                        <% 
                                          float amount = 0.0f;
                                          String validity = null;
                                          String talktime = null;
                                          String data = null;
                                        
                                          String plan_topup= request.getParameter("radioButtonDataTopup");
                                          String plan_2g3g= request.getParameter("radioButtonData2G3G");
                                          String plan_specailoffer= request.getParameter("radioButtonDataSpecialOffer");
                                          String plan_fulltalktime= request.getParameter("radioButtonDataFullTalktime");
                                                                                 
                                          
                                           
                                          if(plan_topup != null){
                                        	   int id_plan = Integer.parseInt(plan_topup.trim());
                                                Statement s = con.createStatement();
                                                ResultSet r1 = st.executeQuery("select * from topup");
                                                
                                                while(r1.next())
                                                {
                                                    int id = r1.getInt("id");
                                                    float amo = r1.getFloat("Amount");
                                                    String val = r1.getString("Validity");
                                                    String tt = r1.getString("Talktime");
                                                    String dt = r1.getString("Data");
                                                    if(id == id_plan)
                                                    {
                                                    	amount = amo;
                                                    	validity = val;
                                                    	talktime = tt;
                                                    	data = dt;
                                                    }
                                                }
                                          }
                                          else if(plan_2g3g != null){
                                       	   int id_plan = Integer.parseInt(plan_2g3g.trim());
                                               Statement s = con.createStatement();
                                               ResultSet r1 = st.executeQuery("select * from 2g_3g");
                                               
                                               while(r1.next())
                                               {
                                                   int id = r1.getInt("id1");
                                                   float amo = r1.getFloat("Amount");
                                                   String val = r1.getString("Validity");
                                                   String tt = r1.getString("Talktime");
                                                   String dt = r1.getString("Data");
                                                   if(id == id_plan)
                                                   {
                                                   	amount = amo;
                                                   	validity = val;
                                                   	talktime = tt;
                                                   	data = dt;
                                                   }
                                               }
                                         }
                                          else if(plan_specailoffer != null){
                                          	   int id_plan = Integer.parseInt(plan_specailoffer.trim());
                                                  Statement s = con.createStatement();
                                                  ResultSet r1 = st.executeQuery("select * from specialoffer");
                                                  
                                                  while(r1.next())
                                                  {
                                                      int id = r1.getInt("id2");
                                                      float amo = r1.getFloat("Amount");
                                                      String val = r1.getString("Validity");
                                                      String tt = r1.getString("Talktime");
                                                      String dt = r1.getString("Data");
                                                      if(id == id_plan)
                                                      {
                                                      	amount = amo;
                                                      	validity = val;
                                                      	talktime = tt;
                                                      	data = dt;
                                                      }
                                                  }
                                            }
                                          else if(plan_fulltalktime != null){
                                         	   int id_plan = Integer.parseInt(plan_fulltalktime.trim());
                                                 Statement s = con.createStatement();
                                                 ResultSet r1 = st.executeQuery("select * from full_talktime");
                                                 
                                                 while(r1.next())
                                                 {
                                                     int id = r1.getInt("id3");
                                                     float amo = r1.getFloat("Amount");
                                                     String val = r1.getString("Validity");
                                                     String tt = r1.getString("Talktime");
                                                     String dt = r1.getString("Data");
                                                     if(id == id_plan)
                                                     {
                                                     	amount = amo;
                                                     	validity = val;
                                                     	talktime = tt;
                                                     	data = dt;
                                                     }
                                                 }
                                           }
                                        

                                             
                                          
                                          %> Enter money <input  name="browse_plan_money"  value = "<% out.print(amount);%>" ><a href ="browsePlan.jsp">Browse Plan</a>
                                          <%
                                           
                                            
                                          
                                          
                                          %>
                                            
                                                                        				
	   
		                                      <input type="submit" name="submit" value="SUBMIT"><input type="button" value="BACK" onclick="window.location.href='http://localhost:8080/login/index1.jsp'" /> 
			
		      
							
		      
							
							
						
							
						
							
							</pre>
							</form>
							


</body>
</html>