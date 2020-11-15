package servlets;

import client.PostClient;
import models.Post;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class NewsServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String button = request.getParameter("action");
        System.out.println(button);

        if(button==null){
            request.setAttribute("newsAll", PostClient.getAll());
            request.getRequestDispatcher("news.jsp").forward(request, response);
        }
        else {
            if(button.equals("edit")){

                long id = Long.parseLong(request.getParameter("id"));
                Post post = PostClient.get(id);
                System.out.println(post);
                request.setAttribute("post", post);
                request.getRequestDispatcher("update_post.jsp").forward(request, response);
            }
            else if(button.equals("delete")){
                String id = request.getParameter("id");
                PostClient.delete(id);
                request.setAttribute("newsAll", PostClient.getAll());
                request.getRequestDispatcher("news.jsp").forward(request, response);
            }

        }
    }

}