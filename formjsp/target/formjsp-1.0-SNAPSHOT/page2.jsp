<%-- 
    Document   : page2
    Created on : Apr 30, 2025, 12:28:23 PM
    Author     : kunal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% String nam = request.getParameter("username"); 
        String pas = request.getParameter("userpass"); 
           out.println("<h1>"+nam+"</h1>");
            out.println("<h1>"+pas +"</h1>");
        %>
    </body>
</html>
