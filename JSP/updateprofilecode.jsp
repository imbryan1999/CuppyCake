<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%@page import="java.sql.*" %>
        <%! int cid; String pwd,user,fnm,lnm,addr,g,mail,m; %>
        
        <%
            try{
                
                cid = Integer.parseInt(request.getAttribute("cid").toString());
                pwd = request.getParameter("pwd");
                user = request.getParameter("usernm");
                fnm = request.getParameter("fname");
                lnm = request.getParameter("lname");
                addr = request.getParameter("addr");
                g = request.getParameter("gender");
                mail = request.getParameter("email");
                m = request.getParameter("mob");
                
                Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","bryan","bryan");
                String qry = "update Customer set Password=?, Username=?, First_Name=?, Last_Name=?, Address=?, Gender=?, Email=?, Phone=? where Cust_ID=?";
                PreparedStatement ps = con.prepareStatement(qry);
                
                ps.setString(1, pwd);
                ps.setString(2, user);
                ps.setString(3, fnm);
                ps.setString(4, lnm);
                ps.setString(5, addr);
                ps.setString(6, g);
                ps.setString(7, mail);
                ps.setString(8, m);
                ps.setInt(9, cid);
                
                int r = ps.executeUpdate();
                if(r==1)
                    out.println("Profile Updated...");
                else
                    out.println("Profile Not Updated...");
                
            }catch(Exception ex)
            {
                System.out.println(ex);
            }
        %>
        
    </body>
</html>
