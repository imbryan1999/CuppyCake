<!doctype html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

        <!-- Owl Carousel CSS -->
        <link rel="stylesheet" href="../owlcarousel/assets/owl.carousel.min.css">
        <link rel="stylesheet" href="../owlcarousel/assets/owl.theme.default.min.css">

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

        </style>

    </head>
    <body>

        <section>
            <div class="text-right pr-3 bg-dark" font-family: 'Zilla Slab', serif;">
                 <span class="text-white"><i class="fa fa-user-circle-o ml-4 text-light" aria-hidden="true"></i>
                    <%
                        if (session.getAttribute("cnm") == null) {
                            response.sendRedirect("index.jsp");
                        } else {
                            out.println(session.getAttribute("cnm").toString());
                        }
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

            <a href="home.jsp" class="navbar-brand"><img class="border p-1 rounded-circle" src="../images/images.jpeg" height="80" width="150"></a>
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

        <main>
        
        <!-- Image Carousel-->
        
        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
               <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
               <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
               <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
               <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
            </ol>
            
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="../images/anniversary-banner-sweetcake.jpg" style="" class="d-block w-100" alt="StrawBerry">
               </div>
                <div class="carousel-item">
                    <img src="../images/banner.jpg" style="" class="d-block w-100" alt="CupCake">
               </div>
                <div class="carousel-item">
                    <img src="../images/birthday-banner-sweet.jpg" style="" class="d-block w-100" alt="Chocolate Cake">
               </div>
                <div class="carousel-item">
                    <img src="../images/mid-night-cake-sweet.jpg" style="" class="d-block w-100" alt="Chocolate Cake">
               </div>
                <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                   <span class="carousel-control-prev-icon" aria-hidden="ture"></span>
                   <span class="sr-only">Previous</span>
               </a>
               <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                   <span class="carousel-control-next-icon" aria-hidden="true"></span>
                   <span class="sr-only">Next</span>
               </a>
            </div>
        </div>
        
        <!--product title-->
        <div class="container-fluid p-0 mt-2" style="background: #33ff33; font-family: 'Zilla Slab', serif;">
              <div>
                  <form class="form-inline my-2 my-lg-0 justify-content-center">
                    <span class="p-2" style="font-size: 30px">Classic Cakes</span>
                        <a href="cake.jsp" class="btn btn-outline-danger">View All</a>
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
                      <a href="cake.jsp"><img class="card-img-top img-fluid" src="../images/Cakes/cake7.webp"></a>
                      <div class="card-body">
                          <div class="card-title"> ButterScotch Cake</div>
                          <div class="card-text m-3"><i class="fa fa-inr">392</i></div>
                          <a href="cake.jsp" class="btn btn-warning btn-block"><i class="fa fa-cart-plus" aria-hidden="true"></i> Buy Now</a>
                      </div>
                  </div>
                </div>
            </div>
            
            <div class="item">
                <div>
                  <div class="card product-card">
                      <a href="cake.jsp"><img class="card-img-top img-fluid" src="../images/Cakes/cake6.webp"></a>
                      <div class="card-body">
                          <div class="card-title"> Barbie-Doll Cake</div>
                          <div class="card-text m-3"><i class="fa fa-inr">420</i></div>
                          <a href="cake.jsp" class="btn btn-warning btn-block"><i class="fa fa-cart-plus" aria-hidden="true"></i> Buy Now</a>
                      </div>
                  </div>
                </div>
            </div>
            
            <div class="item">
                <div>
                  <div class="card product-card">
                      <a href="cake.jsp"><img class="card-img-top img-fluid" src="../images/Cakes/cake3.jpeg"></a>
                      <div class="card-body">
                          <div class="card-title"> PineApple Cake</div>
                          <div class="card-text m-3"><i class="fa fa-inr">392</i></div>
                          <a href="cake.jsp" class="btn btn-warning btn-block"><i class="fa fa-cart-plus" aria-hidden="true"></i> Buy Now</a>
                      </div>
                  </div>
                </div>
            </div>
            
            <div class="item">
                <div>
                  <div class="card product-card">
                      <a href="cake.jsp"><img class="card-img-top img-fluid" src="../images/Cakes/cake9.jpeg"></a>
                      <div class="card-body">
                          <div class="card-title"> Dad love Cake</div>
                          <div class="card-text m-3"><i class="fa fa-inr">560</i></div>
                          <a href="cake.jsp" class="btn btn-warning btn-block"><i class="fa fa-cart-plus" aria-hidden="true"></i> Buy Now</a>
                      </div>
                  </div>
                </div>
            </div>
            
            <div class="item">
                <div>
                  <div class="card product-card">
                      <a href="cake.jsp"><img class="card-img-top img-fluid" src="../images/Cakes/cake11.jpeg"></a>
                      <div class="card-body">
                          <div class="card-title"> Sinful Chocolate Cake</div>
                          <div class="card-text m-3"><i class="fa fa-inr">392</i></div>
                          <a href="cake.jsp" class="btn btn-warning btn-block"><i class="fa fa-cart-plus" aria-hidden="true"></i> Buy Now</a>
                      </div>
                  </div>
                </div>
            </div>
            
            <div class="item">
                <div>
                  <div class="card product-card">
                      <a href="cake.jsp"><img class="card-img-top img-fluid" src="../images/Cakes/cake10.webp"></a>
                      <div class="card-body">
                          <div class="card-title"> Blueberry Cake</div>
                          <div class="card-text m-3"><i class="fa fa-inr">420</i></div>
                          <a href="cake.jsp" class="btn btn-warning btn-block"><i class="fa fa-cart-plus" aria-hidden="true"></i> Buy Now</a>
                      </div>
                  </div>
                </div>
            </div>
            
            <div class="item">
                <div>
                  <div class="card product-card">
                      <a href="cake.jsp"><img class="card-img-top img-fluid" src="../images/Cakes/cake14.webp"></a>
                      <div class="card-body">
                          <div class="card-title"> Pubg lovers Cake</div>
                          <div class="card-text m-3"><i class="fa fa-inr">420</i></div>
                          <a href="cake.jsp" class="btn btn-warning btn-block"><i class="fa fa-cart-plus" aria-hidden="true"></i> Buy Now</a>
                      </div>
                  </div>
                </div>
            </div>
              </div>
          </div>
        
        <!--product title-->
        <div class="container-fluid p-0 mt-2" style="background: #ff9966; font-family: 'Zilla Slab', serif;">
              <div>
                  <form class="form-inline my-2 my-lg-0 justify-content-center">
                    <span class="p-2" style="font-size: 30px">Sweet CupCakes</span>
                    <a href="cupcake.jsp" class="btn btn-outline-danger">View All</a>
                  </form>
              </div>
        </div>
        
        <!--cover pic of product-->
        
        <div class="carousel-inner mt-2">
                <div class="carousel-item active">
                    <img src="../images/cupcakecover.jpeg" style="" class="d-block w-100" alt="StrawBerry">
               </div>
        </div>    
        
        <!--cupcake product section-->
        
        <section class="mb-4 jumbotron" style="font-family: fantasy;">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-12">
                        <div class="card text-center mb-4">
                            <a href="cupcake.jsp"><img class="card-img-top" src="../images/Cupcakes/cupcake1.jpg"></a>
                            <div class="card-body">
                                <h4 class="card-title">Charming choco-vanilla Cupcake</h4>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-12">
                        <div class="card text-center mb-4">
                            <a href="cupcake.jsp"><img class="card-img-top" src="../images/Cupcakes/cupcake2.jpg"></a>
                            <div class="card-body">
                                <h4 class="card-title">Chocolaty Roller Coaster Ride</h4>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-12">
                        <div class="card text-center mb-4">
                            <a href="cupcake.jsp"><img class="card-img-top" src="../images/Cupcakes/cupcake4.jpg"></a>
                            <div class="card-body">
                                <h4 class="card-title">Devilish Choco Cupcake</h4>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-12">
                        <div class="card text-center mb-4">
                            <a href="cupcake.jsp"><img class="card-img-top" src="../images/Cupcakes/cupcake5.jpg"></a>
                            <div class="card-body">
                                <h4 class="card-title">Fruitalicious Cupcake</h4>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        
        <!--product title-->
        <div class="container-fluid p-0 mt-2" style="background: #ff9966; font-family: 'Zilla Slab', serif;">
              <div>
                  <form class="form-inline my-2 my-lg-0 justify-content-center">
                    <span class="p-2" style="font-size: 30px">Tasty Donuts</span>
                    <a href="donuts.jsp" class="btn btn-outline-danger">View All</a>
                  </form>
              </div>
        </div>
        
        <!--cover pic of product-->
        
        <div class="carousel-inner mt-2">
                <div class="carousel-item active">
                    <img src="../images/donutcover.jpeg" style="" class="d-block w-100" alt="StrawBerry">
               </div>
        </div>    
        
        <!--donuts product section-->
        
        <section class="mb-4 jumbotron" style="font-family: fantasy;">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 col-md-6 col-sm-6">
                        <div class="card text-center mb-4">
                            <a href="donuts.jsp"><img class="card-img-top" src="../images/Donuts/donuts1.jpg"></a>
                            <div class="card-body bg-warning">
                                <h4 class="card-title">Donut-Triple Chocolate</h4>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-6">
                        <div class="card text-center mb-4">
                            <a href="donuts.jsp"><img class="card-img-top" src="../images/Donuts/donuts4.jpg"></a>
                            <div class="card-body bg-warning">
                                <h4 class="card-title">Donut-Blueberry Glaze</h4>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-6">
                        <div class="card text-center mb-4">
                            <a href="donuts.jsp"><img class="card-img-top" src="../images/Donuts/donuts12.jpg"></a>
                            <div class="card-body bg-warning">
                                <h4 class="card-title">Donut- Chocolate</h4>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-6">
                        <div class="card text-center mb-4">
                            <a href="donuts.jsp"><img class="card-img-top" src="../images/Donuts/donuts8.jpg"></a>
                            <div class="card-body bg-warning">
                                <h4 class="card-title">Donut-Shreds</h4>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-6">
                        <div class="card text-center mb-4">
                            <a href="donuts.jsp"><img class="card-img-top" src="../images/Donuts/donuts5.jpg"></a>
                            <div class="card-body bg-warning">
                                <h4 class="card-title">Donut-Choco Nutty</h4>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-6">
                        <div class="card text-center mb-4">
                            <a href="donuts.jsp"><img class="card-img-top" src="../images/Donuts/donuts10.jpg"></a>
                            <div class="card-body bg-warning">
                                <h4 class="card-title">Donut- Butterscotch</h4>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        
         <!--product title-->
        <div class="container-fluid p-0 mt-2" style="background: #ffc371; font-family: 'Zilla Slab', serif;">
              <div>
                  <form class="form-inline my-2 my-lg-0 justify-content-center">
                    <span class="p-2" style="font-size: 30px">Freash Breads</span>
                    <a href="bread.jsp" class="btn btn-outline-danger">View All</a>
                  </form>
              </div>
        </div>
        
        <!--cover pic of product-->
        
        <div class="carousel-inner mt-2">
                <div class="carousel-item active">
                    <img src="../images/breadcover.jpeg" style="" class="d-block w-100" alt="StrawBerry">
               </div>
        </div>    
         
         <!--Breads product section-->
        
        <section class="mb-4 jumbotron" style="font-family: fantasy;">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-md-12 col-sm-6">
                        <div class="card text-center mb-4">
                            <a href="bread.jsp"><img class="card-img-top" height="200" width="200" src="../images/Breads/bread6.jpg"></a>
                            <div class="card-body" style="background: peru">
                                <h4 class="card-title">Sweet Bun</h4>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-12 col-sm-6">
                        <div class="card text-center mb-4">
                            <a href="bread.jsp"><img class="card-img-top" height="200" width="200" src="../images/Breads/bread4.jpg"></a>
                            <div class="card-body" style="background: peru">
                                <h4 class="card-title">Buns-Burger</h4>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-12 col-md-12 col-sm-6">
                        <div class="card text-center mb-4">
                            <a href="bread.jsp"><img class="card-img-top" height="300" width="500" src="../images/Breads/bread5.jpg"></a>
                            <div class="card-body" style="background: peru">
                                <h4 class="card-title">White Sandwich Bread</h4>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        
          <!--product title-->
        <div class="container-fluid p-0 mt-2" style="background: #ffc371; font-family: 'Zilla Slab', serif;">
              <div>
                  <form class="form-inline my-2 my-lg-0 justify-content-center">
                    <span class="p-2" style="font-size: 30px">Delicious Cookies</span>
                    <a href="cookie.jsp" class="btn btn-outline-danger">View All</a>
                  </form>
              </div>
        </div>
        
        <!--cover pic of product-->
        
        <div class="carousel-inner mt-2">
                <div class="carousel-item active">
                    <img src="../images/cokiecover.jpeg" style="" class="d-block w-100" alt="StrawBerry">
               </div>
        </div>      
          
        <!--Cookies product section-->
        
        <section class="mb-4 jumbotron" style="font-family: fantasy;">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-6">
                        <div class="card text-center mb-4">
                            <a href="cookie.jsp"><img class="card-img-top" height="300" width="500" src="../images/Cookies/cookie4.webp"></a>
                            <div class="card-body" style="background: peru">
                                <h4 class="card-title">ShrewsBerry Cookie</h4>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-12 col-sm-6">
                        <div class="card text-center mb-4">
                            <a href="cookie.jsp"><img class="card-img-top" height="300" width="200" src="../images/Cookies/cookie7.webp"></a>
                            <div class="card-body" style="background: peru">
                                <h4 class="card-title">Eggless Choco-almond Cookie</h4>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-12 col-sm-6">
                        <div class="card text-center mb-4">
                            <a href="cookie.jsp"><img class="card-img-top" height="300" width="200" src="../images/Cookies/cookie9.jpg"></a>
                            <div class="card-body" style="background: peru">
                                <h4 class="card-title">Fruit Biscuit</h4>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-12 col-md-12 col-sm-6">
                        <div class="card text-center mb-4">
                            <a href="cookie.jsp"><img class="card-img-top" height="300" width="500" src="../images/Cookies/cookie8.webp"></a>
                            <div class="card-body" style="background: peru">
                                <h4 class="card-title">Box of assorted Cookie</h4>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        
      <!--product title-->
        <div class="container-fluid p-0 mt-2" style="background: #ffc371; font-family: 'Zilla Slab', serif;">
              <div>
                  <form class="form-inline my-2 my-lg-0 justify-content-center">
                    <span class="p-2" style="font-size: 30px">Sweet Muffins</span>
                    <a href="muffins.jsp" class="btn btn-outline-danger">View All</a>
                  </form>
              </div>
        </div>
        
        <!--cover pic of product-->
        
        <div class="carousel-inner mt-2">
                <div class="carousel-item active">
                    <img src="../images/muffinscove.jpeg" style="" class="d-block w-100" alt="StrawBerry">
               </div>
        </div>    
      
        <!--Muffins product section-->
        
        <section class="mb-4 jumbotron" style="font-family: fantasy;">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-6 col-md-12 col-sm-6">
                        <div class="card text-center mb-4">
                            <a href="#"><img class="card-img-top" height="300" width="200" src="../images/Muffins/muffins5.jpg"></a>
                            <div class="card-body" style="background: peru">
                                <h4 class="card-title">Muffin Chocolate Chip</h4>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-12 col-sm-6">
                        <div class="card text-center mb-4">
                            <a href="#"><img class="card-img-top" height="300" width="200" src="../images/Muffins/muffins3.jpeg"></a>
                            <div class="card-body" style="background: peru">
                                <h4 class="card-title">Blueberry Muffins</h4>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-12 col-sm-6">
                        <div class="card text-center mb-4">
                            <a href="#"><img class="card-img-top" height="300" width="200" src="../images/Muffins/muffins2.jpg"></a>
                            <div class="card-body" style="background: peru">
                                <h4 class="card-title">Banana Muffins</h4>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-12 col-sm-6">
                        <div class="card text-center mb-4">
                            <a href="#"><img class="card-img-top" height="300" width="200" src="../images/Muffins/muffins8.jpg"></a>
                            <div class="card-body" style="background: peru">
                                <h4 class="card-title">Double Choco Chip Muffins</h4>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>    
        
    </main>

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

            <!-- Optional JavaScript -->
            <!-- jQuery first, then Popper.js, then Bootstrap JS -->
            <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    
            <script src="../owlcarousel/owl.carousel.min.js"></script>
            <script src="../JS/jquery2.js"></script>

    </body>
</html>