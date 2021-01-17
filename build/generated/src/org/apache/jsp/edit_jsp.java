package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class edit_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("   ");

        Cookie c[]=request.getCookies();
            String email=null;
            for(int i=0;i<c.length;i++){
                if(c[i].getName().equals("user")){
                    email=c[i].getValue();
                    break;
                }
            }
         if(email!=null && session.getAttribute(email)!=null){
                   String code=request.getParameter("id");
                   Class.forName("com.mysql.jdbc.Driver");
                   Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/stackoverflow","root","");
                   Statement st=cn.createStatement();
                   out.println(email);
         
                 
   
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("   <header>\n");
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
      out.write("                <li class=\"nav-item dropdown\">\n");
      out.write("                    <a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"navbardrop\" data-toggle=\"dropdown\" style=\"font-size: 20px\">\n");
      out.write("                          ");
      out.print(email);
      out.write("\n");
      out.write("                    </a>\n");
      out.write("                    <div class=\"dropdown-menu\">\n");
      out.write("                          <a class=\"dropdown-item\" href=\"logout.jsp\">LOGOUT</a>       \n");
      out.write("                    </div>\n");
      out.write("                </li>\n");
      out.write("      </ul>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("</nav>\n");
      out.write(" </div>\n");
      out.write("</header>\n");
      out.write("      ");

            ResultSet rs=st.executeQuery("select * from question where code='"+code+"'");
            if(rs.next()){
      
      out.write("       \n");
      out.write(" <form method=\"post\" action=\"update.jsp?id=");
      out.print(code);
      out.write("\">\n");
      out.write(" <div class=\"container\">\n");
      out.write("      <div class=\"row\">\n");
      out.write("          <div class=\"panel-group\" id=\"accordion\" style=\"margin-top: 150px\">\n");
      out.write("                <div class=\"panel panel-default\">\n");
      out.write("                  <div class=\"panel-heading\">\n");
      out.write("                    <h4 class=\"panel-title\">\n");
      out.write("                      <a data-toggle=\"collapse\" data-parent=\"#accordion\" href=\"#collapse1\">\n");
      out.write("                      Ask Question</a>\n");
      out.write("                    </h4>\n");
      out.write("                  </div>\n");
      out.write("                  <div id=\"collapse1\" class=\"panel-collapse collapse in\">\n");
      out.write("                    <div class=\"panel-body\" style=\"height: 200px\">\n");
      out.write("                                        \n");
      out.write("                        <textarea class=\"form-control\" name=\"question\" rows=\"5\"> ");
      out.print(rs.getString(4));
      out.write("</textarea>\n");
      out.write("                        \n");
      out.write("                    </div>\n");
      out.write("                  </div>\n");
      out.write("                </div>\n");
      out.write("     </div>\n");
      out.write("            \n");
      out.write("     <div class=\"panel-group\" id=\"accordion\">\n");
      out.write("                <div class=\"panel panel-default\">\n");
      out.write("                      <div class=\"panel-heading\">\n");
      out.write("                         <h4 class=\"panel-title\">\n");
      out.write("                             <a data-toggle=\"collapse\" data-parent=\"#accordion\" href=\"#collapse1\" >\n");
      out.write("                             Question Description</a>\n");
      out.write("                         </h4>\n");
      out.write("                      </div>\n");
      out.write("                  <div id=\"collapse1\" class=\"panel-collapse collapse in\">\n");
      out.write("                    <div class=\"panel-body\" style=\"height: 200px\">\n");
      out.write("                        \n");
      out.write("                        <textarea class=\"form-control\" name=\"descrip\" rows=\"7\" >");
      out.print(rs.getString(5));
      out.write("</textarea>\n");
      out.write("                        \n");
      out.write("                    </div>\n");
      out.write("                  </div>\n");
      out.write("                </div>\n");
      out.write("     </div>    \n");
      out.write("  \n");
      out.write("        \n");
      out.write("      </div>\n");
      out.write("     \n");
      out.write(" </div>\n");
      out.write("   <input type=\"submit\" class=\"w3-blue center-block\" value=\"Update\">\n");
      out.write(" </form>\n");
      out.write("    ");

                            }
   
      out.write("\n");
      out.write("      \n");
      out.write("      \n");
      out.write("</body>\n");
      out.write("</html>    \n");

         }
         else{
             response.sendRedirect("index.jsp");
         }

      out.write("   \n");
      out.write("   ");
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
