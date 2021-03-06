<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    
    <!-- CSS File -->
    <link rel="stylesheet" href="../CSS/style.css">
    
    <!-- Owl Carousel CSS -->
    <link rel="stylesheet" href="../owlcarousel/assets/owl.carousel.min.css">
    <link rel="stylesheet" href="../owlcarousel/assets/owl.theme.default.min.css">
    
    <!--font awesome kits CDN-->
    <script src="https://kit.fontawesome.com/612f282b90.js" crossorigin="anonymous"></script>
    
    
    <!-- Jquery CDN-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    
    <title>Product Details</title>
    
    <style>
        .owl-carousel .owl-nav button.owl-prev{
            background: 0 0;
            color: inherit;
            border: none;
            padding: 0!important;
            font: inherit;
            position: absolute;
            left: 0;
            top: 50%;
            transform: translateY(-50%);
            border-radius: 50%;
            height: 30px;
            width: 30px;
            background-color: #ffd700;
}

    .owl-carousel .owl-nav button.owl-next{
        background: 0 0;
        color: inherit;
        border: none;
        padding: 0!important;
        font: inherit;
        position: absolute;
        right: 0;
        top: 50%;
        transform: translateY(-50%);
        border-radius: 90%;
        height: 30px;
        width: 30px;
        background-color: #ffd700;
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
                              <li class="breadcrumb-item">Product Details</li>
                          </ol>
                      </div>
                  </div>
              </div>
    </section>
    
      <%@page import ="java.sql.*" %>
        <%
            try{
                int prodid; ResultSet rs;
                prodid = Integer.parseInt(request.getParameter("pid"));
                Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","bryan","bryan");
                String qry = "select * from Product where P_ID=?";
                PreparedStatement ps = con.prepareStatement(qry);
                ps.setInt(1,prodid);
                rs = ps.executeQuery();
                if(rs.next())
                {
        %>
        
        <div class="jumbotron m-3">
        <div class="container mt-4">
            <div class="row">
                <div class="col-md-6 p-2">
                    <div>
                        <img class="img-fluid" src="DisplayPhoto.jsp?id=<%= prodid %>" height="500" width="500" style="border:2px solid #33ff33">
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="row"><h2><%= ""+rs.getString("P_Name")+"<br>" %></h2></div>
                        <div class="row">
                            <h1><i class="fa fa-inr"><%= "Price:"+rs.getInt("P_Price")+"<br>" %></i></h1><h3> &nbsp;</h3> &nbsp; &nbsp; <h2 class="text-success">10% off</h2>
                        </div>
                    <div class="row">
                        <h5 class="text-warning"><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star-half-o" aria-hidden="true"></i><i class="fa fa-star-o" aria-hidden="true"></i></h5>
                        &nbsp; &nbsp;
                        <h5>1200 star rating  and 250 reviews</h5>
                    </div>
                    <div class="row mt-4">
                        <label><h5>Size:</h5></label>
                        <div class="ml-3">
                            <label class="radio-inline mr-2">
                                <input type="radio" value="500g" name="size">500g
                            </label>
                            <label class="radio-inline mr-2">
                                <input type="radio" value="1kg" name="size">1kg
                            </label>
                            <label class="radio-inline mr-2">
                                <input type="radio" value="1.5kg" name="size">1.5kg
                            </label>
                            <label class="radio-inline mr-2">
                                <input type="radio" value="2kg" name="size">2kg
                            </label>
                            <label class="radio-inline mr-2">
                                <input type="radio" value="3kg" name="size">3kg
                            </label>
                            <label class="radio-inline mr-2">
                                <input type="radio" value="4kg" name="size">4kg
                            </label>
                        </div>
                    </div>
                    <div class="row mt-4">
                        
                        <div class="mr-2">
                            <label class="radio-inline">
                                <input type="checkbox" value="Eggless" name="eggless">
                            </label>
                            <label><h5>Eggless</h5></label>
                        </div>
                    </div>
                    <div class="row mt-4">
                       <form class="form-inline">
                            <input class="form-control mr-sm-2" type="search" placeholder="Message on Cake" aria-label="Search">
                       </form>
                    </div>
                    <div class="row mt-4">
                        <h4>Seller: &nbsp; &nbsp;</h4>
                        <p style="font-size: 18px; font-family: cursive">CuppyCake </p>
                    </div>
                    
                    <div class="row mt-4">
                        <div class="form-inline">
                                <button class="btn btn-lg btn-warning m-3"><i class="fa fa-cart-plus"></i> ADD TO CART</button>
                                <button class="btn btn-lg btn-success m-3"><i class="fa fa-bolt"></i> BUY NOW</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </div>
                        
      <div class="container-fluid">
   <div class="container-fluid p-0 ml-auto mt-2" style="background: #ffc371; font-family: 'Zilla Slab', serif;">
              <div>
                  <form class="form-inline my-2 my-lg-0 justify-content-center">
                    <span class="pl-2 mr-auto" style="font-size: 50px">Similar Products</span>
                  </form>
              </div>
        </div>
        
        <!-- Products Slider start -->
          <div class="container-fluid p-4 jumbotron">
              <div class="owl-carousel owl-theme p-4">
            
            <div class="item">
                <div>
                  <div class="card product-card">
                      <a href="cake.jsp"><img class="card-img-top img-fluid" src="../images/Cakes/cake1.webp"></a>
                      <div class="card-body">
                          <div class="card-title"> Choco-Vanilla Cake</div>
                          <div class="card-text m-3"><i class="fa fa-inr">560</i></div>
                          <a href="cake.jsp" class="btn btn-warning btn-block"><i class="fa fa-cart-plus" aria-hidden="true"></i> Buy Now</a>
                      </div>
                  </div>
                </div>
            </div>
            
            <div class="item">
                <div>
                  <div class="card product-card">
                      <a href="cake.jsp"><img class="card-img-top img-fluid" src="../images/Cakes/cake2.webp"></a>
                      <div class="card-body">
                          <div class="card-title"> Kit-Kat and Gems Cake</div>
                         <div class="card-text m-3"><i class="fa fa-inr">420</i></div>
                          <a href="cake.jsp" class="btn btn-warning btn-block"><i class="fa fa-cart-plus" aria-hidden="true"></i> Buy Now</a>
                      </div>
                  </div>
                </div>
            </div>
            
            <div class="item">
                <div>
                  <div class="card product-card">
                      <a href="bread.jsp"><img class="card-img-top img-fluid" src="../images/Breads/bread7.jpg"></a>
                      <div class="card-body">
                          <div class="card-title"> Bread-Brown</div>
                          <div class="card-text m-3"><i class="fa fa-inr">126</i></div>
                          <a href="bread.jsp" class="btn btn-warning btn-block"><i class="fa fa-cart-plus" aria-hidden="true"></i> Buy Now</a>
                      </div>
                  </div>
                </div>
            </div>
            
            <div class="item">
                <div>
                  <div class="card product-card">
                      <a href="cookie.jsp"><img class="card-img-top img-fluid" src="../images/Cookies/cookie5.webp"></a>
                      <div class="card-body">
                          <div class="card-title"> Eggless Choco-Chip Cookie</div>
                          <div class="card-text m-3"><i class="fa fa-inr">315</i></div>
                          <a href="cookie.jsp" class="btn btn-warning btn-block"><i class="fa fa-cart-plus" aria-hidden="true"></i> Buy Now</a>
                      </div>
                  </div>
                </div>
            </div>
            
            <div class="item">
                <div>
                  <div class="card product-card">
                      <a href="donuts.jsp"><img class="card-img-top img-fluid" src="../images/Donuts/donuts8.jpg"></a>
                      <div class="card-body">
                          <div class="card-title"> Donut-Shreds</div>
                          <div class="card-text m-3"><i class="fa fa-inr">70</i></div>
                          <a href="donuts.jsp" class="btn btn-warning btn-block"><i class="fa fa-cart-plus" aria-hidden="true"></i> Buy Now</a>
                      </div>
                  </div>
                </div>
            </div>
            
            <div class="item">
                <div>
                  <div class="card product-card">
                      <a href="muffins.jsp"><img class="card-img-top img-fluid" src="../images/Muffins/muffins7.jpeg"></a>
                      <div class="card-body">
                          <div class="card-title"> Raspberry Muffin</div>
                          <div class="card-text m-3"><i class="fa fa-inr">84</i></div>
                          <a href="muffins.jsp" class="btn btn-warning btn-block"><i class="fa fa-cart-plus" aria-hidden="true"></i> Buy Now</a>
                      </div>
                  </div>
                </div>
            </div>
            
            <div class="item">
                <div>
                  <div class="card product-card">
                      <a href="bread.jsp"><img class="card-img-top img-fluid" src="../images/Breads/bread9.jpg"></a>
                      <div class="card-body">
                          <div class="card-title"> Sweet Bun</div>
                          <div class="card-text m-3"><i class="fa fa-inr">175</i></div>
                          <a href="bread.jsp" class="btn btn-warning btn-block"><i class="fa fa-cart-plus" aria-hidden="true"></i> Buy Now</a>
                      </div>
                  </div>
                </div>
            </div>
            
            <div class="item">
                <div>
                  <div class="card product-card">
                      <a href="muffins.jsp"><img class="card-img-top img-fluid" src="../images/Muffins/muffins3.jpeg"></a>
                      <div class="card-body">
                          <div class="card-title"> Blueberry Muffins</div>
                          <div class="card-text m-3"><i class="fa fa-inr">77</i></div>
                          <a href="muffins.jsp" class="btn btn-warning btn-block"><i class="fa fa-cart-plus" aria-hidden="true"></i> Buy Now</a>
                      </div>
                  </div>
                </div>
            </div>
            
            <div class="item">
                <div>
                  <div class="card product-card">
                      <a href="cookie.jsp"><img class="card-img-top img-fluid" src="../images/Cookies/cookie9.jpg"></a>
                      <div class="card-body">
                          <div class="card-title"> Fruit Biscuit</div>
                          <div class="card-text m-3"><i class="fa fa-inr">315</i></div>
                          <a href="cookie.jsp" class="btn btn-warning btn-block"><i class="fa fa-cart-plus" aria-hidden="true"></i> Buy Now</a>
                      </div>
                  </div>
                </div>
            </div>
              </div>
          </div>
    
    <!-- Footer Naviagation -->
    <footer class="footer-top">
          <div class="container-fluid">
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
    
        <script>
         $(document).ready(function(){
             $('.item').hover(
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
 
          $('.col-lg-6,.col-lg-4, .col-lg-12').hover(
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
        
        <%
                }
                else
                {
                    out.println("Record Not Found......");
                }
            }catch(Exception ex)
            {
                out.println(ex);
            }
        %>
      
<!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
  
    <script src="../owlcarousel/owl.carousel.min.js"></script>
    <script src="../JS/jquery2.js"></script>
  
  </body>
</html>