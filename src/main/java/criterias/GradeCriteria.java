package criterias;

import models.User;

import java.util.LinkedList;
import java.util.List;

public class GradeCriteria implements Criteria{
    @Override
    public List<User> criteria(List<User> users) {
        return null;
    }

    public List<User> criteria(List<User> users, int grade){
        List<User> userList = new LinkedList<>();
        for(User user : users){
            if(user.getGrade()==grade){
                userList.add(user);
            }
        }
        return userList;
    }
}
