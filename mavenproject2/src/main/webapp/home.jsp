<%-- 
    Document   : home.jsp
    Created on : Apr 21, 2025, 1:08:34 PM
    Author     : kunal
--%>
<%@page import = "java.util.Random" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Simple Page with Header and Footer</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
    }
    header {
      background-color: #007bff;
      color: white;
      padding: 20px;
      text-align: center;
    }
    main {
      padding: 20px;
    }
    footer {
      background-color: #f1f1f1;
      color: #333;
      padding: 15px;
      text-align: center;
      position: relative;
      bottom: 0;
      width: 100%;
    }
  </style>
</head>
<body>
    <div>
  <header>
    <h1>Welcome to My Website</h1>
  </header>
    </div>
 
    <p>This is a simple web page with a header and a footer. You can add your content here.</p>
     <% Random rd = new Random();
                                 int randomInt = rd.nextInt(10);
//                                                            
        %> 
        
         <h1>random no. is <%=  randomInt %> </h1>

         <%@include file="header.jsp" %>
</body>
</html>