package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.util.*;
import java.util.Date;

public final class question_005fsubmit_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
 
     String email=null;
     Cookie c[]=request.getCookies();
     for(int i=0;i<c.length;i++){
       if(c[i].getName().equals("user")){
           email=c[i].getValue();
           break;
       }
     }
    if(email!=null && session.getAttribute(email)!=null){
  
    if(request.getParameter("question")==null && request.getParameter("descrip")==null ){
      
    }
    else{
        try{
             int sn=0;
             Class.forName("com.mysql.jdbc.Driver");
             Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/stackoverflow","root","");
             Statement st=cn.createStatement();
              ResultSet rs= st.executeQuery("select max(sn) from question ");
            if(rs.next()){
              sn=rs.getInt(1)+1; 
            }
            LinkedList l=new LinkedList();
           for(char c1='A';c1<='Z';c1++){
               l.add(""+c1);
           }
           for(char c1='a';c1<='z';c1++){
               l.add(""+c1);
            }
           for(int i=0;i<=9;i++){
                  l.add(""+i);
           }
           Collections.shuffle(l);
           String code="";
           for(int i=0;i<6;i++){
               code=code+l.get(i);
           }
           code=code+"_"+sn;
           Date d=new Date();
            String question=request.getParameter("question");
            String descrip=request.getParameter("descrip");
       
        
         st.execute("insert into question values("+sn+",'"+code+"','"+email+"','"+question+"','"+descrip+"','','"+d+"')");
        cn.close();
        response.sendRedirect("category.jsp?id="+code+"");
         }
        catch(Exception e){
            out.println(e.getMessage());
         }
    }
    }
    else{
        response.sendRedirect("index.jsp");
    }
    
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
