<%-- 
    Document   : Home.jsp
    Created on : Apr 18, 2025, 12:32:38 PM
    Author     : kunal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
    </head>
    <body>
        <h1>Hello this is your home page</h1>
        <%!
          int a=7;
          int b= 8;
          public int sum(){
return a+b;}
public int mult() {
 return a*b;
}
public float dev() {
 return a/b;
}
String name ="kunal";
 public String getname(){
  return name;
}
%>
           <%
          out.println(a);
            out.println(b);
              out.println("<h1>sum of a and b is "+sum()+"</h1>");
              out.println("<h1>multiplicastion of a and b is "+mult()+"</h1>");
              out.println("<h1>div of a and b is "+dev()+"</h1>");
            
                out.println(name);
        %> 
        
        <h1>hello world<%= getname() %></h1>
        
    </body>
</html>
