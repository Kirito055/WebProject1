package criterias;

import models.User;

import java.util.List;

public class AndCriteria implements Criteria{

    private Criteria first;
    private Criteria second;

    public AndCriteria(Criteria firsts,Criteria seconds){
        first = firsts;
        second = seconds;
    }

    public List<User> criteria(List<User> users) {
        List<User> firstCriteriaList = first.criteria(users);
        return second.criteria(firstCriteriaList);
    }
}
