<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>User Entry Form</title>
</head>
<body>
    <h2>User Form (Insert or Update)</h2>
    <form action="dbInsertUpdate.jsp" method="post">
        <label>Username:</label>
        <input type="text" name="username" required /><br><br>

        <label>Email:</label>
        <input type="email" name="email" required /><br><br>

        <input type="submit" value="Submit" />
    </form>
</body>
</html>
