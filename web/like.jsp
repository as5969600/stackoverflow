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
            if(email==null && session.getAttribute(email)== null){
                out.println("nullemail");
            }
            else{
                try{
                    String tos="";
                    int flag=0;
                    String id=request.getParameter("id");
                    String code=request.getParameter("code");
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/stackoverflow","root","");
                    Statement st=cn.createStatement();
                    Statement sd=cn.createStatement();
                    Date d=new Date();
                    ResultSet rs=st.executeQuery("select * from question where code='"+code+"' ");
                    if(rs.next()){
                         tos =rs.getString(3);
                    }
                    ResultSet rd=st.executeQuery("select * from interest where question_code='"+code+"' AND answer_code='"+id+"' AND froms='"+email+"' ");
                    if(rd.next()){
                       flag=1;  
                    }
                    if(flag==0){
                            if(sd.executeUpdate("insert into interest values('"+code+"','"+id+"','"+tos+"','"+email+"','"+d+"')") >0){
                              out.println("success");
                            }
                            else{
                               out.print("Try Again");
                            }
                    }
                    else{
                        out.println("hello");
                    }
                }
                catch(Exception e){
                     out.println(e.getMessage());
                }
            }
            
    %>
        
   
