package servlets;


import models.User;



import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class LogServlet extends HttpServlet {

    //login
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        User user = null;
        /*User user = UserSql.login(email,password);*/
        if(user!=null){
            HttpSession session = request.getSession(true);
            session.setAttribute("user",user);
            response.sendRedirect(request.getContextPath() + "/");
        }else{
            response.sendRedirect(request.getContextPath() + "/");
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
