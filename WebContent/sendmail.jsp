<%@ page import = "java.io.*,java.util.*,javax.mail.*"%>
<%@ page import = "javax.mail.internet.*,javax.activation.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
	<%@ page import="java.sql.*"%>
	<%@ page import="javax.sql.*"%>
	<%
//String s1=request.getParameter("email"); 
//session.putValue("email",s1);
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/nishant?autoReconnect=true&useSSL=false","root","root"); 
Statement st= con.createStatement();

   String result;
   
   // Recipient's email ID needs to be mentioned.
   String to = "knitish123@gmail.com";
   // Sender's email ID needs to be mentioned
   String from = "nishantraj2770@gmail.com";

   // Assuming you are sending email from localhost
   String host = "localhost";

   // Get system properties object
   Properties properties = System.getProperties();

   // Setup mail server
   properties.setProperty("mail.smtp.host", "local");

   // Get the default Session object.
   Session mailSession = Session.getDefaultInstance(properties);

   try {
      // Create a default MimeMessage object.
      MimeMessage message = new MimeMessage(mailSession);

      // Set From: header field of the header.
      message.setFrom(new InternetAddress(from));
  try{
      // Set To: header field of the header.
      message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
  }catch(Exception e)
  {
	  out.println(e);
  }

      // Set Subject: header field
      message.setSubject("This is the reset link");

      // Create the message part 
      BodyPart messageBodyPart = new MimeBodyPart();

      // Fill the message
      messageBodyPart.setText("This is message body");
      
      // Create a multipart message
      Multipart multipart = new MimeMultipart();

      // Set text message part
      multipart.addBodyPart(messageBodyPart);

      // Part two is attachment
      messageBodyPart = new MimeBodyPart();
      // Send message
      Transport.send(message);
      String title = "Send Email";
      result = "Sent message successfully....";
   } catch (MessagingException mex) {
      out.println(mex.getMessage());
      result = "Error: unable to send message....";
   }
%>
<html>
   <head>
      <title>Send Attachment Email using JSP</title>
   </head>
   
   <body>
      <center>
         <h1>Send Attachment Email using JSP</h1>
      </center>
      
      <p align = "center">
         <%out.println("Result: " + result + "\n");%>
      </p>
   </body>
</html>