package servlets;

import db.DBConnection;
import models.Club;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

public class ClubServlet extends HttpServlet {
    DBConnection db=new DBConnection();
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try
        {
            Connection connection = db.getConnection();
            ArrayList<Club> clubs = db.clubSelect(connection);
            connection.close();
            request.setAttribute("clubs", clubs);
        }
        catch (SQLException exception)
        {
            exception.printStackTrace();
        }
        request.getRequestDispatcher("club.jsp").forward(request, response);
    }
}
