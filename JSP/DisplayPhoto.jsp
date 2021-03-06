<%-- 
    Document   : DisplayPhoto
    Created on : Mar 20, 2020, 12:18:18 PM
    Author     : BRYAN SHRESTHA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@page import="java.sql.*,java.io.*" %>
        <%
             try{
                Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","bryan","bryan");
                PreparedStatement ps = con.prepareStatement("select PicPath from Product where P_ID=?");
                int id = Integer.parseInt(request.getParameter("id"));
                ps.setInt(1,id);
                ResultSet rs = ps.executeQuery();
                System.out.println("Hello");
                rs.next();
                Blob b = rs.getBlob("PicPath");
                response.setContentType("image/jpeg");
                response.setContentLength( (int) b.length());
                InputStream is = b.getBinaryStream();
                OutputStream os = response.getOutputStream();
                byte buf[] = new byte[(int) b.length()];
                is.read(buf);
                os.write(buf);
                os.close();
            }catch(Exception ex)
            {
                out.println(ex.getMessage());
            }
            %>
    </body>
</html>
