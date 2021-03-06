<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
<%@page import="java.util.*,javax.mail.*"%>
<%@page import="javax.mail.internet.*"%>
<%@page import="java.sql.*"%>
        <%! String regmail; %>
        <%
            try{
                regmail = request.getParameter("mail");
                Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","bryan","bryan");
                String qry = "select * from Customer where Email="+"'"+regmail+"'";
                PreparedStatement ps = con.prepareStatement(qry);
                
                ResultSet rs = ps.executeQuery();
                if(rs.next())
                {
                    final String messg = "Your New Password is ="+rs.getString("Password");
                    final String from = "hemantshrsth@gmail.com";
                    final String pass = "bunkerz@015";
                    String host = "smtp.gmail.com";
                    String to = regmail;
                    String subject = "Password Recovery";
                    
                    // Creating Properties Object
                    Properties props = new Properties();
                    props.put("mail.smtp.host", host);
                    props.put("mail.transport.protocol","smtp");
                    props.put("mail.smtp.auth","true");
                    props.put("mail.smtp.starttls.enable","true"); 
                    props.put("mail.user", from);
                    props.put("mail.password",pass);
                    props.put("mail.port","587");
                    
                    //Authorized the Session Object
                    
                    Session mailSession=Session.getInstance(props, new javax.mail.Authenticator(){
                    @Override
                    
                    protected PasswordAuthentication getPasswordAuthentication(){
                        return new PasswordAuthentication(from,pass);
                    }
                    });
                    
                    // Create a default MimeMessage Object
                    
                    MimeMessage message = new MimeMessage(mailSession);
                    message.setFrom(new InternetAddress(from));
                    message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));
                    message.setSubject(subject);
                    message.setText(messg);
                    
                    // Send Message
                    
                    Transport transport = mailSession.getTransport();
                    transport.connect();
                    transport.sendMessage(message, message.getRecipients(Message.RecipientType.TO));
                    transport.close();
                    out.println("Your Password sent to mail successfully...");
                }
                else
                    out.println("Email ID Not Required");
            }catch(MessagingException mex)
            {
                out.println(mex);
            }
        %>
    </body>
</html>    

