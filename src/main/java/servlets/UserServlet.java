package servlets;

import db.DBConnection;
import models.Club;
import models.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Stack;

public class UserServlet extends HttpServlet {
    DBConnection db=new DBConnection();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try
        {
            Connection connection = db.getConnection();
            Stack<User> users = db.profileSelect(connection);
            connection.close();
            System.out.println(users);
            request.setAttribute("users", users);
        }
        catch (SQLException exception)
        {
            exception.printStackTrace();
        }
        request.getRequestDispatcher("profile.jsp").forward(request, response);
    }
}
