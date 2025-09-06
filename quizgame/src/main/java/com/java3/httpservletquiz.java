package com.java3;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/QuizServlet")
public class httpservletquiz extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String q1 = request.getParameter("q1");
        String q2 = request.getParameter("q2");
        int score = 0;

        if ("A".equals(q1)) {
            score++;
        }
        if ("C".equals(q2)) {
            score++;
        }

        out.println("<html><head><title>Quiz Result</title></head><body>");
        out.println("<h2>Your Score: " + score + "/2</h2>");
        out.println("<a href='index.html'>Try Again</a>");
        out.println("</body></html>");
    }
}
