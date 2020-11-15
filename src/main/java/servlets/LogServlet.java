package servlets;


import client.UserClient;
import models.User;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import java.io.IOException;

public class LogServlet extends HttpServlet {

    //login
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        User user = UserClient.login(email,password);
        if(user!=null){
            HttpSession session = request.getSession(true);
            session.setAttribute("user",user);
            response.sendRedirect(request.getContextPath() + "/");
        }else{
            request.setAttribute("message", "error");
            request.getRequestDispatcher( "login.jsp").forward(request,response);
        }
    }

    //logout
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        if(session!=null){
            session.invalidate();
        }
        response.sendRedirect(request.getContextPath() + "/login.jsp");
    }


}
