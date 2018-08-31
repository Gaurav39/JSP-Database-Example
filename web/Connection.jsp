<%-- 
    Document   : Connection
    Created on : 11 Jul, 2015, 10:55:18 AM
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
    <%@page import="java.sql.*" %>
    <%@include file="Register.jsp" %>
        <%
        
        //RequestDispatcher rd;
            String name,ph1,em;
            name=request.getParameter("nm");
            ph1=request.getParameter("ph");
            em=request.getParameter("em");
            
        try
        {
        
             Statement st=con.createStatement();
             int ch= st.executeUpdate("insert into det(name,phone_no,email) values('"+name+"',"+ph1+",'"+em+"')");
    if(ch==1)
    {
       // RequestDispatcher rd=request.getRequestDispatcher("index.html");
       // rd.include(request, response);
          out.println("Data entered Succesfully");
    }
    else
    {
       //RequestDispatcher rd=request.getRequestDispatcher("index.html");
       //rd.include(request, response);        
       out.println("Data entering  UnSuccesfull");
    }
            
        }
        catch(Exception e)
        {
            out.println(e);
        }
    %>    
    </body>
</html>
