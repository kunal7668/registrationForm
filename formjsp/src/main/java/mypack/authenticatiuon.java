
package mypack;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;




public class authenticatiuon  implements Filter{

    @Override
    public void destroy() {
        Filter.super.destroy();
    }

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        Filter.super.init(filterConfig); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/OverriddenMethodBody
       
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
       HttpServletRequest req = (HttpServletRequest)request;
       HttpSession session = req.getSession();
       String uname = (String)session.getAttribute("user");
       
       if(uname != null){
           chain.doFilter(request,response);
           
       }else{
           response.setContentType("text/html");
           response.getWriter().println("<h1>you are not login</h1>");
           ((HttpServletResponse)response).sendRedirect("newjsp1.jsp");
       }
        
    
    
    }}
