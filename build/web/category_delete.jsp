<%-- 
    Document   : del
    Created on : Aug 6, 2019, 8:13:46 PM
    Author     : user
--%>

<%@page contentType="text/html" import="java.sql.*,java.util.*" pageEncoding="UTF-8"%>

<%  
    if(request.getParameter("id")!=null){
              
           try{
               String id=request.getParameter("id");
               String code=request.getParameter("code");
               Class.forName("com.mysql.jdbc.Driver");
               Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/stackoverflow","root","");
               Statement st=cn.createStatement();     
               if(st.executeUpdate("delete from question_category where category_code='"+id+"' AND question_code='"+code+"' ")>0)
               {
                 out.println("success");
               }
               else{
                  out.print("Try Again");
               }
            }
             catch(Exception e){
                 out.print(e.getMessage());
             }
           }
    else{
        out.println("not done");
    }
   %>