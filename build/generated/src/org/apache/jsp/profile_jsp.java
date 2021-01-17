package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.util.*;

public final class profile_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("<!-- Latest compiled and minified CSS -->\n");
      out.write("<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css\">\n");
      out.write("\n");
      out.write("<!-- jQuery library -->\n");
      out.write("<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js\"></script>\n");
      out.write("\n");
      out.write("<!-- Latest compiled JavaScript -->\n");
      out.write("<script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js\"></script>\n");
      out.write("<link rel=\"stylesheet\" href=\"https://www.w3schools.com/w3css/4/w3.css\">\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("<link rel=\"stylesheet\" href=\"https://www.w3schools.com/w3css/4/w3.css\">\n");
      out.write("<link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("<style>\n");
      out.write("@media (min-width: 768px) {\n");
      out.write(".carousel-multi-item-2 .col-md-3 {\n");
      out.write("float: left;\n");
      out.write("width: 25%;\n");
      out.write("max-width: 100%; } }\n");
      out.write("\n");
      out.write(".carousel-multi-item-2 .card img {\n");
      out.write("border-radius: 2px; }\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("/* Bordered form */\n");
      out.write("form {\n");
      out.write("  border: 3px solid #f1f1f1;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Full-width inputs */\n");
      out.write("input[type=text], input[type=password] {\n");
      out.write("  width: 35%;\n");
      out.write("  padding: 12px 20px;\n");
      out.write("  margin: 8px 0;\n");
      out.write("  display: inline-block;\n");
      out.write("  border: 1px solid #ccc;\n");
      out.write("  box-sizing: border-box;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Set a style for all buttons */\n");
      out.write("button {\n");
      out.write("  background-color: #4CAF50;\n");
      out.write("  color: white;\n");
      out.write("  padding: 14px 20px;\n");
      out.write("  margin: 8px 0;\n");
      out.write("  border: none;\n");
      out.write("  cursor: pointer;\n");
      out.write("  width: 35%;\n");
      out.write("}\n");
      out.write("\n");
      out.write("\n");
      out.write("    .parallax {\n");
      out.write("    /* The image used */\n");
      out.write("    background-image: url(\"stack2.png\");\n");
      out.write("\n");
      out.write("    /* Set a specific height */\n");
      out.write("    min-height: 500px;\n");
      out.write("\n");
      out.write("    /* Create the parallax scrolling effect */\n");
      out.write("    background-attachment: fixed;\n");
      out.write("    background-position: center;\n");
      out.write("    background-repeat: no-repeat;\n");
      out.write("    background-size: cover;\n");
      out.write("\t\n");
      out.write("    filter: alpha(opacity=50);\n");
      out.write("}\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write(" \n");
      out.write("\n");
      out.write("</style>\n");
      out.write("<script>\n");
      out.write("        $(document).ready(function(){\n");
      out.write("            $(\"#login\").click(function(){\n");
      out.write("               \n");
      out.write("                $(\"#log\").modal();\n");
      out.write("                \n");
      out.write("            });\n");
      out.write("        });\n");
      out.write("        \n");
      out.write("        \n");
      out.write("\n");
      out.write("        </script>\n");
      out.write(" </head>\n");
      out.write(" \n");
      out.write("<body>\n");
      out.write("    ");
 try{                                              
            
            Cookie c[]=request.getCookies();
            String email=null;
            for(int i=0;i<c.length;i++){
                if(c[i].getName().equals("user")){
                    email=c[i].getValue();
                    break;
                }
            }
           
          if(email!=null && session.getAttribute(email)!=null){  
           
                 Class.forName("com.mysql.jdbc.Driver");
                 Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/stackoverflow","root","");
                 Statement st=cn.createStatement();
                 ResultSet rs=st.executeQuery("select * from category");
 
      out.write("\n");
      out.write("\n");
      out.write("    <header>\n");
      out.write(" <div class=\"row\">\n");
      out.write(" <nav class=\"navbar navbar-inverse navbar-fixed-top\">\n");
      out.write("  <div class=\"container-fluid\">\n");
      out.write("    <div class=\"navbar-header\" style=\"height: 70px\">\n");
      out.write("      <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\"#myNavbar\">\n");
      out.write("        <span class=\"icon-bar\"></span>\n");
      out.write("        <span class=\"icon-bar\"></span>\n");
      out.write("        <span class=\"icon-bar\"></span>\n");
      out.write("      </button>\n");
      out.write("      <a class=\"navbar-brand\" href=\"#\"><img src=\"stack.jpg\" class=\"img-fluid\" style=\"width: 50px\"></a>\n");
      out.write("      <a class=\"navbar-brand\" style=\"font-size: 40px\" href=\"#\">StackOverflow</a>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"collapse navbar-collapse\" id=\"myNavbar\">\n");
      out.write("      <ul class=\"nav navbar-nav\">\n");
      out.write("        <li class=\"active\"><a href=\"index.jsp\" style=\"font-size: 20px\">Home</a></li>\n");
      out.write("        <li><a href=\"#\" style=\"font-size: 20px\">Contact</a></li>\n");
      out.write("        <li><a href=\"#\" style=\"font-size: 20px\">Customer</a></li>\n");
      out.write("        <li><a href=\"#\" style=\"font-size: 20px\">About</a></li>\n");
      out.write("       \n");
      out.write("        <form class=\"navbar-form navbar-left\" action=\"/action_page.php\">\n");
      out.write("            <div class=\"input-group\">\n");
      out.write("              <input type=\"text\" class=\"form-control mr-sm-2\" placeholder=\"Search\">\n");
      out.write("              <div class=\"input-group-btn\">\n");
      out.write("                <button class=\"btn btn-default\" type=\"submit\" style=\"width:40px\">\n");
      out.write("                  <i class=\"glyphicon glyphicon-search\"></i>\n");
      out.write("                </button>\n");
      out.write("              </div>\n");
      out.write("            </div>\n");
      out.write("        </form>\n");
      out.write("      </ul>\n");
      out.write("      <ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("       \n");
      out.write("        <li><a href=\"#\" id=\"login\" style=\"font-size: 20px\"><span class=\"glyphicon glyphicon-user\"></span> ");
      out.print(email);
      out.write("</a></li>\n");
      out.write("      </ul>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("</nav>\n");
      out.write("       <div class=\"col-sm-12 parallax\"></div>\n");
      out.write(" </div>\n");
      out.write("    </header>\n");
      out.write("<!--model 1-->\n");
      out.write("     \n");
      out.write("        <div class=\"modal fade\"  id=\"log\" rol=\"dialog\"  >\n");
      out.write("            <div class=\"modal-dialog\" >\n");
      out.write("                <div class=\"modal-content\" style=\"width: 500px;height: 500px\">\n");
      out.write("                    <div class=\"w3-bar w3-boader w3-blue w3-padding-16\">\n");
      out.write("                        <div class=\"w3-bar-item w3-centre\" style=\"margin-left: 125px; font-size: 50px\" >LOGIN</div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"modal-body\"  style=\"width: 500px;height: 500px\" >\n");
      out.write("                        <form action=\"login.jsp\" method=\"post\"  >\n");
      out.write("                               \n");
      out.write("\n");
      out.write("                                <div class=\"container\">\n");
      out.write("                                    <label for=\"uname\"><b>Username:</b></label><br>\n");
      out.write("                                    ");

                                                                     if(email!=null){
                                                                              out.println(email);
                                                                                 out.println("<br>");

                                                                        }
                                                                       else{
                                    
      out.write("\n");
      out.write("                                  <input type=\"text\" placeholder=\"Enter Username\" name=\"email\" required><br>\n");
      out.write("                                  ");
 
                                                                     }
                                   
      out.write("\n");
      out.write("                                  <label for=\"psw\"><b>Password:</b></label><br>\n");
      out.write("                                  <input type=\"password\" placeholder=\"Enter Password\" name=\"password\" required><br>\n");
      out.write("\n");
      out.write("                                  <button type=\"submit\">Login</button><br>\n");
      out.write("                                  <label>\n");
      out.write("                                    <input type=\"checkbox\" checked=\"checked\" name=\"remember\"> Remember me\n");
      out.write("                                  </label>\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("                               \n");
      out.write("                        </form>\n");
      out.write("                          ");

                                    
                                if(request.getParameter("err")!=null)
                                    {
                                                out.println("enter email");
                                     }

                         
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write(" <!--model 1 end-->\n");
      out.write("\n");
      out.write("\n");
      out.write(" \n");
      out.write("    <div class=\"row\">\n");
      out.write("         \n");
      out.write("        <div class=\"col-sm-2\">\n");
      out.write("            <div class=\"w3-card\" style=\"margin: 20px;width: 250px\">\n");
      out.write("                <p class=\"w3-centre w3-red\" style=\"font-size: 25px\">Categories</p>\n");
      out.write("                   <ul class=\"nav nav-pills nav-stacked\">\n");
      out.write("                   ");

                        while(rs.next()){
                   
      out.write("\n");
      out.write("                   <li><a href=\"#\">");
      out.print(rs.getString(3));
      out.write("</a></li>\n");
      out.write("                    ");

                        }
                    
      out.write("\n");
      out.write("                   </ul>\n");
      out.write("            </div>\n");
      out.write("                   \n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("       \n");
      out.write("        \n");
      out.write("        <div class=\"col-sm-10\" > \n");
      out.write("            \n");
      out.write("                 <div class=\"w3-card\" style=\"margin: 20px; height: 70px\">\n");
      out.write("                    <div class=\"w3-panel\">\n");
      out.write("                        <div class=\"w3-bar w3-boader w3-white w3-round-large \">\n");
      out.write("                            <a href=\"question.jsp\" ><button class=\"w3-button w3-blue w3-hover-red w3-center w3-round-large\" style=\"margin-left: 350px\">Ask Question</button></a>\n");
      out.write("                            \n");
      out.write("                        </div>\n");
      out.write("                        \n");
      out.write("                    </div>\n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("            \n");
      out.write("            <div class=\"w3-card\" style=\"margin: 20px\">\n");
      out.write("                <div class=\"w3-panel w3-leftbar\">\n");
      out.write("                        <div class=\"w3-bar w3-boader w3-white w3-round-large\">\n");
      out.write("                           <div class=\"col-sm-1\" >  \n");
      out.write("                                <img src=\"p1.jpg\" class=\"w3-circle\" style=\"width: 80px\" alt=\"Alps\">\n");
      out.write("                           </div>\n");
      out.write("                            <div class=\"col-sm-11\" >  \n");
      out.write("                                <i>Akash sharma</i><br><br>\n");
      out.write("                                <div>March 05,2019</div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <p class=\"w3-xxlarge w3-serif\" >\n");
      out.write("                        <i>dshguwgfuwegfiwehfiueh skdniosj jkdnisdvvsod jnjdnjsd knsdvnsd knvnvksd kndnvfok</i></p>\n");
      out.write("                        <div style=\"margin: 10px\">\n");
      out.write("                            <a href=\"#\" ><button class=\"w3-button w3-blue w3-hover-red\">Write Answer</button></a>\n");
      out.write("                            <a href=\"#\" ><button class=\"w3-button w3-blue w3-hover-red\">See Answers</button></a>\n");
      out.write("                            <i  class=\"fa fa-eye\" style=\"float:right;color:black; font-size: 30px\"> 10 &nbsp;&nbsp;</i>\n");
      out.write("                              <i  class=\"fa fa-comment\" style=\"float:right;color:blue; font-size: 30px\"> 5 &nbsp;&nbsp;</i>\n");
      out.write("                            <i  class=\"fa fa-heart\" style=\"float:right;color:red; font-size: 30px\"> 10 &nbsp;&nbsp;</i>\n");
      out.write("                        </div>\n");
      out.write("                        \n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("        </div> \n");
      out.write("           \n");
      out.write("        \n");
      out.write("        \n");
      out.write(" </div>\n");
      out.write("    <div class=\"row\">\n");
      out.write("         <div class=\"col-sm-12\">\n");
      out.write("        <footer class=\"page-footer font-small blue pt-4\" style=\"background-color:black ; color:white\">\n");
      out.write("\n");
      out.write("  <!-- Footer Links -->\n");
      out.write("  <div class=\"container-fluid text-center text-md-left\">\n");
      out.write("\n");
      out.write("    <!-- Grid row -->\n");
      out.write("    <div class=\"row\">\n");
      out.write("\n");
      out.write("      <!-- Grid column -->\n");
      out.write("      <div class=\"col-md-6 mt-md-0 mt-3\">\n");
      out.write("\n");
      out.write("        <!-- Content -->\n");
      out.write("        <h5 class=\"text-uppercase\">Footer Content</h5>\n");
      out.write("        <p>Here you can use rows and columns to organize your footer content.</p>\n");
      out.write("\n");
      out.write("      </div>\n");
      out.write("      <!-- Grid column -->\n");
      out.write("\n");
      out.write("      <hr class=\"clearfix w-100 d-md-none pb-3\">\n");
      out.write("\n");
      out.write("      <!-- Grid column -->\n");
      out.write("      <div class=\"col-md-3 mb-md-0 mb-3\">\n");
      out.write("\n");
      out.write("        <!-- Links -->\n");
      out.write("        <h5 class=\"text-uppercase\">Links</h5>\n");
      out.write("\n");
      out.write("        <ul class=\"list-unstyled\">\n");
      out.write("          <li>\n");
      out.write("            <a href=\"#!\">Link 1</a>\n");
      out.write("          </li>\n");
      out.write("          <li>\n");
      out.write("            <a href=\"#!\">Link 2</a>\n");
      out.write("          </li>\n");
      out.write("          <li>\n");
      out.write("            <a href=\"#!\">Link 3</a>\n");
      out.write("          </li>\n");
      out.write("          <li>\n");
      out.write("            <a href=\"#!\">Link 4</a>\n");
      out.write("          </li>\n");
      out.write("        </ul>\n");
      out.write("\n");
      out.write("      </div>\n");
      out.write("      <!-- Grid column -->\n");
      out.write("\n");
      out.write("      <!-- Grid column -->\n");
      out.write("      <div class=\"col-md-3 mb-md-0 mb-3\">\n");
      out.write("\n");
      out.write("        <!-- Links -->\n");
      out.write("        <h5 class=\"text-uppercase\">Links</h5>\n");
      out.write("\n");
      out.write("        <ul class=\"list-unstyled\">\n");
      out.write("          <li>\n");
      out.write("            <a href=\"#!\">Link 1</a>\n");
      out.write("          </li>\n");
      out.write("          <li>\n");
      out.write("            <a href=\"#!\">Link 2</a>\n");
      out.write("          </li>\n");
      out.write("          <li>\n");
      out.write("            <a href=\"#!\">Link 3</a>\n");
      out.write("          </li>\n");
      out.write("          <li>\n");
      out.write("            <a href=\"#!\">Link 4</a>\n");
      out.write("          </li>\n");
      out.write("        </ul>\n");
      out.write("\n");
      out.write("      </div>\n");
      out.write("      <!-- Grid column -->\n");
      out.write("\n");
      out.write("    </div>\n");
      out.write("    <!-- Grid row -->\n");
      out.write("\n");
      out.write("  </div>\n");
      out.write("  <!-- Footer Links -->\n");
      out.write("\n");
      out.write("  <!-- Copyright -->\n");
      out.write("  <div class=\"footer-copyright text-center py-3\">© 2018 Copyright:\n");
      out.write("    <a href=\"https://mdbootstrap.com/education/bootstrap/\"> MDBootstrap.com</a>\n");
      out.write("  </div>\n");
      out.write("  <!-- Copyright -->\n");
      out.write("\n");
      out.write("</footer>\n");
      out.write("        </div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write(" ");

          }
           else{
             response.sendRedirect("index.jsp");
         }
                                                                                                                         
    }
    catch(NullPointerException er){
        
        response.sendRedirect("index.jsp");
    }
 
      out.write('\n');
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
