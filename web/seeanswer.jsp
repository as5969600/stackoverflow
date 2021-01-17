<%-- 
    Document   : profile.jsp
    Created on : Oct 1, 2019, 4:34:43 PM
    Author     : user
--%>

<%@page import="java.sql.*,java.util.*" contentType="text/html" pageEncoding="UTF-8"%>
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
#Login1,#Login,#Login2 {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 35%;
}


    .parallax {
    /* The image used */
    background-image: url("stack2.png");

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
<script>
        $(document).ready(function(){
            $("#login").click(function(){
               
                $("#log").modal();
                
            });
        });        
        $(document).ready(function(){
               $(".like").click(function(){
                   var v = this.id;
                   var u = $(this).attr("rel");
                   $.post(
                           "like.jsp",{id:v,code:u},function(data){
                               console.log(data);
                               if(data.trim()=="success"){  
                                   $.post(
                                           "like_submit.jsp",{id:v},function(data){
                                               console.log(data);
                                                if(data.trim()=="success"){ 
                                                     location.reload(true);
                                                }
                                                else{
                                                   alert("hi"); 
                                                }  
                                           }
                                           );  
                               }
                               else if(data.trim()=="nullemail"){
                                       $("#log").modal();
                               }
                               else if(data.trim()=="hello"){
                                   alert("you already like this answer.....");
                               }
                               else{
                                   alert("data not insert");
                               }
                         }
                   );   
               });
            });

        </script>
</head>
<body>
    <% try{                                               
                Cookie c[]=request.getCookies();
                String email=null;
                for(int i=0;i<c.length;i++){
                    if(c[i].getName().equals("user")){
                        email=c[i].getValue();
                        break;
                    }
                }            
                 String code=request.getParameter("id");
                 Class.forName("com.mysql.jdbc.Driver");
                 Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/stackoverflow","root","");
                 Statement st=cn.createStatement();
                 Statement sd=cn.createStatement();
                 Statement ss=cn.createStatement();
                 Statement sv=cn.createStatement();
                 ResultSet rs=st.executeQuery("select * from category");
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
               <li><a href="#" style="font-size: 20px">Contact</a></li>
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


 
 <div class="row" style="margin-top:100px">
         
        <div class="col-sm-2">
            <div class="w3-card" style="margin: 20px;width: 250px">
                <p class="w3-centre w3-red" style="font-size: 25px">Categories</p>
                   <ul class="nav nav-pills nav-stacked">
                   <%
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
                 ResultSet rd=sd.executeQuery("select * from question where code='"+code+"'");
                 if(rd.next()){
            %>         
            <div class="w3-card" style="margin: 0px">
                <div class="w3-panel">
                    <div class="w3-bar w3-boader w3-white w3-round-large ">
                       <p class="w3-xxlarge w3-serif" >
                           <i><%=rd.getString(4)%></i></p><br>
                       <h3><u>Description</u>:</h3><br>
                        <p class="w3-xxlarge w3-serif" style="background-color:powderblue" >
                           <i><%=rd.getString(5)%></i></p><br>
                    </div>                       
                </div>
            </div> 
                    <div>
               <a href="answer.jsp?id=<%=rd.getString(2)%>"><button class="w3-button w3-blue w3-hover-red" id="Login"> Write Answer</button></a>                   
                    </div>
                    
               <%
                 }
                 ResultSet rv=sv.executeQuery("select * from answer where question_code='"+code+"'");
                 while(rv.next()){
                      String Email=rv.getString(2);
                      String id=rv.getString(6);
                      String code1=rv.getString(1);
                      ResultSet rt=ss.executeQuery("select * from register where email='"+Email+"' ");
                      if(rt.next()){
                %>  
            <div class="w3-card w3-collapse" style="margin: 20px">
                <div class="w3-panel w3-leftbar">
                        <div class="w3-bar w3-boader w3-white w3-round-large">
                            <div class="row">
                           <div class="col-sm-2" >  
                                <img src="p1.jpg" class="w3-circle" style="width: 80px" alt="Alps">
                           </div>
                            <div class="col-sm-10" >  
                                <i><%=rt.getString(3)%></i><br><br>
                                <div><%=rv.getString(4)%></div>
                            </div>
                            </div>
                        </div>
                        <p class="w3-xxlarge w3-serif" ><%=rv.getString(3)%>
                       </p>
                        <div style="margin: 10px">          
                            <button style="margin-left: 150px" class="pull-right  like" id="<%=id%>" rel="<%=code%>"><span><i  class="fa fa-thumbs-up" style="float:right;color:black; font-size: 25px"><%=rv.getString(7)%> &nbsp;&nbsp;</i></span></button>
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

</body>
</html>
 <%
         
                                                                                                                         
    }
    catch(NullPointerException er){  
              response.sendRedirect("index.jsp");
    }
 %>

