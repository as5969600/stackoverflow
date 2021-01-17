<%-- 
    Document   : index
    Created on : Sep 19, 2019, 11:39:02 PM
    Author     : user
--%>

<%@page  import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
@media (min-width: 768px) {
.carousel-multi-item-2 .col-md-3 {
float: left;
width: 25%;
max-width: 100%; } }

.carousel-multi-item-2 .card img {
border-radius: 2px; }



/* Bordered form */
form {
  border: 3px solid #f1f1f1;
}

/* Full-width inputs */
input[type=text], input[type=password] {
  width: 35%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

/* Set a style for all buttons */
button {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 35%;
}







 

</style>
<script>
        $(document).ready(function(){
            $("#login").click(function(){
               
                $("#log").modal();
                
            });
        });
        
        

        </script>
   <style>
              .parallax {
    /* The image used */
    background-image: url("stack1.jpg");

    /* Set a specific height */
    min-height: 500px;

    /* Create the parallax scrolling effect */
    background-attachment: fixed;
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
	
    filter: alpha(opacity=50);
}
        </style>
 </head>
 
<body>
    <%                                             
            
            Cookie c[]=request.getCookies();
            String email=null;
            for(int i=0;i<c.length;i++){
                if(c[i].getName().equals("user")){
                    email=c[i].getValue();
                    break;
                }
            }
            
           
 %>

    <header>
 <div class="row">
 <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header" style="height: 70px">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#"><img src="stack.jpg" class="img-fluid" style="width: 50px"></a>
      <a class="navbar-brand" style="font-size: 40px" href="#">StackOverflow</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="index.jsp" style="font-size: 20px">Home</a></li>
       
        <li><a href="#" style="font-size: 20px">Customer</a></li>
      
      
        <form class="navbar-form navbar-right" action="/action_page.php">
            <div class="input-group">
                <input type="text" class="form-control mr-sm-2" placeholder="Search" style="width:500px">
              <div class="input-group-btn">
                <button class="btn btn-default" type="submit" style="width:40px">
                  <i class="glyphicon glyphicon-search"></i>
                </button>
              </div>
            </div>
        </form>
      </ul>
      
       
       <ul class="nav navbar-nav navbar-right">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown" style="font-size: 20px">
                          <%=email%>
                    </a>
                    <div class="dropdown-menu">
                          <a class="dropdown-item" href="logout.jsp">LOGOUT</a>       
                    </div>
                </li>
      </ul>
      
    </div>
  </div>
</nav>
      <div class="col-sm-12 parallax" style="margin-top: -25px"></div>
 </div>
    </header>



    <div class="row">
         
        <div class="col-sm-2">
            <div class="w3-card" style="margin: 20px; width:250px; height: 500px">
                   <ul class="nav nav-pills nav-stacked">
                     <li><a href="admin.jsp">Home</a></li>
                     <li><a href="cat.jsp">Add Categories</a></li>
                     <li><a href="#">Menu 2</a></li>
                     <li><a href="#">Menu 3</a></li>
                   </ul>
            </div>
        </div>
        
       
        
        <div class="col-sm-10" > 
            <div class="row">
                    <div class="col-sm-2">
                            <div class="w3-card w3-red w3-hover-shadow w3-center" style="margin-left: 40px;margin-top: 20px; height: 100px; width: 200px">
                                <p style="font-size: 25px"><a href="#" >Categories</a></p>
                            </div>
                    </div>
            </div>
            
            
            <div class="w3-card" style="margin: 20px">
                <div class="w3-panel w3-leftbar">
                        <div class="w3-bar w3-boader w3-white w3-round-large">
                           <div class="col-sm-1" >  
                                <img src="p1.jpg" class="w3-circle" style="width: 80px" alt="Alps">
                           </div>
                            <div class="col-sm-11" >  
                                <i>Akash sharma</i><br><br>
                                <div>March 05,2019</div>
                            </div>
                        </div>
                        <p class="w3-xxlarge w3-serif" >
                        <i>dshguwgfuwegfiwehfiueh skdniosj jkdnisdvvsod jnjdnjsd knsdvnsd knvnvksd kndnvfok</i></p>
                        <div style="margin: 10px">
                            <a href="#" ><button class="w3-button w3-blue w3-hover-red">Write Answer</button></a>
                            <a href="#" ><button class="w3-button w3-blue w3-hover-red">See Answers</button></a>
                            <i  class="fa fa-eye" style="float:right;color:black; font-size: 30px"> 10 &nbsp;&nbsp;</i>
                              <i  class="fa fa-comment" style="float:right;color:blue; font-size: 30px"> 5 &nbsp;&nbsp;</i>
                            <i  class="fa fa-heart" style="float:right;color:red; font-size: 30px"> 10 &nbsp;&nbsp;</i>
                        </div>
                        
                </div>
            </div>
            
        </div>    
        
        
 </div>
   

 <div class="row">
        
        <!-- Footer -->
        <div class="col-sm-12">
        <footer class="page-footer font-small blue pt-4" style="background-color:lightblue ; color:white">

  <!-- Footer Links -->
  <div class="container-fluid text-center text-md-left">

    <!-- Grid row -->
    <div class="row">

      <!-- Grid column -->
      <div class="col-md-6 mt-md-0 mt-3">

        <!-- Content -->
        <h5 class="text-uppercase">Footer Content</h5>
        <p>Here you can use rows and columns to organize your footer content.</p>

      </div>
      <!-- Grid column -->

      <hr class="clearfix w-100 d-md-none pb-3">

      <!-- Grid column -->
      <div class="col-md-3 mb-md-0 mb-3">

        <!-- Links -->
        <h5 class="text-uppercase">Links</h5>

        <ul class="list-unstyled">
          <li>
            <a href="#!">Link 1</a>
          </li>
          <li>
            <a href="#!">Link 2</a>
          </li>
          <li>
            <a href="#!">Link 3</a>
          </li>
          <li>
            <a href="#!">Link 4</a>
          </li>
        </ul>

      </div>
      <!-- Grid column -->

      <!-- Grid column -->
      <div class="col-md-3 mb-md-0 mb-3">

        <!-- Links -->
        <h5 class="text-uppercase">Links</h5>

        <ul class="list-unstyled">
          <li>
            <a href="#!">Link 1</a>
          </li>
          <li>
            <a href="#!">Link 2</a>
          </li>
          <li>
            <a href="#!">Link 3</a>
          </li>
          <li>
            <a href="#!">Link 4</a>
          </li>
        </ul>

      </div>
      <!-- Grid column -->

    </div>
    <!-- Grid row -->

  </div>
  <!-- Footer Links -->

  <!-- Copyright -->
  <div class="footer-copyright text-center py-3">© 2018 Copyright:
    <a href="https://mdbootstrap.com/education/bootstrap/"> MDBootstrap.com</a>
  </div>
  <!-- Copyright -->

</footer>
        </div>
<!-- Footer -->
 </div>
    

</body>
</html>
