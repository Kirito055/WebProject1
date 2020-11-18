package models;

import com.fasterxml.jackson.annotation.JsonFormat;

import java.sql.Date;

public class User {
    private long id;
    private String email;
    private String firstName;
    private String lastName;
    private String password;
    private @JsonFormat(shape= JsonFormat.Shape.STRING, pattern="yyyy-MM-dd") Date birthDate;
    private int grade;
    private long group_id;
    private String avatar;
    private String role;

    public User(){

    }

    public User(String email, String password){
        this.email = email;
        this.password = password;
    }

    public User(long id, String email, String firstName, String lastName, String password, Date birthDate, int grade, long group_id, String avatar, String role) {
        this.id = id;
        this.email = email;
        this.firstName = firstName;
        this.lastName = lastName;
        this.password = password;
        this.birthDate = birthDate;
        this.grade = grade;
        this.group_id = group_id;
        this.avatar = avatar;
        this.role = role;
    }

    public User(long id, String email, String firstName, String lastName, Date birthDate, int grade, long group_id, String avatar, String role) {
        this.id = id;
        this.email = email;
        this.firstName = firstName;
        this.lastName = lastName;
        this.birthDate = birthDate;
        this.grade = grade;
        this.group_id = group_id;
        this.avatar = avatar;
        this.role = role;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @JsonFormat(shape= JsonFormat.Shape.STRING, pattern="yyyy-MM-dd")
    public Date getBirthDate() {
        return birthDate;
    }

    public void setBirthDate(Date birthDate) {
        this.birthDate = birthDate;
    }

    public int getGrade() {
        return grade;
    }

    public void setGrade(int grade) {
        this.grade = grade;
    }

    public long getGroup_id() {
        return group_id;
    }

    public void setGroup_id(long group_id) {
        this.group_id = group_id;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }


}
