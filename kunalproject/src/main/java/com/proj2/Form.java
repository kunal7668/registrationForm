
package com.proj2;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;


public class Form  extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    
        
        String nm= req.getParameter("username");
        
        String pw = req.getParameter("password");
        
     
          resp.setContentType("text/html");
       PrintWriter out = resp.getWriter();
       
       
       out.println("<h1>your name is+"+nm+"</h1>");
        out.println("<h1>your password is+"+pw+"</h1>");
   
    
    }
   
}
