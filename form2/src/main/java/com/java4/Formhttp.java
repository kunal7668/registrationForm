package com.java4;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.http.HttpServlet;


public class Formhttp extends HttpServlet{

   


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
     
        String nm= req.getParameter("name");
        
        String ag = req.getParameter("age");
        
        String em = req.getParameter("email");
        
        String gn = req.getParameter("gender");
         String cr = req.getParameter("course");
          String ch= req.getParameter("terms");
         
          
                 PrintWriter out = resp.getWriter();
                  resp.setContentType("text/html");
                  
//      if (ch == null) {
//            out.println("<h1 style='color:red;'>You must agree to the terms and conditions.</h1>");
//            out.println("<a href='index.html'>Go Back</a>");
//        } else {
//            out.println("<h1>Registration Successful!</h1>");
//            out.println("<p>Thank you for registering!</p>");
//        }
//
//        out.println("</body></html>");
//    }
//       out.println("<h1>your name is+"+nm+"</h1>"); 
//       out.println("<h1>your age is+"+ag+"</h1>");
//       out.println("<h1>your  email is+"+em+"</h1>");
//       out.println("<h1>your  gender is+"+gn+"</h1>");
//       out.println("<h1>your course is+"+cr+"</h1>");
       //out.println("<h1>your term is+"+ch+"</h1>");
           
        
        if (nm == null ||  ag == null || em== null  ||
            gn == null || cr == null ||   ch == null)
        {
            
            out.println("<html><body>");
            out.println("<h1 style='color:red;'>You have not filled all fields. Please check again.</h1>");
            out.println("<a href='index.html'>Go Back</a>");
            out.println("</body></html>");
        } else {
            out.println("<html><body>");
            out.println("<h1>Registration Successful!</h1>");
            out.println("<p>Name: " + nm + "</p>");
            out.println("<p>Age: " + ag + "</p>");
            out.println("<p>Email: " + em + "</p>");
            out.println("<p>Gender: " + gn + "</p>");
            out.println("<p>Course: " + cr + "</p>");
            out.println("</body></html>");
        }

    }
}
       
      
        
       
        
        
        
        
    
    
    
