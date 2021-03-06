<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%! int id; String pwd,user,fnm,lnm,addr,g,mail,m,p ;%>
<%
    id = Integer.parseInt(request.getParameter("cid"));
    pwd = request.getParameter("pwd");
    user = request.getParameter("usernm");
    fnm = request.getParameter("fname");
    lnm = request.getParameter("lname");
    addr = request.getParameter("addr");
    g = request.getParameter("gender");
    mail = request.getParameter("email");
    m = request.getParameter("mob");
    
try{
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","bryan","bryan");
    String qry = "insert into Customer values(?,?,?,?,?,?,?,?,?)";
    PreparedStatement ps = con.prepareStatement(qry);
    ps.setInt(1,id);
    ps.setString(2,pwd);
    ps.setString(3,user);
    ps.setString(4,fnm);
    ps.setString(5,lnm);
    ps.setString(6,addr);
    ps.setString(7,g);
    ps.setString(8,mail);
    ps.setString(9,m);
    
    int x = ps.executeUpdate();
    if(x==1)
        out.println("Your Account has Created Successfully...");
    else
        out.println("Account creation has failed...");
    
    ps.close();
    con.close();
    %>
    <table>
        <tr>
            <td>
                <a href="index.jsp">Click Here!</a>
            </td>
        </tr>
    </table>
    <%
    
}catch(Exception e)
            {
                out.println(e);
            }
%>