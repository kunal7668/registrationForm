<%-- 
    Document   : register
    Created on : Sep 6, 2025, 3:05:31 PM
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
        <form action="regForm" method="post">
            Name : <input type = "text" name ="name1" /><br><br>
            Email : <input type = "text" name ="email1`" /><br><br>
            Password : <input type = "text" name ="pass1" /><br><br>
            Gender : Female <input type = "radio" name="gender1"/>Male <input type="radio" name="gender1"/><br><br>
            City : <select name="city1">
                <option>Select City</option>
                <option>Delhi</option>
                <option>Mumbai</option>
                <option>Pune</option>
                <option>Banglore</option>   
            </select><br><br>
            <input type ="submit" value="Register">
        </form>
    </body>
</html>
