package controllers;

import models.Post;
import service.PostService;

import java.util.ArrayList;

public class PostController {
    private final PostService postServ = new PostService();

    public ArrayList<Post> selectAll() {
        return postServ.selectAll();
    }

    public void addEvent(Post event) {
        postServ.addEvent(event);
    }

    public void updateEvent(Post event) {
        postServ.updateEvent(event);
    }

    public void removeEvent(int id) {
        postServ.removeEvent(id);
    }
}
