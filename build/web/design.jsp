<%-- 
    Document   : design
    Created on : Sep 25, 2019, 1:36:48 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>        



<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
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

 .parallax1 {
    /* The image used */
    background-image: url("4.jpg");

    /* Set a specific height */
    min-height: 500px;

    /* Create the parallax scrolling effect */
    background-attachment: fixed;
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
	
    filter: alpha(opacity=50);
}



      #m{
          font-size:20px;
      }
@media only screen and (max-width: 600px) {
  #m {
    font-size:8px;
  }
}

@media (min-width: 768px) {
.carousel-multi-item-2 .col-md-3 {
float: left;
width: 25%;
max-width: 100%; } }

.carousel-multi-item-2 .card img {
border-radius: 2px; }

  </style>
</head>
<body>

<nav class="navbar navbar-expand-md bg-dark navbar-dark">
  <a class="navbar-brand" href="#">Navbar</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="collapsibleNavbar">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="#">Link</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Link</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Link</a>
      </li>    
    </ul>
     
  </div> 
   <ul  class="navbar-nav" style="float:right">
          <li class="nav-item"> <input class="form-control"></li>
      </ul>
</nav>
<br>


 <div class="row" style="margin-top:-22px">
        <div class="col-sm-12">
            <img src="4.jpg" class="img-fluid">
        </div>
    </div>


<div class="container-fluid">    
    <div class="row">
       <div class="col-sm-12 w3-card">
        <div class="card card-default"><div class="card-header">About</div></div>
       </div>
        
        <div class="col-sm-12">
            
            <p id="m">sfsdfsdfsdfs fsd fsd f sdfs dfsd fsdf sdf sd fsd fsd  sfsdfsdfsdfs fsd fsd f sdfs dfsd fsdf sdf sd fsd fsd sfsdfsdfsdfs fsd fsd f sdfs dfsd fsdf sdf sd fsd fsd sfsdfsdfsdfs fsd fsd f sdfs dfsd fsdf sdf sd fsd fsd sfsdfsdfsdfs fsd fsd f sdfs dfsd fsdf sdf sd fsd fsd sfsdfsdfsdfs fsd fsd f sdfs dfsd fsdf sdf sd fsd fsd sfsdfsdfsdfs fsd fsd f sdfs dfsd fsdf sdf sd fsd fsd sfsdfsdfsdfs fsd fsd f sdfs dfsd fsdf sdf sd fsd fsd sfsdfsdfsdfs fsd fsd f sdfs dfsd fsdf sdf sd fsd fsd sfsdfsdfsdfs fsd fsd f sdfs dfsd fsdf sdf sd fsd fsd sfsdfsdfsdfs fsd fsd f sdfs dfsd fsdf sdf sd fsd fsd sfsdfsdfsdfs fsd fsd f sdfs dfsd fsdf sdf sd fsd fsd sfsdfsdfsdfs fsd fsd f sdfs dfsd fsdf sdf sd fsd fsd sfsdfsdfsdfs fsd fsd f sdfs dfsd fsdf sdf sd fsd fsd sfsdfsdfsdfs fsd fsd f sdfs dfsd fsdf sdf sd fsd fsd sfsdfsdfsdfs fsd fsd f sdfs dfsd fsdf sdf sd fsd fsd sfsdfsdfsdfs fsd fsd f sdfs dfsd fsdf sdf sd fsd fsd sfsdfsdfsdfs fsd fsd f sdfs dfsd fsdf sdf sd fsd fsd sfsdfsdfsdfs fsd fsd f sdfs dfsd fsdf sdf sd fsd fsd sfsdfsdfsdfs fsd fsd f sdfs dfsd fsdf sdf sd fsd fsd sfsdfsdfsdfs fsd fsd f sdfs dfsd fsdf sdf sd fsd fsd sfsdfsdfsdfs fsd fsd f sdfs dfsd fsdf sdf sd fsd fsd sfsdfsdfsdfs fsd fsd f sdfs dfsd fsdf sdf sd fsd fsd sfsdfsdfsdfs fsd fsd f sdfs dfsd fsdf sdf sd fsd fsd sfsdfsdfsdfs fsd fsd f sdfs dfsd fsdf sdf sd fsd fsd sfsdfsdfsdfs fsd fsd f sdfs dfsd fsdf sdf sd fsd fsd sfsdfsdfsdfs fsd fsd f sdfs dfsd fsdf sdf sd fsd fsd sfsdfsdfsdfs fsd fsd f sdfs dfsd fsdf sdf sd fsd fsd sfsdfsdfsdfs fsd fsd f sdfs dfsd fsdf sdf sd fsd fsd sfsdfsdfsdfs fsd fsd f sdfs dfsd fsdf sdf sd fsd fsd sfsdfsdfsdfs fsd fsd f sdfs dfsd fsdf sdf sd fsd fsd sfsdfsdfsdfs fsd fsd f sdfs dfsd fsdf sdf sd fsd fsd sfsdfsdfsdfs fsd fsd f sdfs dfsd fsdf sdf sd fsd fsd sfsdfsdfsdfs fsd fsd f sdfs dfsd fsdf sdf sd fsd fsd sfsdfsdfsdfs fsd fsd f sdfs dfsd fsdf sdf sd fsd fsd sfsdfsdfsdfs fsd fsd f sdfs dfsd fsdf sdf sd fsd fsd sfsdfsdfsdfs fsd fsd f sdfs dfsd fsdf sdf sd fsd fsd sfsdfsdfsdfs fsd fsd f sdfs dfsd fsdf sdf sd fsd fsd sfsdfsdfsdfs fsd fsd f sdfs dfsd fsdf sdf sd fsd fsd sfsdfsdfsdfs fsd fsd f sdfs dfsd fsdf sdf sd fsd fsd sfsdfsdfsdfs fsd fsd f sdfs dfsd fsdf sdf sd fsd fsd sfsdfsdfsdfs fsd fsd f sdfs dfsd fsdf sdf sd fsd fsd sfsdfsdfsdfs fsd fsd f sdfs dfsd fsdf sdf sd fsd fsd sfsdfsdfsdfs fsd fsd f sdfs dfsd fsdf sdf sd fsd fsd sfsdfsdfsdfs fsd fsd f sdfs dfsd fsdf sdf sd fsd fsd sfsdfsdfsdfs fsd fsd f sdfs dfsd fsdf sdf sd fsd fsd sfsdfsdfsdfs fsd fsd f sdfs dfsd fsdf sdf sd fsd fsd sfsdfsdfsdfs fsd fsd f sdfs dfsd fsdf sdf sd fsd fsd sfsdfsdfsdfs fsd fsd f sdfs dfsd fsdf sdf sd fsd fsd sfsdfsdfsdfs fsd fsd f sdfs dfsd fsdf sdf sd fsd fsd sfsdfsdfsdfs fsd fsd f sdfs dfsd fsdf sdf sd fsd fsd sfsdfsdfsdfs fsd fsd f sdfs dfsd fsdf sdf sd fsd fsd sfsdfsdfsdfs fsd fsd f sdfs dfsd fsdf sdf sd fsd fsd sfsdfsdfsdfs fsd fsd f sdfs dfsd fsdf sdf sd fsd fsdsfsdfsdfsdfs fsd fsd f sdfs dfsd fsdf sdf sd fsd fsdsfsdfsdfsdfs fsd fsd f sdfs dfsd fsdf sdf sd fsd fsdsfsdfsdfsdfs fsd fsd f sdfs dfsd fsdf sdf sd fsd fsd</p>
        </div>
        
        
         <div class="col-sm-12 parallax1"></div>
    </div>
   
</div>


<div class="container-fluid">

 <div class="row">
        
        <!-- Footer -->
        <div class="col-sm-12">
            
            <!--Carousel Wrapper-->
<div id="multi-item-example" class="carousel slide carousel-multi-item carousel-multi-item-2" data-ride="carousel">

  <!--Controls-->
  <div class="controls-top">
    <a class="black-text" href="#multi-item-example" data-slide="prev"><i class="fas fa-angle-left fa-3x pr-3"></i></a>
    <a class="black-text" href="#multi-item-example" data-slide="next"><i class="fas fa-angle-right fa-3x pl-3"></i></a>
  </div>
  <!--/.Controls-->

  <!--Slides-->
  <div class="carousel-inner" role="listbox">

    <!--First slide-->
    <div class="carousel-item active">

      <div class="col-md-3 mb-3">
        <div class="card">
          <img class="img-fluid" src="https://mdbootstrap.com/img/Photos/Horizontal/Nature/4-col/img%20(38).jpg"
            alt="Card image cap">
        </div>
      </div>

      <div class="col-md-3 mb-3">
        <div class="card">
          <img class="img-fluid" src="https://mdbootstrap.com/img/Photos/Horizontal/Nature/4-col/img%20(19).jpg"
            alt="Card image cap">
        </div>
      </div>

      <div class="col-md-3 mb-3">
        <div class="card">
          <img class="img-fluid" src="https://mdbootstrap.com/img/Photos/Horizontal/Nature/4-col/img%20(42).jpg"
            alt="Card image cap">
        </div>
      </div>

      <div class="col-md-3 mb-3">
        <div class="card">
          <img class="img-fluid" src="https://mdbootstrap.com/img/Photos/Horizontal/Nature/4-col/img%20(8).jpg"
            alt="Card image cap">
        </div>
      </div>

    </div>
    <!--/.First slide-->

    <!--Second slide-->
    <div class="carousel-item">

      <div class="col-md-3 mb-3">
        <div class="card">
          <img class="img-fluid" src="https://mdbootstrap.com/img/Photos/Horizontal/Nature/4-col/img%20(53).jpg"
            alt="Card image cap">
        </div>
      </div>

      <div class="col-md-3 mb-3">
        <div class="card">
          <img class="img-fluid" src="https://mdbootstrap.com/img/Photos/Horizontal/Nature/4-col/img%20(25).jpg"
            alt="Card image cap">
        </div>
      </div>

      <div class="col-md-3 mb-3">
        <div class="card">
          <img class="img-fluid" src="https://mdbootstrap.com/img/Photos/Horizontal/Nature/4-col/img%20(47).jpg"
            alt="Card image cap">
        </div>
      </div>

      <div class="col-md-3 mb-3">
        <div class="card">
          <img class="img-fluid" src="https://mdbootstrap.com/img/Photos/Horizontal/Nature/4-col/img%20(26).jpg"
            alt="Card image cap">
        </div>
      </div>

    </div>
    <!--/.Second slide-->

    <!--Third slide-->
    <div class="carousel-item">

      <div class="col-md-3 mb-3">
        <div class="card">
          <img class="img-fluid" src="https://mdbootstrap.com/img/Photos/Horizontal/Nature/4-col/img%20(64).jpg"
            alt="Card image cap">
        </div>
      </div>

      <div class="col-md-3 mb-3 w3-card">
        <div class="card">
          <img class="img-fluid" src="https://mdbootstrap.com/img/Photos/Horizontal/Nature/4-col/img%20(51).jpg"
            alt="Card image cap">
          <p>dfsdfjsk dfjksdjlfsdf kjdfsdlf kjdfhskdjf</p>
        </div>
      </div>

      <div class="col-md-3 mb-3">
        <div class="card">
          <img class="img-fluid" src="https://mdbootstrap.com/img/Photos/Horizontal/Nature/4-col/img%20(59).jpg"
            alt="Card image cap">
        </div>
      </div>

      <div class="col-md-3 mb-3">
        <div class="card">
          <img class="img-fluid" src="https://mdbootstrap.com/img/Photos/Horizontal/Nature/4-col/img%20(63).jpg"
            alt="Card image cap">
        </div>
      </div>

    </div>
    <!--/.Third slide-->

  </div>
  <!--/.Slides-->

</div>
<!--/.Carousel Wrapper-->
            
        </div>
        
        
        <div class="col-sm-12 parallax"></div>
 </div>
    
    
</div>




<div class="container-fluid">

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
    </div>
    
</body>
</html>
    
 <nav class="navbar navbar-expand-md bg-dark navbar-dark" >
  <!-- Brand -->
  <a class="navbar-brand" href="#"><img src="stack.jpg" class="img-fluid" style="width: 50px"></a>
  <a class="navbar-brand" style="font-size: 40px" href="#">StackOverflow</a>
  <!-- Toggler/collapsibe Button -->
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>

  <!-- Navbar links -->
  <div class="collapse navbar-collapse" id="collapsibleNavbar" >
      <ul class="navbar-nav" style="float: right">
      <li class="nav-item">
        <a class="nav-link"  style="font-size:20px" href="#" >Home</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" style="font-size:20px" href="#">Product</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" style="font-size:20px" href="#">Customer</a>
      </li>
     <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" style="font-size:20px" href="#" id="navbardrop" data-toggle="dropdown">
              Use cases
            </a>
            <div class="dropdown-menu">
              <a class="dropdown-item" href="#">Link 1</a>
              <a class="dropdown-item" href="#">Link 2</a>
              <a class="dropdown-item" href="#">Link 3</a>
            </div>
      </li>
    
  
    </ul>
   
  </div>
     <ul class="navbar-nav"  style="float:right">
            <li>
        
        <form class="form-inline" action="/action_page.php">
            <input class="form-control mr-sm-2" type="text" placeholder="Search" style="width: 250px">
    <button class="btn btn-success" type="submit" >Search</button>
  </form>
    </li>
    
        <div>
    <li class="nav-item">
        <a class="nav-link" style="font-size:20px; margin: 10px " href="#">Sign in</a>
      </li>
        </div>
        <div>
      <li class="nav-item">
        <a class="nav-link" style="font-size:20px; margin: 10px" href="#">Sign up</a>
      </li>
        </div>
    
     </ul>  
</nav>




 <ul  class="nav nav-pills nav-stacked" style="background-color: white; color: black">
                <li class="active"><a href="#" >Home</a> </li>
                <li class="active"><a href="#" >Communities</a> </li>
                <li class="active"><a href="#" >Question</a> </li>
                <li class="active"><a href="#" >Polls</a> </li>
                <li class="active"><a href="#" >Tags</a> </li>
                <li class="active"><a href="#" >Badges</a> </li>
                <li class="active"><a href="#" >User</a> </li>
                <li class="active"><a href="#" >Help</a> </li>
            </ul>
