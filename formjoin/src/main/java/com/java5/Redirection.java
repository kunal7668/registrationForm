
package com.java5;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/first")

public class Redirection extends HttpServlet {

    
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      String uname = req.getParameter("username");
       String pword = req.getParameter("password");
        PrintWriter out = resp.getWriter();
                 
    
    if(uname.equals("kunal")&& pword.equals("1234")){
       req.getRequestDispatcher("sec").forward(req, resp);
         //resp.setContentType("text/html");
}else
    {
         resp.setContentType("text/html");
         out.println("<h1>this is your error page</h1>");
      RequestDispatcher rd= req.getRequestDispatcher("/error.html");
      rd.include(req, resp);
      
    }
    }


}
