<%-- 
    Document   : profile
    Created on : May 2, 2025, 12:27:14 PM
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
        <h1>welcome here<%=session.getAttribute("user") %></h1>
    </body>
</html>
