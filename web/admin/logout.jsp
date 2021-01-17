<%-- 
    Document   : logout
    Created on : Feb 4, 2020, 7:26:11 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Cookie c=new Cookie("user","");
    c.setMaxAge(0);
    response.addCookie(c);
    response.sendRedirect("index.jsp");
    
%>

