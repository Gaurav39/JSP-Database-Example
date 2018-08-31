<%-- 
    Document   : Update
    Created on : 13 Jul, 2015, 11:37:09 AM
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
            //int did=Integer.parseInt(delid);
        newname=request.getParameter("newna");
        newph=request.getParameter("newph");
        newem=request.getParameter("newem");
        try 
            {
                Statement st=con.createStatement();
            //     q1="select * from det where id="+did+""; 
                q2="update det set name='"+newname+"',phone_no="+newph+",email='"+newem+"' ";
           
                int cs=st.executeUpdate(q2);
                if(cs==1)
                {
                    out.print("Data update Successfully");
                }
                else
                    out.print("UnSuccessfull");
                }
        catch(Exception e)
        {
            out.print(e);
        }
        %>
    </body>
</html>
