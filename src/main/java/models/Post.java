package models;

import client.ClubClient;
import client.UserClient;
import com.fasterxml.jackson.annotation.JsonFormat;

import java.sql.Date;

public class Post {
    private long id;
    private String title;
    private String description;

    private @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "dd-MM-yyyy")
    Date date;

    private String image;
    private long userId;
    private long clubId;
    private String type;

    private Club club = null;
    private User author = null;

    public Post() {

    }

    public Post(long id, String title, String description, Date date, String image, long userId, long clubId, String type) {
        this.id = id;
        this.title = title;
        this.description = description;
        this.date = date;
        this.image = image;
        this.userId = userId;
        this.clubId = clubId;
        this.type = type;

        if (author == null) {
            author = UserClient.get(userId);
        }
        if (club == null) {
            club = ClubClient.get(clubId);
        }


    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "dd-MM-yyyy")
    public Date getDate() {
        return date;
    }


    public void setDate(Date date) {
        this.date = date;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public long getUserId() {
        return userId;
    }

    public void setUserId(long userId) {
        this.userId = userId;
    }

    public long getClubId() {
        return clubId;
    }

    public void setClubId(long clubId) {
        this.clubId = clubId;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public User getAuthor() {

        return UserClient.get(getUserId());
    }
}

