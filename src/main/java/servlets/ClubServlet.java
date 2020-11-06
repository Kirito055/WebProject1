package servlets;

import controllers.ClubController;
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
    private final ClubController clubControl = new ClubController();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("clubs", clubControl.getAll());
        request.getRequestDispatcher("club.jsp").forward(request, response);
    }
}
