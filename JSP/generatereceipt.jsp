<%--
    Document   : generatereceipt
    Created on : Mar 17, 2020, 1:36:51 PM
    Author     : BRYAN SHRESTHA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    <script>
        function show()
        {
            if(confirm("Invalid Card Detail"));
            {
                window.location = "payment.jsp";
            }
            else
            {
                window.location = "generatereceipt.jsp";
            }
        }
    </script>
    </head>
    <body>
        <%@page import="java.sql.*"%>
        <%! int tid,amt,cno,cvv; String pdate,ctype,ptype,bank,val,cholder; ResultSet rs; %>
        <%
            java.util.Date today = new java.util.Date();
            Date currentDate = new java.sql.Date(today.getTime());
            
            tid = Integer.parseInt(request.getParameter("transid"));
            pdate = request.getParameter("paydate");
            amt = Integer.parseInt(request.getParameter("amount"));
            cno = Integer.parseInt(request.getParameter("cardno"));
            ctype = request.getParameter("cardtype");
            ptype = request.getParameter("paytype");
            bank = request.getParameter("bankname");
            val = request.getParameter("valdate");
            cvv = Integer.parseInt(request.getParameter("cvv"));
            cholder = request.getParameter("cardholder");
            
            try{
                Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","bryan","bryan");
                String qry = "select * from Bank where Card_No="+cno+" and Card_Type="+" '"+ctype+"' and Bank_Name="+" '"+bank+"' and Valid_Upto="+val+" and CVV="+cvv+" and Card_Holder="+" '"+cholder+"' and Balance="+amt;
                PreparedStatement ps = con.prepareStatement(qry);
                
             
                rs = ps.executeQuery();
                
                if(!rs.next())
                {
        %>
        <script>
            show();
        </script>
        <%
            }
else
{
    int cid = Integer.parseInt(session.getAttribute("cid").toString());
    String qry1 = "insert into Payment values(?,?,?,?,?,?,?,?)";
    PreparedStatement ps1 = con.prepareStatement(qry1);
    ps.setInt(1,tid);
    ps.setInt(2,amt);
    ps.setInt(3,cid);
    ps.setString(4,currentDate.toString());
    ps.setInt(5,cno);
    ps.setString(6,ctype);
    ps.setString(7,ptype);
    ps.setString(8,bank);

    int x = ps1.executeUpdate();
}
%>

<div style="padding-right: 20px;">
<table align="center" style="border: 2px solid black; display: table; padding: 25px; align-items: center;">
        <tr>
            <td>
                <h2>Thank You for Making Payment!</h2>
            </td>
        </tr>
        <tr>
            <td align="center">
                <h3>Your Payment Receipt</h3>
            </td>
        </tr>
        <tr>
            <td>Transaction ID</td>
            <td><% out.println(tid); %></td>
        </tr>
        <tr>
            <td>Amount</td>
            <td><% out.println(amt); %></td>
        </tr> 
        <tr>
            <td>Card Number</td>
            <td><% out.println(cno); %></td>
        </tr>
        <tr>
            <td>Bank Name</td>
            <td><% out.println(bank); %></td>
        </tr>
        <tr>
            <td>Payment Date</td>
            <td><% out.println(currentDate); %></td>
        </tr>
        <tr align="center">
            <td>
                <input type="button" style="padding: 6px;" value="Print" onclick="window.print()">
            </td>
        </tr>
    </table>
    </div>

<%
            }catch(Exception ex)
            {
                out.println(ex);
            }
%>
    
    </body>
</html>
