package client;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import models.User;
import org.glassfish.jersey.client.ClientConfig;

import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.Entity;
import javax.ws.rs.client.WebTarget;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import java.util.List;

public class UserClient {

    private static final String baseUri = "http://localhost:8080/rest/users/";


    static WebTarget getWebTarget() {
        ClientConfig config = new ClientConfig();
        Client client = ClientBuilder.newClient(config);
        return client.target(baseUri);
    }

    public static User get(long id) {
        try {
            WebTarget target = getWebTarget();
            User user = target.path(String.valueOf(id)).request().accept(MediaType.APPLICATION_JSON).get(User.class);
            return user;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public static List<User> getUsersByGroupId(long id){
        try {
            WebTarget target = getWebTarget();
            String usersString = target.path("group/" + id).request().accept(MediaType.APPLICATION_JSON).get(String.class);
            ObjectMapper mapper = new ObjectMapper();
            List<User> users = mapper.readValue(usersString, new TypeReference<List<User>>(){} );
            return users;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public static List<User> getUsersByClubId(long id){
        try {
            WebTarget target = getWebTarget();
            String usersString = target.path("club/" + id).request().accept(MediaType.APPLICATION_JSON).get(String.class);
            ObjectMapper mapper = new ObjectMapper();
            List<User> users = mapper.readValue(usersString, new TypeReference<List<User>>(){} );
            return users;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public static User login(String email, String password){
        try {
            WebTarget target = getWebTarget();
            Response response = target.path("login").request().post(Entity.entity(new User(email,password),MediaType.APPLICATION_JSON), Response.class);
            User user = response.readEntity(User.class);
            return user;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }


    public static List<User> getAll() {
        try {
            WebTarget target = getWebTarget();
            String usersString = target.request().accept(MediaType.APPLICATION_JSON).get(String.class);
            ObjectMapper mapper = new ObjectMapper();
            List<User> users = mapper.readValue(usersString, new TypeReference<List<User>>(){} );
            return users;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

}
