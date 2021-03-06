<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@page import="java.io.*,java.sql.*,java.util.*" %>
        <%! String pnm,pdate; int prodid,prodprice,q,custid; %>
        <%
            custid = Integer.parseInt(session.getAttribute("cid").toString());
            prodid = Integer.parseInt(request.getParameter("pid"));
            pnm = request.getParameter("pnm");
            prodprice = Integer.parseInt(request.getParameter("pr"));
            q = Integer.parseInt(request.getParameter("qty"));
            
            // JSP Code for fetching the Current Date
            java.util.Date date = new java.util.Date();
            pdate = date.toString();
            
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","bryan","bryan");
            String qry = "insert into CartDetails values(?,?,?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(qry);
            ps.setInt(1,custid);
            ps.setInt(2,prodid);
            ps.setString(3,pnm);
            ps.setInt(4,prodprice);
            ps.setInt(5,q);
            ps.setString(6,pdate);
            ps.executeUpdate();
            out.println("Product has been successfully added to Cart");
        %>
    </body>
</html>
