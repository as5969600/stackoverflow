<%-- 
    Document   : update
    Created on : Apr 24, 2020, 7:16:23 PM
    Author     : user
--%>

<%@page import="java.sql.*,java.util.*,java.util.Date" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%  
    try{
            String code=request.getParameter("id");
            String question=request.getParameter("question");
            String descrip=request.getParameter("descrip");
            Date d=new Date();  
            Class.forName("com.mysql.jdbc.Driver");
            Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/stackoverflow","root","");
            Statement st=cn.createStatement();
            st.execute("update question set question='"+question+"',descrip='"+descrip+"',date='"+d+"' where code='"+code+"' ");
            response.sendRedirect("category.jsp?id="+code+"");   
            cn.close();
        }
        catch(Exception e){
                out.println(e.getMessage());      
        }
    
 %>
