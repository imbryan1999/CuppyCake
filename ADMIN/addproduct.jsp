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
         
    <title>New Products</title>
    
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
      <nav class="navbar navbar-expand-md navbar-dark bg-dark sticky-top">
          <a class="navbar-brand text-warning">
              <i class="fa fa-birthday-cake"></i>&nbsp;CuppyCake
          </a>
      <button class="navbar-toggler" data-toggle="collapse" data-target="#menu">
          <span class="navbar-toggler-icon"></span>
      </button>
          
          <div class="collapse navbar-collapse" id="menu">
              <ul class="navbar-nav">
                  <li class="nav-item">
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
                      <a href="#" class="nav-link">
                          <i class="fa fa-users"></i> Users
                      </a>
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
              <form class="form-inline my-2 my-lg-0">
                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-primary my-2 my-sm-0" type="submit">Search</button>
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
      
    <div class="container">
        <form class="jumbotron mt-4" action="productcode.jsp" enctype="multipart/form-data" method="post">
            
            <%@page import="java.sql.*" %>
            <%! int pid; %>
            
            <%
                try{
                    
                    ResultSet rs;
                    Class.forName("oracle.jdbc.driver.OracleDriver");
                    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","bryan","bryan");
                    String qry = "select max(P_ID) from Product";
                    PreparedStatement ps = con.prepareStatement(qry);
                    
                    rs = ps.executeQuery();
                    if(rs.next())
                    {
                        pid = rs.getInt(1);
                        pid++;
                    }
                }catch(Exception ex)
                {
                    out.println(ex);
                }
            %>
            
            <div class="text-center">
                <h3>Add Products!</h3>
                <hr class="w-25 mx-auto pt-3">
            </div>
            <div class="form-row justify-content-center">
                <div class="form-group col-md-6 col-sm-6">
                    <label for="pid">Product ID</label>
                    <input type="text" class="form-control" name="txtpid" id="pid" placeholder="Product ID" value="<%=pid%>" readonly="true">
                </div>
            </div>
            <div class="form-row justify-content-center">
                <div class="form-group col-md-6 col-sm-6">
                    <label for="pnm">Product Name</label>
                    <input type="text" class="form-control" name="txtpnm" id="pnm" placeholder="Product Name">
                </div>
            </div>
            <div class="form-row justify-content-center">
                <div class="form-group col-md-6 col-sm-6">
                    <label for="pr">Price</label>
                    <input type="text" class="form-control" name="txtprice" id="pr" placeholder="Price">
                </div>
            </div>
            <div class="form-row justify-content-center">
                <div class="form-group col-md-6 col-sm-6">
                    <label for="pdesc">Product Description</label>
                    <input type="text" class="form-control" name="txtdesc" id="pdesc" placeholder="Product Description">
                </div>
            </div>
            <div class="form-row justify-content-center">
                <div class="form-group col-md-6 col-sm-6">
                      <label for="ptype">Product Type</label>
                      <select id="ptype" class="form-control" name="txtptype">
                            <option value="Cake">Cake</option>
                            <option value="Bread">Bread</option>
                            <option value="CupCake">CupCake</option>
                            <option value="Donuts">Donuts</option>
                            <option value="Cookies">Cookies</option>
                            <option value="Muffins">Muffins</option>
                      </select>
                    </div>
            </div>
            <div class="form-row justify-content-center">
                <div class="form-group col-md-6 col-sm-6">
                    <label for="pdisc">Discount</label>
                    <input type="text" class="form-control" name="txtpdisc" id="pdisc" placeholder="Product Discount">
                </div>
            </div>
            <div class="form-row justify-content-center">
            <div class="form-group col-md-6 col-sm-6">
                <label for="picfile">Choose Product's Picture</label>
                <input type="file" class="form-control-file" id="picfile" name="picfile">
            </div>
            </div>
            <div class="form-row justify-content-center m-5 ">
                <button type="submit" class="btn btn-success btn-block col-md-4">Save Product</button>
            </div>
        </form>
    </div>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>