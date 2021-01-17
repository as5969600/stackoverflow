<%-- 
    Document   : register_category
    Created on : Oct 3, 2019, 3:38:51 PM
    Author     : user
--%>

<%@page  import="java.sql.*,java.util.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
   if(request.getParameter("category")==null){
       out.println("Start");
   }
   else{
       try{
            int sn=0; 
            Class.forName("com.mysql.jdbc.Driver");
            Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/stackoverflow","root","");
            Statement st=cn.createStatement();
            ResultSet rs= st.executeQuery("select max(sn) from category ");
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
            String cat=request.getParameter("category");
           
           
            st.execute("insert into category values("+sn+",'"+code+"','"+cat+"')");
            cn.close();
            response.sendRedirect("cat.jsp");
       }
       catch(Exception e){
            out.println(e.getMessage());
       }
   }
    %>
