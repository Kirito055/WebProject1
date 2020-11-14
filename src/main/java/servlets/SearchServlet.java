package servlets;

import client.GroupClient;
import client.UserClient;
import criterias.AndCriteria;
import criterias.GradeCriteria;
import criterias.GroupCriteria;
import models.Group;
import models.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


public class SearchServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String groupNameString = request.getParameter("groupName");
        String facultyString = request.getParameter("faculty");
        int grade = Integer.parseInt(request.getParameter("grade"));

        if(groupNameString!=null){
            if(facultyString!=null){
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

                        GroupCriteria groupCriteria = new GroupCriteria();
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
            }
        }

    }
}
