package servlets;

import client.GroupClient;
import client.UserClient;
import criterias.GradeCriteria;
import criterias.GroupCriteria;
import models.Group;
import models.User;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;


public class SearchServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Cookie[] cookies = request.getCookies();
        for(Cookie cookie : cookies){
            if(cookie.getName().equals("firstName")){
                request.setAttribute("firstName", cookie.getValue());
            }
        }
        String groupNameString = request.getParameter("group");
        String facultyString = request.getParameter("faculty");
        int grade = Integer.parseInt(request.getParameter("grade"));
        GroupCriteria groupCriteria = new GroupCriteria();
        if(!groupNameString.equals("")){
            if(!facultyString.equals("none")){
                Group group = GroupClient.getByName(groupNameString);
                List<Group> groupsByFaculty = GroupClient.getAllByFaculty(facultyString);
                boolean matches = false;
                if(group!=null && groupsByFaculty!=null) {
                    for (Group g : groupsByFaculty) {
                        if (g.getId() == group.getId()) {
                            matches = true;
                        }
                    }
                    if(matches){

                        List<User> filteredStudentsByGroup = groupCriteria.criteria(UserClient.getAll(), group.getId());

                        if(grade>=1 && grade <=3) {
                            GradeCriteria gradeCriteria = new GradeCriteria();
                            List<User> filteredStudentsByGroupAndGrade = gradeCriteria.criteria(filteredStudentsByGroup, grade);
                            request.setAttribute("users", filteredStudentsByGroupAndGrade);
                            request.getRequestDispatcher("search.jsp").forward(request,response);
                            return;
                        }
                        request.setAttribute("users", filteredStudentsByGroup);
                        request.getRequestDispatcher("search.jsp").forward(request,response);

                    } else{
                        request.setAttribute("message", "not found");
                        request.getRequestDispatcher("search.jsp").forward(request,response);
                    }
                } else{
                    request.setAttribute("message", "not found");
                    request.getRequestDispatcher("search.jsp").forward(request,response);
                }
            } else{
                Group group = GroupClient.getByName(groupNameString);
                List<User> filteredStudentsByGroup = groupCriteria.criteria(UserClient.getAll(), group.getId());
                if(grade>=1 && grade <=3) {
                    GradeCriteria gradeCriteria = new GradeCriteria();
                    List<User> filteredStudentsByGroupAndGrade = gradeCriteria.criteria(filteredStudentsByGroup, grade);
                    request.setAttribute("users", filteredStudentsByGroupAndGrade);
                    request.getRequestDispatcher("search.jsp").forward(request,response);
                    return;
                }
                request.setAttribute("users", filteredStudentsByGroup);
                request.getRequestDispatcher("search.jsp").forward(request,response);
            }

        }else if(!facultyString.equals("none")){
            List<Group> groupsByFaculty = GroupClient.getAllByFaculty(facultyString);
            List<User> students = new ArrayList<>();
            if(groupsByFaculty!=null) {
                for (Group group : groupsByFaculty) {
                    students.addAll(groupCriteria.criteria(UserClient.getAll(), group.getId()));
                }
                if(grade>=1 && grade <=3) {
                    GradeCriteria gradeCriteria = new GradeCriteria();
                    List<User> filteredStudentsByGroupAndGrade = gradeCriteria.criteria(students, grade);
                    request.setAttribute("users", filteredStudentsByGroupAndGrade);
                    request.getRequestDispatcher("search.jsp").forward(request,response);
                    return;
                }
                request.setAttribute("users", students);
                request.getRequestDispatcher("search.jsp").forward(request,response);
            }else{
                request.setAttribute("message", "not found");
                request.getRequestDispatcher("search.jsp").forward(request,response);
            }
        } else if(grade>=1 && grade <=3){
            GradeCriteria gradeCriteria = new GradeCriteria();
            List<User> filteredStudentsByGrade = gradeCriteria.criteria(UserClient.getAll(), grade);
            request.setAttribute("users", filteredStudentsByGrade);
            request.getRequestDispatcher("search.jsp").forward(request,response);

        } else {
            request.setAttribute("message", "not found");
            request.getRequestDispatcher("search.jsp").forward(request,response);
        }

    }
}