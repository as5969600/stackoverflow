package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class signup_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("      <!-- Latest compiled and minified CSS -->\n");
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
      out.write("</style>\n");
      out.write("\n");
      out.write("  \n");
      out.write("\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    <header>\n");
      out.write("        <div class=\"container fluid\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                 <nav class=\"navbar navbar-inverse navbar-fixed-top\">\n");
      out.write("                  <div class=\"container-fluid\">\n");
      out.write("                    <div class=\"navbar-header\" style=\"height: 70px\">\n");
      out.write("                      <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\"#myNavbar\">\n");
      out.write("                        <span class=\"icon-bar\"></span>\n");
      out.write("                        <span class=\"icon-bar\"></span>\n");
      out.write("                        <span class=\"icon-bar\"></span>\n");
      out.write("                      </button>\n");
      out.write("                      <a class=\"navbar-brand\" href=\"#\"><img src=\"stack.jpg\" class=\"img-fluid\" style=\"width: 50px\"></a>\n");
      out.write("                      <a class=\"navbar-brand\" style=\"font-size: 40px\" href=\"#\">StackOverflow</a>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"collapse navbar-collapse\" id=\"myNavbar\">\n");
      out.write("                      <ul class=\"nav navbar-nav\">\n");
      out.write("                        <li class=\"active\"><a href=\"index.jsp\" style=\"font-size: 20px\">Home</a></li>\n");
      out.write("                        <li><a href=\"#\" style=\"font-size: 20px\">Product</a></li>\n");
      out.write("                        <li><a href=\"#\" style=\"font-size: 20px\">Customer</a></li>\n");
      out.write("                        <li><a href=\"#\" style=\"font-size: 20px\">Page 3</a></li>\n");
      out.write("                        <li class=\"nav-item dropdown\">\n");
      out.write("                            <a class=\"nav-link dropdown-toggle\" style=\"font-size:20px\" href=\"#\" id=\"navbardrop\" data-toggle=\"dropdown\">\n");
      out.write("                              Use cases\n");
      out.write("                            </a>\n");
      out.write("                            <div class=\"dropdown-menu\">\n");
      out.write("                              <a class=\"dropdown-item\" href=\"#\">Link 1</a>\n");
      out.write("                              <a class=\"dropdown-item\" href=\"#\">Link 2</a>\n");
      out.write("                              <a class=\"dropdown-item\" href=\"#\">Link 3</a>\n");
      out.write("                            </div>\n");
      out.write("                      </li>\n");
      out.write("                        <form class=\"navbar-form navbar-left\" action=\"/action_page.php\">\n");
      out.write("                            <div class=\"input-group\">\n");
      out.write("                              <input type=\"text\" class=\"form-control mr-sm-2\" placeholder=\"Search\">\n");
      out.write("                              <div class=\"input-group-btn\">\n");
      out.write("                                <button class=\"btn btn-default\" type=\"submit\">\n");
      out.write("                                  <i class=\"glyphicon glyphicon-search\"></i>\n");
      out.write("                                </button>\n");
      out.write("                              </div>\n");
      out.write("                            </div>\n");
      out.write("                        </form>\n");
      out.write("                      </ul>\n");
      out.write("                      <ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("                        <li><a href=\"signup.jsp\" style=\"font-size: 20px\"><span class=\"glyphicon glyphicon-user\"></span> Sign Up</a></li>\n");
      out.write("                        <li><a href=\"#\" id=\"login\" style=\"font-size: 20px\"><span class=\"glyphicon glyphicon-log-in\"></span> Login</a></li>\n");
      out.write("                      </ul>\n");
      out.write("                    </div>\n");
      out.write("                  </div>\n");
      out.write("                </nav>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </header> \n");
      out.write(" \n");
      out.write("<!-- main -->\n");
      out.write(" <form action=\"action_page.php\" style=\"border:1px solid #ccc\">\n");
      out.write("  <div class=\"container\">\n");
      out.write("    <h1>Sign Up</h1>\n");
      out.write("    <p>Please fill in this form to create an account.</p>\n");
      out.write("    <hr>\n");
      out.write("\n");
      out.write("    <label for=\"email\"><b>Email</b></label>\n");
      out.write("    <input type=\"text\" placeholder=\"Enter Email\" name=\"email\" required>\n");
      out.write("\n");
      out.write("    <label for=\"psw\"><b>Password</b></label>\n");
      out.write("    <input type=\"password\" placeholder=\"Enter Password\" name=\"psw\" required>\n");
      out.write("\n");
      out.write("    <label for=\"psw-repeat\"><b>Repeat Password</b></label>\n");
      out.write("    <input type=\"password\" placeholder=\"Repeat Password\" name=\"psw-repeat\" required>\n");
      out.write("\n");
      out.write("    <label>\n");
      out.write("      <input type=\"checkbox\" checked=\"checked\" name=\"remember\" style=\"margin-bottom:15px\"> Remember me\n");
      out.write("    </label>\n");
      out.write("\n");
      out.write("    <p>By creating an account you agree to our <a href=\"#\" style=\"color:dodgerblue\">Terms & Privacy</a>.</p>\n");
      out.write("\n");
      out.write("    <div class=\"clearfix\">\n");
      out.write("      <button type=\"button\" class=\"cancelbtn\">Cancel</button>\n");
      out.write("      <button type=\"submit\" class=\"signupbtn\">Sign Up</button>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("</form>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
