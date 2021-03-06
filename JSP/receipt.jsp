<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
            function show()
            {
                if(confirm("Invalid Card Details"))
                {
                    window.location="payment.jsp";
                }
                else
                {
                    window.location="receipt.jsp";
                }
            }
        </script>
    </head>
    <body>
        <%@page import="java.sql.*" %>
        <%! int tid,amt,cno,cvv; String pdate,ctype,ptype,bank,val,cholder; ResultSet rs; %>
        <%
            java.util.Date today = new java.util.Date();
            Date pdate = new java.sql.Date(today.getTime());
            
            tid = Integer.parseInt(request.getParameter("transid"));
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
                String qry = "select * from Bank where Card_No=? and Card_Type=? and Bank_Name=? and Valid_Upto=? and CVV=? and Card_Holder=? and Balance>=?";
                PreparedStatement ps = con.prepareStatement(qry);
                ps.setInt(1,cno);
                ps.setString(2,ctype);
                ps.setString(3,bank);
                ps.setString(4,val);
                ps.setInt(5,cvv);
                ps.setString(6,cholder);
                ps.setInt(7,amt);
                
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
    ps.setString(4,pdate.toString());
    ps.setInt(5,cno);
    ps.setString(6,ctype);
    ps.setString(7,ptype);
    ps.setString(8,bank);

    int x = ps1.executeUpdate();
        if(x==1)
        {
            String qry2 = "select * from CartDetails where Cust_ID=?";
            PreparedStatement ps2 = con.prepareStatement(qry2);
            ps2.setInt(1,cid);
            ResultSet rs2 = ps2.executeQuery();
            while(rs2.next())
            {
                String qry3 = "insert into OrderDetails values(?,?,?,?,?,?,?,?)";
                PreparedStatement ps3 = con.prepareStatement(qry3);
                ps3.setInt(1,tid);
                ps3.setString(2, pdate.toString());
                ps3.setInt(3,cid);
                ps3.setInt(4,rs2.getInt("Prod_ID"));
                ps3.setString(5,rs2.getString("Prod_Name"));
                ps3.setInt(6,rs2.getInt("Price"));
                ps3.setInt(7,rs2.getInt("Qty"));
                ps3.setString(8,"Pending");
                
                int y = ps3.executeUpdate();
                if(y==1)
                {
                    String qry4 = "delete from CartDetails where Cust_ID=?";
                    PreparedStatement ps4 = con.prepareStatement(qry4);
                    ps4.setInt(1,cid);
                    int z = ps4.executeUpdate();
                }
            }
        }
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
            <td><% out.println(pdate); %></td>
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
