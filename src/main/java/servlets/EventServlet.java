package servlets;

import client.PostClient;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class EventServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String submit = req.getParameter("submit");
        switch (submit) {
            case "add": {
                String title = req.getParameter("title");
                String description = req.getParameter("userId");
                String date = req.getParameter("date");
                String image = req.getParameter("image");
                int user_id = Integer.parseInt(req.getParameter("user_id"));
                int club_id = Integer.parseInt(req.getParameter("club_id"));

               // postControl.addEvent(new Post(title, description, date, image, user_id, club_id, "event"));

                break;
            }
            case "update": {
                String id = req.getParameter("id");
                String title = req.getParameter("title");
                String description = req.getParameter("userId");
                String date = req.getParameter("date");
                String image = req.getParameter("image");
                int user_id = Integer.parseInt(req.getParameter("user_id"));
                int club_id = Integer.parseInt(req.getParameter("club_id"));

              //  postControl.updateEvent(new Post(Integer.parseInt(id),title, description, date, image, user_id, club_id, "event"));

                break;
            }
            case "delete": {
                String id = req.getParameter("id");

               // postControl.removeEvent(Integer.parseInt(id));

                break;
            }

            default: {
                req.setAttribute("events", "s");
                break;
            }
        }
        doGet(req, resp);
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

      request.setAttribute("eventsALL", PostClient.getAll());

        request.getRequestDispatcher("event.jsp").forward(request, response);
    }
}
