<%-- 
    Document   : question
    Created on : Oct 7, 2019, 2:06:06 PM
    Author     : user
--%>

<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    if(request.getParameter("id")==null){
            response.sendRedirect("myques.jsp");
    }
    else{
            Cookie c[]=request.getCookies();
                    String email=null;
                    for(int i=0;i<c.length;i++){
                        if(c[i].getName().equals("user")){
                            email=c[i].getValue();
                            break;
                        }
                    }
            String code=request.getParameter("id");
%>
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



        input.Checkbox { 
            width: 30px; 
            height: 30px; 
        } 
        .A1{
            margin-left: 700px
        }
       
</style>
<script>
        $(document).ready(function(){
            $("#login").click(function(){
                
                $("#log").modal();
                
            });
        });
 </script>
 <script src="jquery.min.js"></script>
 <script>
     $(document).ready(function(){
         $(".A2").click(function(){
             var v=$(this).attr("id");
             var s=$(this).attr("rel");
             var u="<%=code%>";    
            // $("#dd").append("<button class='btn btn-primary' id='"+v+"' rel='"+s+"'>"+s+"</button><br>");
            $.post(
                           "category_submit.jsp",{id:v,code:u},function(data){
                               console.log(data);
                            if(data.trim()=="success"){
                                 $("#"+v).hide(0); 
                                 $("#dd").append("<button class='btn btn-primary A1' id='"+v+"' rel='"+s+"'>"+s+"</button><br>");                                
                            }
                            else{
                                  alert(data);
                            }                          
             });          
         });
     });
     
     
     $(document).ready(function(){
         $(".A1").click(function(){
             var v=$(this).attr("id");
             var s=$(this).attr("rel");
             var u="<%=code%>"; 
             
             //$("#dd").append("<button class='btn btn-primary' id='"+v+"' rel='"+s+"'>"+s+"</button><br>");
            $.post(
                           "category_delete.jsp",{id:v,code:u},function(data){
                            if(data.trim()=="success"){
                                 $("#"+v).hide(0); 
                                 $("#aa").append("<button class='btn btn-primary A2' id='"+v+"' rel='"+s+"'>"+s+"</button><br>");     
                            }
                            else{
                                  alert(data);
                            }                          
             });          
         });
     });
         
 </script>    
 </head> 
<body>
   <%    
         if(email!=null && session.getAttribute(email)!=null){
             
             Class.forName("com.mysql.jdbc.Driver");
             Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/stackoverflow","root","");
             Statement st=cn.createStatement();
             Statement sd=cn.createStatement();
                       
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
                <button class="btn btn-default" type="submit" style="width:40px">
                  <i class="glyphicon glyphicon-search"></i>
                </button>
              </div>
            </div>
        </form>
      </ul>
      <ul class="nav navbar-nav navbar-right">
       
        <li><a href="#" id="login" style="font-size: 20px"><span class="glyphicon glyphicon-user"></span> <%=email%></a></li>
      </ul>
    </div>
  </div>
</nav>
</div>
</header>
 
 <div class="container" >
      <div class="row">
          <div class="panel-group" style="margin-top: 150px">
                <div class="panel panel-default">
                  <div class="panel-heading">
                    <h4 class="panel-title w3-center" style="font-size: 30px" >                        
                      <a data-toggle="collapse" data-parent="#accordion" href="#collapse1">CATEGORIES</a>
                    </h4>
                  </div>
                  <div id="collapse1" class="panel-collapse collapse in">
                    <div class="panel-body" >
                       <%
                            ResultSet rs= st.executeQuery("select * from category ");
                            while(rs.next()){
                                 int flag=0;
                                 String cat= rs.getString(2);
                                 
                                 ResultSet rd=sd.executeQuery("select * from question_category where question_code='"+code+"' ");
                                 String cate=null;
                                 while(rd.next()){
                                     cate=rd.getString(1);
                                     
                                     if(cat.equals(cate)){
                                          flag=1;
                                     }                       
                                 }
                                 if(flag==0){
                       %> 
                       <div id="aa">
                           
                                <button class="btn btn-primary A2" id="<%=cat%>" rel="<%=rs.getString(3)%>"><%=rs.getString(3)%></button><br>
                                            
                                   </div>
                        <%
                                 }
                                 else{
                        %>
                        <div id="dd">
                       <button class="btn btn-primary A1" id="<%=cat%>" rel="<%=rs.getString(3)%>"><%=rs.getString(3)%></button><br>
                       </div>
                        <%
                                 }
                         
                            } 
                         
                        %>
                    </div>
                    </div>
                  </div>
                </div>
        </div>
          </div>     
      </div>
 </div> 
                        <button type="button" class="center-block"><a href="profile.jsp" >Submit</a> </button>
</body>
</html>
<%
    }
                else{
                       response.sendRedirect("index.jsp");
                    }
    }
%>
