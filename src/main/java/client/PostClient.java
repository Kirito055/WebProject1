package client;


import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import models.Post;
import org.glassfish.jersey.client.ClientConfig;

import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.WebTarget;
import javax.ws.rs.core.MediaType;
import java.util.List;

public class PostClient {

    private static final String baseUri = "http://localhost:8080/rest/posts/";


    static WebTarget getWebTarget() {
        ClientConfig config = new ClientConfig();
        Client client = ClientBuilder.newClient(config);
        return client.target(baseUri);
    }

    public static Post get(long id) {
        try {
            WebTarget target = getWebTarget();
            Post post = target.path(String.valueOf(id)).request().accept(MediaType.APPLICATION_JSON).get(Post.class);
            return post;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }


    public static List<Post> getPostsByUserId(long id){
        try {
            WebTarget target = getWebTarget();
            String usersString = target.path("user/" + id).request().accept(MediaType.APPLICATION_JSON).get(String.class);
            ObjectMapper mapper = new ObjectMapper();
            List<Post> posts = mapper.readValue(usersString, new TypeReference<List<Post>>(){} );
            return posts;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public static List<Post> getPostsByClubId(long id){
        try {
            WebTarget target = getWebTarget();
            String usersString = target.path("club/" + id).request().accept(MediaType.APPLICATION_JSON).get(String.class);
            ObjectMapper mapper = new ObjectMapper();
            List<Post> posts = mapper.readValue(usersString, new TypeReference<List<Post>>(){} );
            return posts;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }



    public static List<Post> getAll() {
        try {
            WebTarget target = getWebTarget();
            String usersString = target.request().accept(MediaType.APPLICATION_JSON).get(String.class);
            ObjectMapper mapper = new ObjectMapper();
            List<Post> posts = mapper.readValue(usersString, new TypeReference<List<Post>>(){} );
            return posts;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public static void delete (String id) {
        WebTarget target = getWebTarget();
        target.path(id).request().delete();
    }



}
