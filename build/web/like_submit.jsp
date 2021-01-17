<%-- 
    Document   : like
    Created on : May 2, 2020, 10:47:37 AM
    Author     : user
--%>

<%@page import="java.sql.*,java.util.*,java.util.Date" contentType="text/html" pageEncoding="UTF-8"%>


    <%
    Cookie c[]=request.getCookies();
        String email=null;
        for(int i=0;i<c.length;i++){
            if(c[i].getName().equals("user")){
                email=c[i].getValue();
                break;
            }
        }
            if(email!=null && session.getAttribute(email)!=null){
                try{
                    String id=request.getParameter("id");
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/stackoverflow","root","");
                    Statement st=cn.createStatement();
                    Statement sd=cn.createStatement();
                    ResultSet rd=st.executeQuery("select * from interest where answer_code='"+id+"'");
                    int count=0; 
                    while(rd.next()){
                        count++;  
                    }
                    if(sd.executeUpdate("update answer set like_count='"+count+"' where answer_code='"+id+"' ")>0 )
                    {
                      out.println("success");
                    }
                    else{
                       out.print("Try Again");
                    }
                }
                catch(Exception e){
                     out.println(e.getMessage());
                }
            }
            else{
                response.sendRedirect("index.jsp");
            }
        %>
        
   
