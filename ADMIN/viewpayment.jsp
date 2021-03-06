<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    
    <!-- Jquery CDN-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    
    <!--font awesome kits CDN-->
    <script src="https://kit.fontawesome.com/612f282b90.js" crossorigin="anonymous"></script>
    
    <!-- Google Fonts CDN -->
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    
    <link rel="stylesheet" href="../CSS/style.css">
         
    <title>Admin Home-Page</title>
    
    <!--Admin Panel Style Start-->
    <style>
    #menu ul li a:hover{
        background-color: #fff;
        color:#000;
        border-radius: 3px;
    }
    </style>
    <!--Admin panel style end-->
    
  </head>
  <body>
     
      <!--navigation menu start-->
      <nav class="navbar navbar-expand-lg navbar-expand-md navbar-dark bg-dark sticky-top">
          <a class="navbar-brand text-warning">
              <i class="fa fa-birthday-cake"></i> CuppyCake
          </a>
      <button class="navbar-toggler" data-toggle="collapse" data-target="#menu">
          <span class="navbar-toggler-icon"></span>
      </button>
          
          <div class="collapse navbar-collapse" id="menu">
              <ul class="navbar-nav">
                  <li class="nav-item active">
                      <a href="adminhome.jsp" class="nav-link">
                          <i class="fa fa-home"></i> Dashboard
                      </a>
                  </li>
                  <li class="nav-item">
                      <a href="" class="nav-link" data-toggle="modal" data-target="#mymodel">
                          <i class="fa fa-bell"></i> Alert
                      </a>
                  </li>
                  <li class="nav-item">
                      <div class="dropdown">
                          <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">
                              <i class="fas fa-hands-helping"></i> Services
                          </a>
                          
                          <div class="dropdown-menu">
                              <a href="viewcancelorder.jsp" class="dropdown-item">View Cancel Orders</a>
                              <a href="viewreturnorder.jsp" class="dropdown-item">View Return Orders</a>
                          </div>
                          
                      </div>
                  </li>
              </ul>
               <ul class="navbar-nav ml-auto">
                  <li class="nav-item">
                      <div class="dropdown">
                          <a href="" class="nav-link">
                              <i class="fa fa-id-badge"></i>
                              <span>
                                  <%
                                        if(session.getAttribute("anm") == null)
                                        response.sendRedirect("adminlogin.jsp");
                                    else
                                        out.println(session.getAttribute("anm").toString());
                                  %>
                              </span>
                          </a>  
                      </div>
                  </li>
                  <li class="nav-item">
                      <a href="adminlogin.jsp" class="nav-link">
                          <i class="fa fa-sign-out"></i> Logout
                      </a>
                  </li>
              </ul>
              <form class="form-inline">
                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-primary" type="submit">Search</button>
                </form>
          </div>
          
      </nav>
      
     <!--navigation menu end-->
     
     <!-- using model for alert menu start-->
     
     <div class="modal fade" id="mymodel" style="font-family: 'Zilla Slab', serif;" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="mymodelLabel" aria-hidden="true">
              <div class="modal-dialog modal-sm" role="document">
                  <div class="modal-content">
                      <div class="modal-header popupheader" style="font-family: 'Zilla Slab', serif;">
                        <h5 class="col-auto modal-title text-center" id="mymodelLabel">Alert!</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                          <span aria-hidden="true">&times;</span>
                        </button>
                      </div>
                      
                      <div class="modal-body text-success">
                          <h3><span style="font-weight: bolder;">0</span> Notification</h3>
                      </div>
                  </div>
              </div>
          </div>
     
     <!-- using model for alert menu end-->

    
    <%@page import="java.sql.*" %>
        <%
            try{
                ResultSet rs;
                Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","bryan","bryan");
                String qry = "select Transaction_ID, Amount, Cust_ID, Pay_Date, Card_No, Card_Type, Pay_Type, Bank_Name from Payment";
                PreparedStatement ps = con.prepareStatement(qry);
                rs = ps.executeQuery();
        %>
        
            <div class="container justify-content-center pt-4"> 
            <div class="row">
              <div class="col-12">
                  <h2 style="margin-bottom: 30px;">
                      New Orders
                  </h2>
              </div>
              <div class="col-12 jumbotron">
                  <table class="table table-hover table-bordered text-center">
                    <%
                        while(rs.next())
                        {
                    %>
                      <thead class="bg-dark text-white">
                          <tr>
                              <th scope="col">Transaction ID</th>
                              <th scope="col">Amount</th>
                              <th scope="col">Customer ID</th>
                              <th scope="col">Pay Date</th>
                              <th scope="col">Card No</th>
                              <th scope="col">Card Type</th>
                              <th scope="col">Pay Type</th>
                              <th scope="col">Bank Name</th>
                          </tr>
                      </thead>
                      <tbody>
                          <tr>
                              <td scope="row">
                                  <%= rs.getInt("Transaction_ID") %>
                              </td>
                              <td scope="row">
                                  <%= rs.getInt("Amount") %>
                              </td>
                              <td scope="row">
                                  <%= rs.getInt("Cust_ID") %>
                              </td>
                              <td scope="row">
                                  <%= rs.getString("Pay_Date") %>
                              </td>
                              <td scope="row">
                                  <%= rs.getInt("Card_No") %>
                              </td>
                              <td scope="row">
                                  <%= rs.getString("Card_Type") %>
                              </td>
                              <td scope="row">
                                  <%= rs.getString("Pay_Type") %>
                              </td>
                              <td scope="row">
                                  <%= rs.getString("Bank_Name") %>
                              </td>
                          </tr>
                      </tbody>
                      <%
                        }
                    }catch(Exception ex)
                                {
                                    System.out.println(ex);
                                }
                    %>
                  </table>
              </div>
          </div>
    </div>
      
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  
    <script src="../owlcarousel/owl.carousel.min.js"></script>
    <script src="../js/jquery2.js"></script>
 
  </body>
</html>
