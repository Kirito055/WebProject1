package models;

public class Post {
    private int id;
    private String title;
    private String descrition;
    private String date;
    private String image;
    private int user_id;
    private int club_id;
    private String type;

    public Post(String title, String descrition, String date, String image, int user_id, int club_id, String type) {
        this.title = title;
        this.descrition = descrition;
        this.date = date;
        this.image = image;
        this.user_id = user_id;
        this.club_id = club_id;
        this.type = type;
    }

    public Post(String[] postfields)
    {
        if(postfields.length == 7)
        {
            this.id = Integer.parseInt(postfields[0]);
            this.title = postfields[1];
            this.descrition=postfields[2];
            this.date=postfields[3];
            this.image=postfields[4];
            this.user_id= Integer.parseInt(postfields[5]);
            this.type=postfields[6];
        }
        if(postfields.length == 8)
        {
            this.id = Integer.parseInt(postfields[0]);
            this.title = postfields[1];
            this.descrition=postfields[2];
            this.date=postfields[3];
            this.image=postfields[4];
            this.user_id= Integer.parseInt(postfields[5]);
            this.club_id= Integer.parseInt(postfields[6]);
            this.type=postfields[7];
        }

    }
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescrition() {
        return descrition;
    }

    public void setDescrition(String descrition) {
        this.descrition = descrition;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public int getClub_id() {
        return club_id;
    }

    public void setClub_id(int club_id) {
        this.club_id = club_id;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }
}

