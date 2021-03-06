<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
<%@page import="java.util.*,javax.mail.*" %>
<%@page import="javax.mail.internet.*" %>

    <%
        final String to = "hemantshrsth@gmail.com";
        final String fname = request.getParameter("fnm");
        final String from = request.getParameter("mail");
        final String phone = request.getParameter("num");
        final String subject = request.getParameter("sub");
        final String messg = request.getParameter("msg");
        final String pwd = "bunkerz@015";
        String host = "smtp.gmail.com";
        
        Properties props = new Properties();
        props.put("mail.smtp.host", host);
        props.put("mail.transport.protocol", "smtp");
        props.put("mail.smtp.auth","true");
        props.put("mail.smtp.starttls","true");
        props.put("mail.user", from);
        props.put("mail.password", pwd);
        props.put("mail.port", "587");
        
        // Authorized the session object
        Session mailSession = Session.getInstance(props, new javax.mail.Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication(){
                return new PasswordAuthentication(to, pwd);
            }
        });
        
        try{
            //Creating a default Mime Message object
            MimeMessage message = new MimeMessage(mailSession);
            //Set From: header field of the header
            message.setFrom(new InternetAddress(from));
            // Set To: header field of the header
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
            // Set Subject: header field
            message.setSubject(subject);
            // Now set the actual message
            message.setText(messg);
            // Send Message
            Transport transport = mailSession.getTransport();
            transport.connect();
            transport.sendMessage(message, message.getRecipients(Message.RecipientType.TO));
            transport.close();
            
            //Transport.send(message)
            out.println("Your Message send Successfully.......");
        }catch(MessagingException mex)
        {
            mex.printStackTrace();
            
            //Error: Unable to find Send Mail.....
            out.println(mex);
        }
    %>

    </body>
</html>
