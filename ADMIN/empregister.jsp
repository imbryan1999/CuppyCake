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
         
    <title>Employee Registration</title>
  
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
     
      <div class="signup-form p-4 container">
            <form  class="jumbotron" action="empregcode.jsp">
            
            <%@page import="java.sql.*" %>
            <%! int id; %>
            
            <%
                try{
                    
                    ResultSet rs;
                    Class.forName("oracle.jdbc.driver.OracleDriver");
                    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","bryan","bryan");
                    String qry = "select max(Emp_ID) from Employee";
                    PreparedStatement ps = con.prepareStatement(qry);
                    
                    rs = ps.executeQuery();
                    if(rs.next())
                    {
                        id = rs.getInt(1);
                        id++;
                    }
                }catch(Exception ex)
                {
                    out.println(ex);
                }
            %>
            
            <div class="text-center">
                <h4>Employee Registration!</h4>
                <hr class="w-25 mx-auto pt-3">
            </div>
            
            <div class="form-row justify-content-center">
                <div class="form-group col-md-6 col-sm-6">
                    <label for="custid">Employee ID</label>
                    <input type="text" name="eid" class="form-control" id="custid" value="<%=id%>" readonly="true">
                </div>
            </div>
                
            <div class="form-row justify-content-center">
                <div class="form-group col-md-6 col-sm-6">
                    <label for="usernm">Full Name</label>
                        <input type="text" name="fname" class="form-control" id="usernm" placeholder="Full Name" required="true">
                        <h5 id="checkuser"></h5>
                </div>        
            </div>
                
            <div class="form-row justify-content-center">
                    <div class="form-group col-md-3">
                      <label for="desig">Designation</label>
                      <select id="desig" class="form-control" name="desig">
                            <option value="Cake Baker and Decorator">Cake Baker and Decorator</option>
                            <option value="Advertiser Manager">Advertiser Manager</option>
                            <option value="Front-Office">Front-Office</option>
                            <option value="Accountant">Accountant</option>
                      </select>
                    </div>
                    <div class="form-group col-md-3">
                        <label for="dept">Department</label>
                      <select id="dept" class="form-control" name="dept">
                            <option value="Product Management">Product Management</option>
                            <option value="Advertising Management">Advertising Management</option>
                            <option value="Customer Service">Customer Service</option>
                            <option value="Accounting Department">Accounting Department</option>
                        </select>
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
                <div class="form-group col-md-3 col-sm-3">
                    <label for="date">Date of Joining</label>
                    <input type="date" name="date" class="form-control" id="date" required="true">
                </div>
                <div class="form-group col-md-3 col-sm-3">
                    <label for="age">Age</label>
                    <input type="number" name="age" placeholder="Age" class="form-control" id="age" required="true">
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
                <button type="submit" class="btn btn-danger btn-block col-md-6">Register Here</button>
            </div>
                
            </form>
      </div>
                
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    
    <script src="../owlcarousel/owl.carousel.min.js"></script>
    <script src="../js/jquery2.js"></script>
    <script src="../JS/validation.js"></script>
    
  </body>
</html>