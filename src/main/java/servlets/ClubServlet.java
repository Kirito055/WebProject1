package servlets;

import client.ClubClient;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class ClubServlet extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String button = request.getParameter("submit");
        System.out.println(button);
        switch (button) {
            case "add":
            {
                String clubName = request.getParameter("clubName");
                int leader_id = Integer.parseInt(request.getParameter("leader_id"));
                String logo = request.getParameter("logo");
                String description = request.getParameter("description");

                int added = db.addClub(clubName,leader_id,logo,description);
                request.setAttribute("crud", "c"+added);
                break;
            }
            case "Delete":
            {
                String bookId = request.getParameter("bookId");
                int deleted = db.delete(bookId);
                request.setAttribute("crud", "d"+deleted);
                break;
            }
            case "Edit":
            {
                int clubId = Integer.parseInt(request.getParameter("clubId"));
                String clubName = request.getParameter("clubName");
                int leader_id = Integer.parseInt(request.getParameter("leader_id"));
                String logo = request.getParameter("logo");
                String description = request.getParameter("description");
                int updated = db.updateClub(clubId, clubName,leader_id,logo,description);
                request.setAttribute("crud", "u"+updated);
                break;
            }

            default:
            {
                request.setAttribute("crud", "s0");
                break;
            }
        }
        doGet(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("clubs",ClubClient.getAll());
        request.getRequestDispatcher("club.jsp").forward(request, response);
    }
}
