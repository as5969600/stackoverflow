<%-- 
    Document   : answer_submit
    Created on : Feb 10, 2020, 5:15:05 PM
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
       String code=request.getParameter("id");
       if(request.getParameter("answer")==null){
            response.sendRedirect("answer.jsp?id="+code+"");
       }
       else{
        try{
             int sn=0;
             int count=0;
             String ans=request.getParameter("answer");  
             Class.forName("com.mysql.jdbc.Driver");
             Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/stackoverflow","root","");
             Statement st=cn.createStatement();
             Statement se=cn.createStatement();
             ResultSet rt= st.executeQuery("select max(sn) from answer ");
                if(rt.next()){
                  sn=rt.getInt(1)+1; 
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
               String code1="";
               for(int i=0;i<6;i++){
                   code1=code1+l.get(i);
               }
               code1=code1+"_"+sn;
                Date d=new Date();        
                st.execute("insert into answer values('"+code+"','"+email+"','"+ans+"','"+d+"',"+sn+",'"+code1+"','"+count+"')");
                ResultSet re=se.executeQuery("select * from answer where question_code='"+code+"'");
                  while(re.next()){
                      count++;
                  }
                se.execute("update question set comment='"+count+"' where code='"+code+"'");
                cn.close();
                response.sendRedirect("profile.jsp");
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
