<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <!-- CSS FILE -->
    <link rel="stylesheet" href="../CSS/style.css">
    
    <!--font awesome kits CDN-->
    <script src="https://kit.fontawesome.com/612f282b90.js" crossorigin="anonymous"></script>
    
    <!-- Jquery CDN-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    
    <!-- Google Fonts CDN -->
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    
    <title>Sign-Up Page!</title>
    
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
               <a href="" data-toggle="modal" data-target="#mymodel" title="User"><i class="fa fa-user-circle-o ml-4 text-light" aria-hidden="true"> User</i></a>
               <a href="viewcart.jsp" title="My-Cart"><i class="fa fa-shopping-cart ml-4 text-light" aria-hidden="true"> My-Cart</i></a>
          </div>
          
          <!--Using Model for User Login-->
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
                              
                                <a href="forgetpassword.jsp">Forgot Password</a><br>
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
    
    <!-- Breadcrumbs section -->
    <section class="breadcrumbs-section">
              <div class="container p-2">
                  <div class="row">
                      <div class="col-12 text-center">
                          <ol class="breadcrumb justify-content-center">
                              <li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
                              <li class="breadcrumb-item">SignUp</li>
                          </ol>
                      </div>
                  </div>
              </div>
    </section>
    
      <div class="signup-form p-4 container">
            <form  class="jumbotron" action="signupcode.jsp">
            
            <%@page import="java.sql.*" %>
            <%! int cid; %>
            
            <%
                try{
                    
                    ResultSet rs;
                    Class.forName("oracle.jdbc.driver.OracleDriver");
                    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","bryan","bryan");
                    String qry = "select max(Cust_ID) from Customer";
                    PreparedStatement ps = con.prepareStatement(qry);
                    
                    rs = ps.executeQuery();
                    if(rs.next())
                    {
                        cid = rs.getInt(1);
                        cid++;
                    }
                }catch(Exception ex)
                {
                    out.println(ex);
                }
            %>
            
            <div class="text-center">
                <h4>SignUp Here!</h4>
                <hr class="w-25 mx-auto pt-3">
            </div>
            
            <div class="form-row justify-content-center">
                <div class="form-group col-md-6 col-sm-6">
                    <label for="custid">Customer ID</label>
                    <input type="text" name="cid" class="form-control" id="custid" placeholder="CustomerID" value="<%=cid%>" readonly="true">
                </div>
            </div>
                
            <div class="form-row justify-content-center">
                <div class="form-group col-md-6 col-sm-6">
                    <label for="inputPassword">Password</label>
                        <input type="password" name="pwd" class="form-control" id="inputPassword" placeholder="Password" required="true">
                        <h5 id="checkpass"></h5>
                </div>        
            </div>
                
            <div class="form-row justify-content-center">
                <div class="form-group col-md-6 col-sm-6">
                    <label for="usernm">UserName</label>
                    <input type="text" name="usernm" class="form-control" id="usernm" placeholder="UserName" required="true">
                    <h5 id="checkuser"></h5>
                </div>
            </div>
                
            <div class="form-row justify-content-center">
                <div class="form-group col-md-3 col-sm-3">
                    <label for="fname">First Name</label>
                        <input type="text" name="fname" class="form-control" id="fname" placeholder="First Name" required="true">
                        <h5 id="checkfnm"></h5>
                </div>
                <div class="form-group col-md-3 col-sm-3">
                    <label for="lname">Last Name</label>
                    <input type="text" name="lname" class="form-control" id="lname" placeholder="Last Name" required="true">
                    <h5 id="checklnm"></h5>
                </div>
            </div>
                
            <div class="form-row justify-content-center">
                <div class="form-group col-md-6 col-sm-6m">
                    <label for="addr">Address</label>
                    <input type="text" name="addr" class="form-control" id="addr" placeholder="Your Address" required="true">
                    <h5 id="checkaddr"></h5>
                </div>
            </div>
                
            <div class="form-row justify-content-center">
                <div class="form-group col-md-6 col-sm-6">
                    <label>Gender</label>
                    <div class="form-control">
                        <label for="gender" class="radio-inline">
                            <input type="radio" value="Male" name="gender" id="gender" required="true">
                            Male
                        </label>
                        <label for="gender" class="radio-inline">
                            <input type="radio" value="Female" name="gender">
                            Female
                        </label>
                        <h5 id="checkgender"></h5>
                    </div>
                </div>
            </div>
                
            <div class="form-row justify-content-center">
                <div class="form-group col-md-6 col-sm-6">
                  <label for="email">Email</label>
                  <input type="email" name="email" class="form-control" id="email" placeholder="Email" required="true">
                  <h5 id="checkmail"></h5>
                </div>
            </div>
                
            <div class="form-row justify-content-center">
                <div class="form-group col-md-6 col-sm-6">
                   <label for="num">Mobile No</label>
                   <input type="number" name="mob" class="form-control" id="num" placeholder="Mobile No" required="true">
                   <h5 id="checknum"></h5>
                </div>
            </div>
                
            <div class="form-row justify-content-center m-5 ">
                <button type="submit" class="btn btn-danger btn-block col-md-6">Sign Up</button>
            </div>
                
            <div class="text-center">
                <a href="index.jsp" class="text-center">Return to Store</a>
            </div>
                
            </form>
      </div>
                
    <!-- Footer Naviagation -->
    <footer class="footer-top">
          <div class="container">
              <div class="row">
                  <div class="col-md-3 col-sm-6 col-xs-12 segment-one md-mb-30 sm-mb-30">
                      <h3>About Us</h3>
                      <p style="font-family: 'Pacifico', cursive;">CuppyCake is a caf? and bakery situated in Greater Noida. Established in 2013 by a home baker and her son who is a graduate from IIT Delhi and FMS Delhi.</p>
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
                      <p style="font-family: 'Righteous', cursive;">CuppyCake is a caf? and bakery situated in Greater Noida. Established in 2013 by a home baker and her son who is a graduate from IIT Delhi and FMS Delhi.</p>
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
    <script src="../JS/jquery2.js"></script>
    <script src="../JS/validation.js"></script>
    
  </body>
</html>