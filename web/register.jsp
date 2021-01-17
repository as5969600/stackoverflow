<%-- 
    Document   : register
    Created on : Sep 30, 2019, 12:44:45 PM
    Author     : user
--%>

<%@page import="java.sql.*,java.util.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
   if(request.getParameter("name")==null && request.getParameter("email")==null && request.getParameter("password")==null){
       out.println("Start");
   }
   else{
       try{
            int sn=0; 
            Class.forName("com.mysql.jdbc.Driver");
            Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/stackoverflow","root","");
            Statement st=cn.createStatement();
            ResultSet rs= st.executeQuery("select max(sn) from register ");
            if(rs.next()){
              sn=rs.getInt(1)+1; 
            }
           
             LinkedList l=new LinkedList();
           for(char c='A';c<='Z';c++){
               l.add(""+c);
           }
           for(char c='a';c<='z';c++){
               l.add(""+c);
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
            String name=request.getParameter("name");
            String email=request.getParameter("email");
            String pass=request.getParameter("password");
           
            st.execute("insert into register values("+sn+",'"+code+"','"+name+"','"+email+"','"+pass+"')");
            cn.close();
            response.sendRedirect("index.jsp");
       }
       catch(Exception e){
            out.println(e.getMessage());
       }
   }
    %>
