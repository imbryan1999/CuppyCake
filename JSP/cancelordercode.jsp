<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@page import="java.sql.*" %>
        <%! int ono; String r,cdate; ResultSet rs; %>
        <%
            try{
                    java.util.Date today = new java.util.Date();
                    Date cdate = new java.sql.Date(today.getTime());
                
                ono = Integer.parseInt(request.getParameter("orderno"));
                r = request.getParameter("reason");
                
                Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","bryan","bryan");
                String qry = "select * from OrderDetails where Order_No=?";
                PreparedStatement ps = con.prepareStatement(qry);
                ps.setInt(1,ono);
                rs = ps.executeQuery();
                
                while(rs.next())
                {
                    String qry2 = "insert into CancelOrders values(?,?,?)";
                    PreparedStatement ps2 = con.prepareStatement(qry2);
                    ps2.setInt(1,ono);
                    ps2.setString(2,cdate.toString());
                    ps2.setString(3,r);
                    int y = ps2.executeUpdate();
                }
                
                String qry3 = "delete from OrderDetails where Order_No=?";
                PreparedStatement ps3 = con.prepareStatement(qry3);
                ps3.setInt(1,ono);
                int z = ps3.executeUpdate();
                
                if(z == 1)
                {
            %>
            
            <div>
           <table align="center">
               <td>
                   <%="Your Order is Cancelled Successfully....."%>
                   <a href="home.jsp">Click Here</a>
               </td>
           </table>
            </div>
                  
                   <%
                    }
                       else
                    {
                   %>
                   
                   <div>
                        <table align="center">
                            <td>
                                <%="Your have entered Wrong Order No..."%>
                                <a href="home.jsp">Click Here</a>
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
