<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@page import="java.io.*,java.sql.*,java.util.*,org.apache.commons.fileupload.disk.DiskFileItemFactory,org.apache.commons.fileupload.servlet.ServletFileUpload,org.apache.commons.fileupload.FileItem" %>
        <%! String pic,pnm,disc,desc,ptype; int prodid,prodprice; %>
        <%
            try{
                DiskFileItemFactory factory = new DiskFileItemFactory();
                ServletFileUpload sfu = new ServletFileUpload(factory);
                
                if(! ServletFileUpload.isMultipartContent(request)){
                    out.println("Sorry... No file Selected");
                }
                
                // Parse Request
                List items = sfu.parseRequest(request);
                
                FileItem pid = (FileItem) items.get(0);
                String prdid = pid.getString();
                prodid = Integer.parseInt(prdid);
                
                FileItem name = (FileItem) items.get(1);
                String pnm = name.getString();
                
                FileItem price = (FileItem) items.get(2);
                String pr = price.getString();
                prodprice = Integer.parseInt(pr);
                
                FileItem d = (FileItem) items.get(3);
                String desc = d.getString();
                
                FileItem pt = (FileItem) items.get(4);
                String ptype = pt.getString();
                
                FileItem dsc = (FileItem) items.get(5);
                String disc = dsc.getString();
                
                //Get Upload File
                FileItem file = (FileItem) items.get(6);
                
                Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","bryan","bryan");
                String qry = "insert into Product values(?,?,?,?,?,?,?)";
                PreparedStatement ps = con.prepareStatement(qry);
                
                ps.setInt(1,prodid);
                ps.setString(2,pnm);
                ps.setInt(3,prodprice);
                ps.setString(4,desc);
                ps.setString(5,ptype);
                ps.setString(6,disc);
                ps.setBinaryStream(7,file.getInputStream(), (int)file.getSize());
                ps.executeUpdate();
                
                out.println("Product Added Successfully...");
                
            }catch(Exception ex)
            {
                out.println(ex);
            }
        %>
    </body>
</html>
