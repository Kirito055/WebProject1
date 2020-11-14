package service;

import db.repository.PostRepository;
import models.Post;

import java.util.ArrayList;

public class PostService {
    private final PostRepository postRepo = new PostRepository();

    public ArrayList<Post> selectAll() {
        return postRepo.selectAll();
    }

    public void addEvent(Post event) {
        postRepo.addEvent(event);
    }

    public void updateEvent(Post event) {
        postRepo.updateEvent(event);
    }

    public void removeEvent(int id) {
        postRepo.removeEvent(id);
    }
}
