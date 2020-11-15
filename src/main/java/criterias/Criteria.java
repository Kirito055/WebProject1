package criterias;

import models.User;

import java.util.List;

public interface Criteria {
    List<User> criteria(List<User> users);
}
