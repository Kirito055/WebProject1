package models;

public class User {
    long id;
    String email,first_name,last_name,password;
    String birth_date;
    int grade,group_id;
    String avatar, role;



    public User(String[] userFields) {
        if (userFields.length == 10) {
            this.id = Integer.parseInt(userFields[0]);
            this.email = userFields[1];
            this.first_name = userFields[2];
            this.last_name = userFields[3];
            this.password = userFields[4];
            this.birth_date=userFields[5];
            this.grade= Integer.parseInt(userFields[6]);
            this.group_id= Integer.parseInt(userFields[7]);
            this.avatar=userFields[8];
            this.role=userFields[9];
        }
    }

    public long getId() {
        return id;
    }

    public String getEmail() {
        return email;
    }

    public String getFirst_name() {
        return first_name;
    }

    public String getLast_name() {
        return last_name;
    }

    public String getPassword() {
        return password;
    }

    public String getBirth_date() {
        return birth_date;
    }

    public int getGrade() {
        return grade;
    }

    public int getGroup_id() {
        return group_id;
    }

    public String getAvatar() {
        return avatar;
    }

    public String getRole() {
        return role;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", email='" + email + '\'' +
                ", first_name='" + first_name + '\'' +
                ", last_name='" + last_name + '\'' +
                ", password='" + password + '\'' +
                ", birth_date='" + birth_date + '\'' +
                ", grade=" + grade +
                ", group_id=" + group_id +
                ", avatar='" + avatar + '\'' +
                ", role='" + role + '\'' +
                '}';
    }
}
