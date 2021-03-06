<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Change Password</title>
    </head>
    <body>
                    <%@page import="java.sql.*"%>
                    <%
                        try{
                            String cpwd,npwd; int cid;
                            cpwd = request.getParameter("txtpwd");
                            npwd = request.getParameter("txtnpwd");
                            cid = Integer.parseInt(session.getAttribute("cid").toString());
                            Class.forName("oracle.jdbc.driver.OracleDriver");
                            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","bryan","bryan");
                            String qry = "update Customer set Password=? where Cust_ID=? and Password=?";
                            PreparedStatement ps = con.prepareStatement(qry);
                            
                            ps.setString(1,npwd);
                            ps.setInt(2,cid);
                            ps.setString(3,cpwd);
                            int r = ps.executeUpdate();
                            if(r == 1)
                            {
                    %>
                    <div>
                        <table align="center">
                            <td>
                                <%= "Password Changed Successfully....."%>
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
                                        <%="Wrong Current Password"%>
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
