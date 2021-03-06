<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    
        
        <title>Your Orders</title>
    </head>
    <body>
        <%@page import="java.sql.*" %>
        <%
            try{
            int r; ResultSet rs;
            r = Integer.parseInt(request.getParameter("orderno"));
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","bryan","bryan");
            String qry = "select * from OrderDetails where Order_No=?";
            PreparedStatement ps = con.prepareStatement(qry);
            ps.setInt(1,r);
            rs = ps.executeQuery();
        %>
        
        <div class="container justify-content-center pt-4"> 
            <div class="row">
              <div class="col-12">
                  <h2 style="margin-bottom: 30px;">
                      Your Orders
                  </h2>
              </div>
              <div class="col-12 jumbotron">
                  <table class="table table-hover table-bordered text-center">
                    <%
                        if(rs.next())
                        {
                    %>
                      <thead class="bg-dark text-white">
                          <tr>
                              <th scope="col">Order No</th>
                              <th scope="col">Order Date</th>
                              <th scope="col">Status</th>
                          </tr>
                      </thead>
                      <tbody>
                          <tr>
                              <td scope="row">
                                  <%= rs.getInt("Order_No") %>
                              </td>
                              <td scope="row">
                                  <%= rs.getString("Order_Date") %>
                              </td>
                              <td scope="row">
                                  <%= rs.getString("Status") %>
                              </td>
                          </tr>
                      </tbody>
                  </table>
              </div>
            </div>
        </div>
                              
        <%
            }
            else
            {
                out.println("Record Not Found");
            }
            
            }catch(Exception ex)
            {
                out.println(ex);
            }
        %>
        
        <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  
        
    </body>
</html>
