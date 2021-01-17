<%-- 
    Document   : signup
    Created on : Sep 30, 2019, 10:40:34 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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

</style>
<style>
* {box-sizing: border-box}

/* Full-width input fields */
  input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}

/* Set a style for all buttons */
button {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

button:hover {
  opacity:1;
}

/* Extra styles for the cancel button */
.cancelbtn {
  padding: 14px 20px;
  background-color: #f44336;
}

/* Float cancel and signup buttons and add an equal width */
.cancelbtn, .signupbtn {
  float: left;
  width: 50%;
}

/* Add padding to container elements */
.container {
  padding: 16px;
}

/* Clear floats */
.clearfix::after {
  content: "";
  clear: both;
  display: table;
}

/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
  .cancelbtn, .signupbtn {
    width: 100%;
  }
}
</style>

  

</head>
<body>
    <header>
        <div class="container fluid">
            <div class="row">
                 <nav class="navbar navbar-inverse navbar-fixed-top">
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
                        <li><a href="#" style="font-size: 20px">Product</a></li>
                        <li><a href="#" style="font-size: 20px">Customer</a></li>
                        <li><a href="#" style="font-size: 20px">Page 3</a></li>
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
                        <form class="navbar-form navbar-left" action="/action_page.php">
                            <div class="input-group">
                              <input type="text" class="form-control mr-sm-2" placeholder="Search">
                              <div class="input-group-btn">
                                <button class="btn btn-default" type="submit" >
                                  <i class="glyphicon glyphicon-search"></i>
                                </button>
                              </div>
                            </div>
                        </form>
                      </ul>
                      <ul class="nav navbar-nav navbar-right">
                        <li><a href="signup.jsp" style="font-size: 20px"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
                       
                      </ul>
                    </div>
                  </div>
                </nav>
            </div>
        </div>
    </header> 
 
<!-- main -->
<form action="register.jsp" method="post" style="border:1px solid #ccc">
    <div class="w3-card" style="margin-top: 50px;margin-left: 50px;margin-right: 50px">
            <h1>Sign Up</h1>
            <p>Please fill in this form to create an account.</p>

            <label><b>Name</b></label>
            <input type="text" placeholder="Enter Name" name="name" required>

            <label><b>Email</b></label>
            <input type="text" placeholder="Enter Email" name="email" required>

            <label><b>Password</b></label>
            <input type="password" placeholder="Password" name="password" required>

            <label>
              <input type="checkbox" checked="checked" name="remember" style="margin-bottom:15px"> Remember me
            </label>

            <p>By creating an account you agree to our <a href="#" style="color:dodgerblue">Terms & Privacy</a>.</p>

            <div class="clearfix">
              <button type="submit" class="center-block">Sign Up</button>
            </div>
          </div>
</form>
    </body>
</html>
