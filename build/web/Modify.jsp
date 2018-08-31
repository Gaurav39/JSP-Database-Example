<%-- 
    Document   : Modify
    Created on : 12 Jul, 2015, 12:20:54 PM
    Author     : Jyoti
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
        
    <%@include file="Register.jsp" %>
             
        <%
         String q,name,em;
            int ph,id;
        try
    {
        Statement st=con.createStatement();
         q="select * from det"; 
         ResultSet rs=st.executeQuery(q);
        
                out.println("<table><tr><th>Id<th>Name<th>Phone No.<th>Email<th>Modify<br/>");
         while(rs.next())
        {
               name=rs.getString("name");
                ph=rs.getInt("phone_no");
                em=rs.getString("email");
                id=rs.getInt("id");
                
               out.println("<tr><td>"+id+"<td>"+name+"<td>"+ph+"<td>"+em+"<th><a href=Edit.jsp?id="+id+">Edit</a>"+"<th><a href=Delete.jsp?id="+id+">Delete</a>"+"<br/>");
        }
         out.println("</table>");
    }
    catch(Exception e)
    {
       out.println(e);    
    }   
        %>
            
    </body>
</html>
