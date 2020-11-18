package servlets;

import client.ClubClient;
import models.Club;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


public class ClubServlet extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String button = request.getParameter("action");
        System.out.println(button);
        Cookie[] cookies = request.getCookies();
        for(Cookie cookie : cookies){
            if(cookie.getName().equals("firstName")){
                request.setAttribute("firstName", cookie.getValue());
            }
        }
        if(button==null){
            request.setAttribute("clubs",ClubClient.getAll());
            request.getRequestDispatcher("club.jsp").forward(request, response);
        }
        else {
            if(button.equals("edit")){
                long id = Long.parseLong(request.getParameter("id"));
                Club club = ClubClient.get(id);
                System.out.println(club);
                request.setAttribute("clubs", club);
                request.getRequestDispatcher("update_club.jsp").forward(request, response);
            }
            else if(button.equals("delete")){
                String id=request.getParameter("id");
                ClubClient.delete(id);
                request.setAttribute("clubs",ClubClient.getAll());
                request.getRequestDispatcher("club.jsp").forward(request, response);
            }
        }
    }
}