<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
    String username = request.getParameter("username");
    String email = request.getParameter("email");
%>

<!-- MSSQL Connection -->
<sql:setDataSource 
    var="db" 
    driver="com.microsoft.sqlserver.jdbc.SQLServerDriver"
    url="jdbc:sqlserver://localhost:1433;databaseName=TestDB"
    user="sa" 
    password="yourPassword" />

<!-- Check if user exists -->
<sql:query var="result" dataSource="${db}">
    SELECT * FROM users WHERE username = ?
    <sql:param value="<%= username %>" />
</sql:query>

<!DOCTYPE html>
<html>
<head>
    <title>Result</title>
</head>
<body>
    <c:choose>
        <!-- User exists: do update -->
        <c:when test="${not empty result.rows}">
            <sql:update dataSource="${db}">
                UPDATE users SET email = ? WHERE username = ?
                <sql:param value="<%= email %>" />
                <sql:param value="<%= username %>" />
            </sql:update>
            <p><strong>User Updated:</strong> <%= username %></p>
        </c:when>

        <!-- User doesn't exist: do insert -->
        <c:otherwise>
            <sql:update dataSource="${db}">
                INSERT INTO users (username, email) VALUES (?, ?)
                <sql:param value="<%= username %>" />
                <sql:param value="<%= email %>" />
            </sql:update>
            <p><strong>User Inserted:</strong> <%= username %></p>
        </c:otherwise>
    </c:choose>

    <br><a href="userForm.jsp">Go Back</a>
</body>
</html>
