package servlets;

import db.DBConnection;
import models.Club;
import models.Post;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

public class EventServlet extends HttpServlet {
    DBConnection db=new DBConnection();
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String submit = req.getParameter("submit");
        switch (submit) {
            case "add":
            {
                String title = req.getParameter("title");
                String  description= req.getParameter("userId");
                String date=req.getParameter("date");
                String image=req.getParameter("image");
                int user_id= Integer.parseInt(req.getParameter("user_id"));
                int club_id= Integer.parseInt(req.getParameter("club_id"));

                int added=0;


                    added = db.Addevent(title,description,date,image,user_id,club_id);



                req.setAttribute("events", "ae"+added);
                break;
            }
            case "delete":
            {
                String id = req.getParameter("id");
                int deleted =db.deletePost(Integer.parseInt(id));
                req.setAttribute("events", "d"+deleted);
                break;
            }

            default:
            {
                req.setAttribute("events", "s");
                break;
            }
        }
        doGet(req, resp);
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try
        {
            Connection connection = db.getConnection();
            ArrayList<Post> events = db.eventSelect(connection);
            connection.close();
            request.setAttribute("events", events);
        }
        catch (SQLException exception)
        {
            exception.printStackTrace();
        }
        request.getRequestDispatcher("event.jsp").forward(request, response);
    }
}
