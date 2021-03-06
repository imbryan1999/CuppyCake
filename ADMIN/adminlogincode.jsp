<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%@page import="java.sql.*"%>
       <%
           try{
               String user,pwd;
               ResultSet rs;
               user = request.getParameter("txtuser");
               pwd = request.getParameter("txtpwd");
               
               Class.forName("oracle.jdbc.driver.OracleDriver");
               Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","bryan","bryan");
               String qry = "select * from Admin where Username=? and Password=?";
               PreparedStatement ps = con.prepareStatement(qry);
               ps.setString(1, user);
               ps.setString(2, pwd);
               rs = ps.executeQuery();
               
               if(rs.next())
               {
                 session.setAttribute("anm",rs.getString("Username"));
                 response.sendRedirect("adminhome.jsp");
               }
               else
               {
       %>  
       
       <div>
           <table align="center">
               <td>
                   <%="Wrong Username/Password ... Please try again"%>
                   <a href="adminlogin.jsp">Click Here</a>
               </td>
           </table>
       </div>
       <%
               }
              
           }catch(Exception ex)
           {
               out.println(ex);
           }
       %>
    </body>
</html>
