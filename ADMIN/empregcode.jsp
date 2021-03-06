<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%! String id, fnm,desg,dep,e,d,a,m ;%>
<%
    id = request.getParameter("eid");
    fnm = request.getParameter("fname");
    desg = request.getParameter("desig");
    dep = request.getParameter("dept");
    e = request.getParameter("email");
    d = request.getParameter("date");
    a = request.getParameter("age");
    m = request.getParameter("mob");
    
try{
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","bryan","bryan");
    String qry = "insert into Employee values(?,?,?,?,?,?,?,?)";
    PreparedStatement ps = con.prepareStatement(qry);
    ps.setString(1,id);
    ps.setString(2,fnm);
    ps.setString(3,desg);
    ps.setString(4,dep);
    ps.setString(5,e);
    ps.setString(6,d);
    ps.setString(7,a);
    ps.setString(8,m);
    
    int x = ps.executeUpdate();
    if(x==1)
        out.println("Registration Successful...");
    else
        out.println("Registration failed...");
    
    ps.close();
    con.close();
    %>
    <table>
        <tr>
            <td>
                <a href="adminhome.jsp">Click Here!</a>
            </td>
        </tr>
    </table>
    <%
    
}catch(Exception e)
            {
                out.println(e);
            }
%>