# registrationForm
# 📝 Dynamic Web Project (JSP + Servlet + MSSQL)

A simple **Java Dynamic Web Project** using **JSP, Servlets, and SQL Server** for user registration.  
This project demonstrates form handling, JDBC connectivity, and data persistence.

---

## 📂 Project Structure

DynamicWebProject/
┣ 📂 src/main/java/in/sp/backend/
┃ ┗ 📜 Register.java
┣ 📂 src/main/webapp/
┃ ┗ 📜 register.jsp
┣ 📜 pom.xml
┗ 📜 README.md

yaml
Copy code

---

## ⚙️ Tech Stack

- **Java** (Servlets + JSP)  
- **Apache Tomcat** (Web Server)  
- **MSSQL Server** (Database)  
- **Maven** (Dependency Management)  

---

## 🔌 Configuration

### 1. Add MSSQL JDBC driver in `pom.xml`

```xml

<dependency>
    <groupId>com.microsoft.sqlserver</groupId>
    <artifactId>mssql-jdbc</artifactId>
    <version>12.8.1.jre11</version>
</dependency>
```
### 🔑 Database Connection Details

```
java
String url = "jdbc:sqlserver://localhost:1433;databaseName=yt_Demo;encrypt=false;trustServerCertificate=true";
String user = "###";          // your DB username
String password = "### ";   // your DB password

3. Database Table
Run the following SQL in your SQL Server:

sql
Copy code
CREATE TABLE register (
    name VARCHAR(50),
    email VARCHAR(100),
    password VARCHAR(50),
    gender VARCHAR(10),
    city VARCHAR(50)
);
▶️ Run Project

👨‍💻 Author
kunal jasiwal
