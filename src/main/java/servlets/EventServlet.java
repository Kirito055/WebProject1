package servlets;

import client.ClubClient;
import client.PostClient;
import models.Club;
import models.Post;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class EventServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String button = request.getParameter("action");
        System.out.println(button);

        if(button==null){
            request.setAttribute("eventsALL", ClubClient.getAll());
            request.getRequestDispatcher("event.jsp").forward(request, response);
        }
        else {
            if(button.equals("edit")){
                long id = Long.parseLong(request.getParameter("id"));
                Post post = PostClient.get(id);
                System.out.println(post);
                request.setAttribute("eventsALL", post);
                request.getRequestDispatcher("update_post.jsp").forward(request, response);
            }
        }
    }
}
