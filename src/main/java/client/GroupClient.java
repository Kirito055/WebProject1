package client;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import models.Group;
import org.glassfish.jersey.client.ClientConfig;
import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.Entity;
import javax.ws.rs.client.WebTarget;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import java.util.List;

public class GroupClient {

    private static final String baseUri = "http://localhost:8080/rest/groups/";


    static WebTarget getWebTarget() {
        ClientConfig config = new ClientConfig();
        Client client = ClientBuilder.newClient(config);
        return client.target(baseUri);
    }

    public static Group get(long id) {
        try {
            WebTarget target = getWebTarget();
            Group group = target.path(String.valueOf(id)).request().accept(MediaType.APPLICATION_JSON).get(Group.class);
            return group;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public static Group getGroupByUserId(long id){
        try {
            WebTarget target = getWebTarget();
            Group group = target.path("user/" + id).request().accept(MediaType.APPLICATION_JSON).get(Group.class);
            return group;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }


    public static List<Group> getAll() {
        try {
            WebTarget target = getWebTarget();
            String clubsString = target.request().accept(MediaType.APPLICATION_JSON).get(String.class);
            ObjectMapper mapper = new ObjectMapper();
            List<Group> groups = mapper.readValue(clubsString, new TypeReference<List<Group>>(){} );
            return groups;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public static List<Group> getAllByFaculty(String faculty) {
        try {
            WebTarget target = getWebTarget();
            String clubsString = target.path("faculty/").request().post(Entity.entity(new Group("",faculty),MediaType.APPLICATION_JSON), String.class);
            ObjectMapper mapper = new ObjectMapper();
            List<Group> groups = mapper.readValue(clubsString, new TypeReference<List<Group>>(){} );
            return groups;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public static Group getByName(String name){
        try {
            WebTarget target = getWebTarget();
            Response response = target.path("name/").request().post(Entity.entity(new Group(name, ""),MediaType.APPLICATION_JSON), Response.class);
            Group group = response.readEntity(Group.class);
            return group;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }



}
