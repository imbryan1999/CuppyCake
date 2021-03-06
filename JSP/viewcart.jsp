<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    
    <!-- CSS File -->
    <link rel="stylesheet" href="../CSS/style.css">
    
    <!-- Jquery CDN-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    
     <!--font awesome kits CDN-->
    <script src="https://kit.fontawesome.com/612f282b90.js" crossorigin="anonymous"></script>
    
    <!-- Google Fonts CDN -->
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    
    <title>Home-Page</title>
    
       <!-- css for owl carousel -->
    <style>
    #navbarSupportedContent ul li a:hover{
        background-color: #fff;
        color:#000;
        border-radius: 3px;
    }
    
    </style>
    
  </head>
  <body>
    
      <section>
                <div class="text-right pr-3 bg-dark" font-family: 'Zilla Slab', serif;">
                     <span class="text-white"><i class="fa fa-user-circle-o ml-4 text-light" aria-hidden="true"></i>
                        <%
                            if(session.getAttribute("cnm") == null)
                            response.sendRedirect("index.jsp");
                            else
                            out.println(session.getAttribute("cnm").toString());
                        %>
                    </span>
                  <a href="viewcart.jsp" title="My-Cart"><i class="fa fa-shopping-cart ml-4 text-light" aria-hidden="true"> My-Cart</i></a>
                </div>
                    
        <!-- Modal -->
        <div class="modal fade" id="mymodel" style="font-family: 'Zilla Slab', serif;" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="mymodelLabel" aria-hidden="true">
          <div class="modal-dialog modal-sm" role="document">
            <div class="modal-content">
              <div class="modal-header popupheader" style="font-family: 'Zilla Slab', serif;">
                <h5 class="col-auto modal-title text-center" id="mymodelLabel">Login Here!</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
              <div class="modal-body">
                    <form action="logincode.jsp">
                        <div class="form-group">
                          <label><i class="fa fa-user" aria-hidden="true"></i> Username</label>
                          <input type="text" placeholder="Username" name="usernm" class="form-control">
                        </div>
                        <div class="form-group">
                          <label><i class="fa fa-lock" aria-hidden="true"></i> Password</label>
                          <input type="password" placeholder="Password" name="pwd" class="form-control">
                        </div>
                    <a href="#">Forgot Password</a><br>
                    <span>New User?<a href="signup.jsp"> SignUp</a></span>
                        <div class="modal-footer justify-content-center">
                        <button type="submit" class="btn btn-primary btn-block">Login</button>
                        </div>
                    </form>
              </div>
            </div>
          </div>
        </div>
          
      </section>
      
    <!-- Navigation & Menu Bar -->
    <nav class="navbar navbar-expand-lg navbar-dark sticky-top" style="background: linear-gradient(#ff9966, #ff5e62);">
        
        <a href="#" class="navbar-brand"><img class="border p-1 rounded-circle" src="../images/images.jpeg" height="80" width="150"></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mx-auto" style="font-family: 'Zilla Slab', serif;">
                <li class="nav-item active">
                    <a class="nav-link" href="home.jsp"><i class="fa fa-home"></i> HOME</a>
                </li>
                <li class="nav-item">
                      <div class="dropdown">
                          <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">
                              <i class="fas fa-hands-helping"></i> SERVICES
                          </a>
                          
                          <div class="dropdown-menu">
                              <a href="cancelorder.jsp" class="dropdown-item">Cancel Order</a>
                              <a href="trackorder.jsp" class="dropdown-item">Track Order</a>
                              <a href="returnorder.jsp" class="dropdown-item">Return Order</a>
                              <a href="feedback.jsp" class="dropdown-item">Feedback Us</a>
                          </div>
                          
                      </div>
                  </li>
                <li class="nav-item">
                    <a class="nav-link" href="product.jsp"><i class="fa fa-hamburger"></i> PRODUCTS</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="contactus.jsp"><i class="fas fa-envelope-square"></i> CONTACT US</a>
                </li>
                <li class="nav-item">
                      <div class="dropdown">
                          <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">
                              <i class="fas fa-users-cog"></i> SETTING
                          </a>
                          
                          <div class="dropdown-menu">
                              <a href="updateprofile.jsp" class="dropdown-item"><i class="fas fa-user-edit"></i> Update Profile</a>
                              <a href="changepass.jsp" class="dropdown-item"><i class="fas fa-key"></i> Change Password</a>
                              <a href="index.jsp" class="dropdown-item"><i class="fas fa-sign-out-alt"></i> LogOut</a>
                          </div>
                          
                      </div>
                  </li>
            </ul>
            
            <form class="form-inline my-2 my-lg-0">
                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-primary my-2 my-sm-0" type="submit">Search</button>
            </form>
        </div>
        
    </nav>
    
    <%@page import="java.sql.*" %>
        <%! int q,total; %>
        <%
            try{
                int cid; ResultSet rs,rs2;
                cid = Integer.parseInt(session.getAttribute("cid").toString());
                Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","bryan","bryan");
                String qry = "select * from CartDetails where Cust_ID=?";
                PreparedStatement ps = con.prepareStatement(qry);
                ps.setInt(1,cid);
                rs = ps.executeQuery();
                
                String qry2 = "select sum(Qty*Price) from CartDetails where Cust_ID=?";
                PreparedStatement ps2 = con.prepareStatement(qry2);
                ps2.setInt(1, cid);
                rs2 = ps2.executeQuery();
                rs2.next();
                total = rs2.getInt(1);
        %>
        
        <!-- Breadcrumbs section -->
    <section class="breadcrumbs-section">
              <div class="container p-2">
                  <div class="row">
                      <div class="col-12 text-center">
                          <ol class="breadcrumb justify-content-center">
                              <li class="breadcrumb-item"><a href="home.jsp">Home</a></li>
                              <li class="breadcrumb-item">MyCart</li>
                          </ol>
                      </div>
                  </div>
              </div>
    </section>
        
        <form action="payment.jsp">
            <div class="container justify-content-center pt-4"> 
            <div class="row">
              <div class="col-12">
                  <h2 style="margin-bottom: 30px;">
                      My Shopping Cart
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
                              <th scope="col">Product</th>
                              <th scope="col">Product ID</th>
                              <th scope="col">Product Name</th>
                              <th scope="col">Price</th>
                              <th scope="col">Purchase Date</th>
                              <th scope="col">Quantity</th>
                          </tr>
                      </thead>
                      <tbody>
                          <tr>
                              <td scope="row">
                                  <% out.println("<img width='100' height='100' src=DisplayPhoto.jsp?id=" + rs.getInt("Prod_ID") + "></img><p/>"); %>
                              </td>
                              <td scope="row">
                                  <%= rs.getInt("Prod_ID") %>
                              </td>
                              <td scope="row">
                                  <%= rs.getString("Prod_Name") %>
                              </td>
                              <td scope="row">
                                  <%= rs.getInt("Price") %>
                              </td>
                              <td scope="row">
                                  <%= rs.getString("Pay_Date") %>
                              </td>
                              <td scope="row">
                                  <% q=Integer.parseInt(rs.getString("Qty")); %>
                                  <%= rs.getString("Qty") %>
                                  <input type="number" value="<%=q%>" style="width: 30px">
                              </td>
                          </tr>
                      </tbody>
                      <%
                        }
                    }catch(Exception ex)
                                {
                                    out.println(ex);
                                }
                    %>
                  </table>
              </div>
          </div>
 
                  <div class="jumbotron pt-4">
                    <table align="center">
                        <tr>
                            <td>Your Total Bill:</td>
                            <td><h5><i class="fa fa-inr"><%= total %>
                                <%
                                    session.setAttribute("bill",total);
                                %></i> </h5>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="">
                                <div class="col-12 p-4">
                                    <button class="btn btn-outline-success btn-block p-2">Make Payment</button>
                                </div>
                                </div>
                            </td>
                        </tr>
                    </table>
                </div>
        </form>
    </div>
    
    <!-- Footer Naviagation -->
    <footer class="footer-top">
          <div class="container">
              <div class="row">
                  <div class="col-md-3 col-sm-6 col-xs-12 segment-one md-mb-30 sm-mb-30">
                      <h3>About Us</h3>
                      <p style="font-family: 'Pacifico', cursive;">CuppyCake is a café and bakery situated in Greater Noida. Established in 2013 by a home baker and her son who is a graduate from IIT Delhi and FMS Delhi.</p>
                  </div>
                  <div class="col-md-3 col-sm-6 col-xs-12 segment-two md-mb-30 sm-mb-30">
                      <h2>Information</h2>
                      <ul style="font-family: 'Kaushan Script', cursive;">
                          <li><a href="contactus.jsp">Contact Us</a></li>
                          <li><a href="feedback.jsp">Feedback Us</a></li>
                          <li><a href="aboutus.jsp">About Us</a></li>
                          <li><a href="#">Terms & Conditions</a></li>
                          <li><a href="#">FAQs</a></li>
                      </ul>
                  </div>
                  <div class="col-md-3 col-sm-6 col-xs-12 segment-three sm-mb-30">
                      <h2>Follow Us</h2>
                      <p style="font-family: 'Abril Fatface', cursive;">Please Follow us on our Social Media Profile in order to keep Updated</p>
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-instagram"></i></a>
                            <a href="#"><i class="fa fa-pinterest"></i></a>
                  </div>
                  <div class="col-md-3 col-sm-6 col-xs-12 segment-four sm-mb-30">
                      <h2>Our Newsletter</h2>
                      <p style="font-family: 'Righteous', cursive;">CuppyCake is a café and bakery situated in Greater Noida. Established in 2013 by a home baker and her son who is a graduate from IIT Delhi and FMS Delhi.</p>
                      <form action="">
                          <input type="email" placeholder="Email">
                          <input type="submit" value="Subscribe Us">
                      </form>
                  </div>
              </div>
          </div>
          
          <p class="footer-bottom-text">All Right reserved by &copy;CuppyCake.2020</p>
          
      </footer>
      
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  
    <script src="../owlcarousel/owl.carousel.min.js"></script>
    <script src="../js/jquery2.js"></script>
 
  </body>
</html>
