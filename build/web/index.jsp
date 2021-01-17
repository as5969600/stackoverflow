<%-- 
    Document   : index
    Created on : Sep 19, 2019, 11:39:02 PM
    Author     : user
--%>

<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%
        try{
            Cookie c[]=request.getCookies();
            String email=null;
            for(int i=0;i<c.length;i++){
                if(c[i].getName().equals("user")){
                    email=c[i].getValue();
                    break;
                }
            }
    %>
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

/* Set a style for all buttons*/ 
#Login1,#Login,#Login2{
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
         $(document).ready(function(){
            $("#Login").click(function(){
               
                $("#log").modal();
                
            });
        });
        
   

 </script>
</head>
 
<body>
    <%      
         
          if(email!=null && session.getAttribute(email)!=null){
              response.sendRedirect("profile.jsp");
          }
          else{
              try{
                 Class.forName("com.mysql.jdbc.Driver");
                 Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/stackoverflow","root","");
                 Statement st=cn.createStatement();
                 Statement sd=cn.createStatement();
                 Statement ss=cn.createStatement();
                 Statement sv=cn.createStatement();
                 
                
                
 %>

    <header>
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
        <li><a href="#" style="font-size: 20px">Customer</a></li>
        <li><a href="#" style="font-size: 20px">About</a></li>
       
       <form class="navbar-form navbar-left" action="/action_page.php">
            <div class="input-group">
              <input type="text" class="form-control mr-sm-2" placeholder="Search">
              <div class="input-group-btn">
                <button class="btn btn-default" type="submit" style="margin-top:8px">
                  <i class="glyphicon glyphicon-search"></i>
                </button>
              </div>
            </div>
        </form>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="signup.jsp" style="font-size: 20px"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a href="#" id="login" style="font-size: 20px"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
    </div>
  </div>
</nav>
 </div>
    </header>
<!--model 1-->
     
        <div class="modal fade"  id="log" rol="dialog"  >
            <div class="modal-dialog" >
                <div class="modal-content" style="width: 500px;height: 500px">
                    <div class="w3-bar w3-boader w3-blue w3-padding-16">
                        <div class="w3-bar-item w3-centre" style="margin-left: 125px; font-size: 50px" >LOGIN</div>
                    </div>
                    <div class="modal-body"  style="width: 500px;height: 500px" >
                        <form action="login.jsp" method="post"  >
                                <div class="container">
                                    <label for="uname"><b>Username:</b></label><br>
                                    <%
                                                                     if(email!=null){
                                                                              out.println(email);
                                                                                 out.println("<br>");

                                                                        }
                                                                       else{
                                    %>
                                  <input type="text" placeholder="Enter Username" name="email" required><br>
                                  <% 
                                                                     }
                                   %>
                                  <label for="psw"><b>Password:</b></label><br>
                                  <input type="password" placeholder="Enter Password" name="password" required><br>

                                  <button type="submit" id="Login2">Login</button><br>
                                  <label>
                                    <input type="checkbox" checked="checked" name="remember"> Remember me
                                  </label>
                                </div>

                               
                        </form>
                          <%
                                    
                                if(request.getParameter("err")!=null)
                                    {
                                                out.println("enter email");
                                     }

                         %>
                    </div>
                </div>
            </div>
        </div>
 <!--model 1 end-->

<div class="row">
    
        <div class="col-sm-12">
            <img src="stack1.jpg" style="width: 100%" class="img-fluid">
        </div>
</div>
 
<div class="row">
      
        <div class="col-sm-2">
            <div class=" w3-card w3-collapse" style="margin: 20px;width: 250px">
                <p class="w3-centre w3-red" style="font-size: 25px">Categories</p>
                   <ul class="nav nav-pills nav-stacked">
                   <%
                        ResultSet rs=st.executeQuery("select * from category");
                        while(rs.next()){
                   %>
                   <li><a href="#"><%=rs.getString(3)%></a></li>
                    <%
                        }
                    %>
                   </ul>
            </div>
        </div>
        
 <div style="margin-left:300px"> 
     <div class="col-sm-12">
               <%
                 ResultSet rd=sd.executeQuery("select * from question");
                while(rd.next()){
                      String Email=rd.getString(3);
                      ResultSet rt=ss.executeQuery("select * from register where email='"+Email+"' ");
                      if(rt.next()){
                %>  
    
       
            <div class=" w3-card w3-collapse" style="margin: 20px">
                <div class="w3-panel w3-leftbar">
                        <div class="w3-bar w3-boader w3-white w3-round-large">
                           <div class="col-sm-1" >  
                                <img src="p1.jpg" class="w3-circle" style="width: 80px" alt="Alps">
                           </div>
                            <div class="col-sm-11" >  
                                <i><%=rt.getString(3)%></i><br><br>
                                <div><%=rd.getString(6)%></div>
                            </div>
                        </div>
                        <p class="w3-xxlarge w3-serif" >
                        <i><%=rd.getString(4)%></i></p>
                        <%
                        ResultSet rv=sv.executeQuery("select * from question_category where question_code='"+rd.getString(2)+"' ");
                        while(rv.next()){        
                        %>
                           <button class="btn btn-default"><%=rv.getString(3)%></button>
                        <%
                        }
                        %>
                        <div style="margin: 10px">
                            <a href="#" ><button class="w3-button w3-blue w3-hover-red" id="Login">Write Answer</button></a>
                            <a href="seeanswer.jsp?id=<%=rd.getString(2)%>" ><button class="w3-button w3-blue w3-hover-red" id="Login1">See Answers</button></a>
                            
                            <i  class="fa fa-comment" style="float:right;color:blue; font-size: 30px"><%=rd.getString(7)%> &nbsp;&nbsp;</i>
                          
                        </div>
                        
                </div>
            </div>
             
     
        <%
                     }
                  }
        %>
     </div>
 </div>     
      
 </div>
    <div class="row">
         <div class="col-sm-12">
        <footer class="page-footer font-small blue pt-4" style="background-color:black ; color:white">

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
</div>
<%
                                                                                                                              
              }   
              catch(NullPointerException er){
                    out.println(er.getMessage());
              }
                                                                                                                         
    }
        }
        catch(NullPointerException nr){
            response.sendRedirect("index.jsp");
        }
 %>
</body>
</html>
 