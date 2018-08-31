<%-- 
    Document   : Register
    Created on : 11 Jul, 2015, 10:55:31 AM
    Author     : Gaurav
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@page import="java.sql.*" %>
        <%@include file="Register.jsp" %>
        
        <%
        String q1,q2,newname,newph,newem;
        
            String delid=request.getParameter("id");
            int did=Integer.parseInt(delid);
        /*newname=request.getParameter("newna");
        newph=request.getParameter("newph");
        newem=request.getParameter("newem");*/
        try 
            {
                Statement st=con.createStatement();
               q1="select * from det where id="+did+""; 
              //  q2="update det set name='"+newname+"',phone_no="+newph+",newem='"+newem+"'";
           
                ResultSet rs=st.executeQuery(q1);
                while(rs.next())
                {
                    out.print("<form action=Update.jsp>");
                    out.print("Username <input type=text value="+rs.getString("name")+" name=newna><br/>");
                    out.print("Phone_No. <input type=text value="+rs.getString("phone_no")+" name=newph><br/>");
                    out.print("Email <input type=text value="+rs.getString("email")+" name=newem><br/>");
                    out.print("<input type=submit value=Update></form>");
                }
                //int ch=st.executeUpdate(q2);
                
            }
            catch(Exception e)
            {
                
    out.println(e);
            }
                    
        %>
    </body>
</html>
