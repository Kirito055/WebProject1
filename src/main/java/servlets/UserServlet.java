package servlets;

import client.ClubClient;
import client.GroupClient;
import client.UserClient;
import models.Club;
import models.Group;
import models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
@WebServlet(name = "userSerlvet", urlPatterns = "/user")
public class UserServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        switch (action){
            case "about":{
                int id = Integer.parseInt(req.getParameter("id"));
                User user = UserClient.get(id);
                Group group = GroupClient.getGroupByUserId(id);
                List<Club> clubs = ClubClient.getClubsByUserId(id);
                req.setAttribute("userOne",user);
                req.setAttribute("group",group);
                req.setAttribute("clubs",clubs);
                req.getRequestDispatcher("profile.jsp").forward(req,resp);
                break;
            }
        }
    }
}