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
    
    <!--font awesome kits CDN-->
    <script src="https://kit.fontawesome.com/612f282b90.js" crossorigin="anonymous"></script>
    
    <!-- Jquery CDN-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    
    <!-- Google Fonts CDN -->
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    
    <title>Our Muffins</title>
    
    <style>
        .btn:hover{
            background: brown;
        }
        .card{
            overflow: hidden;
        }
        .card-img-top{
            transform: scale(1);
            transition: 0.3s ease-in-out;
        }
        .card-img-top:hover{
            transform: scale(1.1);
        }
        
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
        
    <!-- Breadcrumbs section -->
    <section class="breadcrumbs-section">
              <div class="container p-2">
                  <div class="row">
                      <div class="col-12 text-center">
                          <ol class="breadcrumb justify-content-center">
                              <li class="breadcrumb-item"><a href="home.jsp">Home</a></li>
                              <li class="breadcrumb-item"><a href="product.jsp">Product</a></li>
                              <li class="breadcrumb-item active">Muffins</li>
                          </ol>
                      </div>
                  </div>
              </div>
    </section>
      
      <!-- Muffins Product Section -->
      <section class="jumbotron mb-4">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 col-md-6 col-sm-12 mb-4">
                        <div class="card shadow text-center">
                            <a href="productdetails.jsp?pid=1025"><img class="card-img-top" src="../images/Muffins/muffins1.jpg"></a>
                            <div class="card-body bg-warning">
                                <h4 class="card-title">Chocolate Muffins</h4>
                                 <p><i class="fa fa-inr"></i><strike>120</strike> <i class="fa fa-inr">84/-</i></p>
                                <button class="btn btn-success btn-block" onclick="window.location.href='productdetails.jsp?pid=1025'"><i class="fa fa-bolt"></i> Buy Now</button>
                                <button class="btn btn-success btn-block" onclick="window.location.href='cart.jsp?pid=1025&pnm=Chocolate Muffins&pr=84&qty=1'"><i class="fa fa-cart-plus"></i> Add to Cart</button>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-lg-4 col-md-6 col-sm-12 mb-4">
                        <div class="card text-center">
                            <a href="productdetails.jsp?pid=1026"><img class="card-img-top" src="../images/Muffins/muffins2.jpg"></a>
                            <div class="card-body bg-warning">
                                <h4 class="card-title">Banana Muffins</h4>
                                 <p><i class="fa fa-inr"></i><strike>100</strike> <i class="fa fa-inr">70/-</i></p>
                                <button class="btn btn-success btn-block" onclick="window.location.href='productdetails.jsp?pid=1026'"><i class="fa fa-bolt"></i> Buy Now</button>
                                <button class="btn btn-success btn-block" onclick="window.location.href='cart.jsp?pid=1026&pnm=Banana Muffins&pr=70&qty=1'"><i class="fa fa-cart-plus"></i> Add to Cart</button>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-lg-4 col-md-6 col-sm-12 mb-4">
                        <div class="card text-center">
                            <a href="productdetails.jsp?pid=1027"><img class="card-img-top" src="../images/Muffins/muffins3.jpeg"></a>
                            <div class="card-body bg-warning">
                                <h4 class="card-title">Blueberry Muffins</h4>
                                 <p><i class="fa fa-inr"></i><strike>110</strike> <i class="fa fa-inr">77/-</i></p>
                                <button class="btn btn-success btn-block" onclick="window.location.href='productdetails.jsp?pid=1027'"><i class="fa fa-bolt"></i> Buy Now</button>
                                <button class="btn btn-success btn-block" onclick="window.location.href='cart.jsp?pid=1027&pnm=Blueberry Muffins&pr=77&qty=1'"><i class="fa fa-cart-plus"></i> Add to Cart</button>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-lg-4 col-md-6 col-sm-12 mb-4">
                        <div class="card text-center">
                            <a href="productdetails.jsp?pid=1028"><img class="card-img-top" src="../images/Muffins/muffins4.jpeg"></a>
                            <div class="card-body bg-warning">
                                <h4 class="card-title">Chocochip Muffin</h4>
                                 <p><i class="fa fa-inr"></i><strike>120</strike> <i class="fa fa-inr">84/-</i></p>
                                <button class="btn btn-success btn-block" onclick="window.location.href='productdetails.jsp?pid=1028'"><i class="fa fa-bolt"></i> Buy Now</button>
                                <button class="btn btn-success btn-block" onclick="window.location.href='cart.jsp?pid=1028&pnm=Chocochip Muffins&pr=84&qty=1'"><i class="fa fa-cart-plus"></i> Add to Cart</button>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-lg-4 col-md-6 col-sm-12 mb-4">
                        <div class="card text-center">
                            <a href="productdetails.jsp?pid=1029"><img class="card-img-top" src="../images/Muffins/muffins5.jpg"></a>
                            <div class="card-body bg-warning">
                                <h4 class="card-title">Muffin Chocolate Chip</h4>
                                 <p><i class="fa fa-inr"></i><strike>100</strike> <i class="fa fa-inr">70/-</i></p>
                                <button class="btn btn-success btn-block" onclick="window.location.href='productdetails.jsp?pid=1029'"><i class="fa fa-bolt"></i> Buy Now</button>
                                <button class="btn btn-success btn-block" onclick="window.location.href='cart.jsp?pid=1029&pnm=Muffins Chocolate Chip&pr=70&qty=1'"><i class="fa fa-cart-plus"></i> Add to Cart</button>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-lg-4 col-md-6 col-sm-12 mb-4">
                        <div class="card text-center">
                            <a href="productdetails.jsp?pid=1030"><img class="card-img-top" src="../images/Muffins/muffins6.jpg"></a>
                            <div class="card-body bg-warning">
                                <h4 class="card-title">Cranberry Muffin</h4>
                                 <p><i class="fa fa-inr"></i><strike>110</strike> <i class="fa fa-inr">77/-</i></p>
                                <button class="btn btn-success btn-block" onclick="window.location.href='productdetails.jsp?pid=1030'"><i class="fa fa-bolt"></i> Buy Now</button>
                                <button class="btn btn-success btn-block" onclick="window.location.href='cart.jsp?pid=1030&pnm=Cranberry Muffins&pr=77&qty=1'"><i class="fa fa-cart-plus"></i> Add to Cart</button>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-lg-4 col-md-6 col-sm-12 mb-4">
                        <div class="card text-center">
                            <a href="productdetails.jsp?pid=1031"><img class="card-img-top" src="../images/Muffins/muffins7.jpeg"></a>
                            <div class="card-body bg-warning">
                                <h4 class="card-title">Raspberry Muffin</h4>
                                 <p><i class="fa fa-inr"></i><strike>120</strike> <i class="fa fa-inr">84/-</i></p>
                                <button class="btn btn-success btn-block" onclick="window.location.href='productdetails.jsp?pid=1031'"><i class="fa fa-bolt"></i> Buy Now</button>
                                <button class="btn btn-success btn-block" onclick="window.location.href='cart.jsp?pid=1031&pnm=Raspberry Muffins&pr=84&qty=1'"><i class="fa fa-cart-plus"></i> Add to Cart</button>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-lg-4 col-md-6 col-sm-12 mb-4">
                        <div class="card text-center">
                            <a href="productdetails.jsp?pid=1032"><img class="card-img-top" src="../images/Muffins/muffins8.jpg"></a>
                            <div class="card-body bg-warning">
                                <h4 class="card-title">Double Choco Chip Muffins</h4>
                                 <p><i class="fa fa-inr"></i><strike>100</strike> <i class="fa fa-inr">70/-</i></p>
                                <button class="btn btn-success btn-block" onclick="window.location.href='productdetails.jsp?pid=1032'"><i class="fa fa-bolt"></i> Buy Now</button>
                                <button class="btn btn-success btn-block" onclick="window.location.href='cart.jsp?pid=1032&pnm=Double Choco Chip Muffins&pr=70&qty=1'"><i class="fa fa-cart-plus"></i> Add to Cart</button>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-lg-4 col-md-6 col-sm-12 mb-4">
                        <div class="card text-center">
                            <a href="productdetails.jsp?pid=1033"><img class="card-img-top" src="../images/Muffins/muffins9.jpg"></a>
                            <div class="card-body bg-warning">
                                <h4 class="card-title">Muffin Blueberry</h4>
                                 <p><i class="fa fa-inr"></i><strike>110</strike> <i class="fa fa-inr">77/-</i></p>
                                <button class="btn btn-success btn-block" onclick="window.location.href='productdetails.jsp?pid=1033'"><i class="fa fa-bolt"></i> Buy Now</button>
                                <button class="btn btn-success btn-block" onclick="window.location.href='cart.jsp?pid=1033&pnm=Muffins Blueberry&pr=77&qty=1'"><i class="fa fa-cart-plus"></i> Add to Cart</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        
    <!-- Footer Naviagation -->
    <footer class="footer-top">
          <div class="container">
              <div class="row">
                  <div class="col-md-3 col-sm-6 col-xs-12 segment-one md-mb-30 sm-mb-30">
                      <h3>About Us</h3>
                      <p style="font-family: 'Pacifico', cursive;">CuppyCake is a caf� and bakery situated in Greater Noida. Established in 2013 by a home baker and her son who is a graduate from IIT Delhi and FMS Delhi.</p>
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
                      <p style="font-family: 'Righteous', cursive;">CuppyCake is a caf� and bakery situated in Greater Noida. Established in 2013 by a home baker and her son who is a graduate from IIT Delhi and FMS Delhi.</p>
                      <form action="">
                          <input type="email" placeholder="Email">
                          <input type="submit" value="Subscribe Us">
                      </form>
                  </div>
              </div>
          </div>
          
          <p class="footer-bottom-text">All Right reserved by &copy;CuppyCake.2020</p>
          
      </footer>
    
    <script>
         $(document).ready(function(){
             $('.col-lg-4').hover(
                 //trigger when mouse hover
                 function(){
                     $(this).animate({
                         marginTop: "-=1%"
                     },200);
             },
             //trigger out curser
             function(){
                 $(this).animate({
                     marginTop: "0%"
                 },200);
             }
         ); 
    });
      </script>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  
    <script src="../owlcarousel/owl.carousel.min.js"></script>
    <script src="../js/jquery2.js"></script>
 
  </body>
</html>