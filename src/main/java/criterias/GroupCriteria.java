package criterias;

import models.User;

import java.util.LinkedList;
import java.util.List;

public class GroupCriteria implements Criteria{


    public List<User> criteria(List<User> users, long groupId) {
        List<User> userList = new LinkedList<>();
        for(User user : users){
            if(user.getGroup_id() == groupId){
                userList.add(user);
            }
        }
        return userList;
    }

    @Override
    public List<User> criteria(List<User> users) {
        return null;
    }
}
