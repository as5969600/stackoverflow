<%-- 
    Document   : question_submit
    Created on : Oct 7, 2019, 2:58:03 PM
    Author     : user
--%>


<%@page import="java.sql.*,java.util.*,java.util.Date" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% 
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
           int a=0;
            String question=request.getParameter("question");
            String descrip=request.getParameter("descrip");
            st.execute("insert into question values("+sn+",'"+code+"','"+email+"','"+question+"','"+descrip+"','"+d+"','"+a+"')");
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
    %>