<%-- 
    Document   : Delete
    Created on : 12 Jul, 2015, 12:20:37 PM
    Author     : Gaurav
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include  file="Register.jsp" %>
        <%
            String delid=request.getParameter("id");
            int did=Integer.parseInt(delid);
            String q;
              try
    {
        
        Statement st=con.createStatement();
        q="delete from det where id="+did+"";
        int ch=  st.executeUpdate(q);
        
        if(ch==1)
        {  out.print("Data deleted Successfully");
       RequestDispatcher rd=request.getRequestDispatcher("Modify.jsp");
       rd.include(request, response);
        }
        else
        out.print("Data deletion UnSuccessfull");
        }
              catch(Exception e)
              {
              out.println(e);
              }
         %>
    </body>
</html>
