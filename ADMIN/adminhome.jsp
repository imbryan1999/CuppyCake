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
     
    <!--option buttons start-->
    
    <div class="container-fluid breadcrumb mt-4">
    <div class="row justify-content-center">
    <div class="col-lg-4 col-md-4 mt-4">
        <div class="card">
            <div class="bg-primary text-white p-4">
                <i class="fa fa-cart-plus fa-5x"></i>
                <h2 class="float-right font-weight-bold" style="font-size: 40px; text-align: center;">New
                    <span class="d-block">Products</span></h2>
            </div>
            <div class="card-footer text-primary">
                <h6 class="text-center">
                    <a href="addproduct.jsp"><i class="fa fa-plus"></i> Add Products</a>
                </h6>
            </div>
        </div>
    </div>
        <div class="col-lg-4 col-md-4 mt-4">
        <div class="card">
            <div class="bg-warning text-white p-4">
                <i class="fa fa-truck fa-5x"></i></i>
                <h2 class="float-right font-weight-bold" style="font-size: 40px; text-align: center;">Order
                    <span class="d-block">Activity</span></h2>
            </div>
            <div class="card-footer text-primary">
                <h6 class="text-center">
                    <a href="vieworder.jsp">View Orders <i class="fa fa-arrow-circle-right"></i></a>
                </h6>
            </div>
        </div>
    </div>
        <div class="col-lg-4 col-md-4 mt-4">
        <div class="card">
            <div class="bg-danger text-white p-4">
                <i class="fa fa-credit-card fa-5x"></i>
                <h2 class="float-right font-weight-bold" style="font-size: 40px; text-align: center;">Payment
                    <span class="d-block">Activity</span></h2>
            </div>
            <div class="card-footer text-primary">
                <h6 class="text-center">
                    <a href="viewpayment.jsp">View Payments <i class="fa fa-arrow-circle-right"></i></a>
                </h6>
            </div>
        </div>
    </div>
        <div class="col-lg-4 col-md-4 mt-4">
        <div class="card">
            <div class="bg-success text-white p-4">
                <i class="fa fa-user-secret fa-5x" aria-hidden="true"></i>
                <h2 class="float-right font-weight-bold" style="font-size: 40px; text-align: center;">New
                    <span class="d-block">Employee</span></h2>
            </div>
            <div class="card-footer text-primary">
                <h6 class="text-center">
                    <a href="empregister.jsp">View Message <i class="fa fa-arrow-circle-right"></i></a>
                </h6>
            </div>
        </div>
    </div>
        <div class="col-lg-4 col-md-4 mt-4">
        <div class="card">
            <div class="text-white p-4" style="background: blueviolet;">
                <i class="fa fa-users fa-5x"></i>
                <h2 class="float-right font-weight-bold" style="font-size: 40px; text-align: center;">Users &
                    <span class="d-block">Customers</span></h2>
            </div>
            <div class="card-footer text-primary">
                <h6 class="text-center">
                    <a href="ourusers.jsp">More Info <i class="fa fa-arrow-circle-right"></i></a>
                </h6>
            </div>
        </div>
    </div>
        <div class="col-lg-4 col-md-4 mt-4">
        <div class="card">
            <div class=" text-white p-4" style="background: chocolate;">
                <i class="fa fa-user-secret fa-5x" aria-hidden="true"></i>
                <h2 class="float-right font-weight-bold" style="font-size: 40px; text-align: center;">Our
                    <span class="d-block">Employees</span></h2>
            </div>
            <div class="card-footer text-primary">
                <h6 class="text-center">
                    <a href="viewemployees.jsp">More Info <i class="fa fa-arrow-circle-right"></i></a>
                </h6>
            </div>
        </div>
        </div>
        <div class="col-lg-4 col-md-4 mt-4">
        <div class="card">
            <div class=" text-white p-4" style="background: #00ccff;">
                <i class="fa fa-users fa-5x"></i>
                <h2 class="float-right font-weight-bold" style="font-size: 40px; text-align: center;">New
                    <span class="d-block">Messages</span></h2>
            </div>
            <div class="card-footer text-primary">
                <h6 class="text-center">
                    <a href="">More Info <i class="fa fa-arrow-circle-right"></i></a>
                </h6>
            </div>
        </div>
        </div>
    </div>
    </div>
    
    <!--option buttons end-->
    
    <!--user option buttons start-->
    
    <div class="container breadcrumb breadcrumbs-fluid">
        <div class="row">
            <div class="col-lg-6 mt-4">
                <div class="card">
                    <div class="text-white p-4" style="background: #0000cc;">
                        <i class="fa fa-facebook fa-5x float-right"></i>
                        <h2 class="float-left text-white font-weight-bold" style="font-size: 40px; text-align: center;">
                            1200&nbsp;<i class="fa fa-plus"></i>
                            <span class="d-block">Facebook Users</span>
                        </h2>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 mt-4">
                <div class="card">
                    <div class="text-white p-4" style="background:#03a9f4;">
                        <i class="fa fa-twitter fa-5x float-right"></i>
                        <h2 class="float-left text-white font-weight-bold" style="font-size: 40px; text-align: center;">
                            965&nbsp;<i class="fa fa-plus"></i>
                            <span class="d-block">Twitter Users</span>
                        </h2>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 mt-4">
                <div class="card">
                    <div class="text-white p-4" style="background: linear-gradient(#515BD4,#8134AF,#DD2A7B,#FEDA77,#F58529);">
                        <i class="fa fa-instagram fa-5x float-right"></i>
                        <h2 class="float-left text-white font-weight-bold" style="font-size: 40px; text-align: center;">
                            1500&nbsp;<i class="fa fa-plus"></i>
                            <span class="d-block">Instagram Users</span>
                        </h2>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 mt-4">
                <div class="card">
                    <div class="text-white p-4" style="background: #F58529;">
                        <i class="fa fa-google-plus fa-5x float-right"></i>
                        <h2 class="float-left text-white font-weight-bold" style="font-size: 40px; text-align: center;">
                            800&nbsp;<i class="fa fa-plus"></i>
                            <span class="d-block">Google+ Users</span>
                        </h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div>
    
    <!--user option buttons end-->
    
    <script>
         $(document).ready(function(){
             $('.card').hover(
                 //trigger when mouse hover
                 function(){
                     $(this).animate({
                         marginTop: "-=3%"
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
  
  </body>
</html>