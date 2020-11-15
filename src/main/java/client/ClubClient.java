package client;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.glassfish.jersey.client.ClientConfig;

import models.Club;

import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.WebTarget;
import javax.ws.rs.core.MediaType;
import java.util.List;

public class ClubClient {
    private static final String baseUri = "http://localhost:8080/rest/clubs/";


    static WebTarget getWebTarget() {
        ClientConfig config = new ClientConfig();
        Client client = ClientBuilder.newClient(config);
        return client.target(baseUri);
    }


    public static List<Club> getAll() {
        try {
            WebTarget target = getWebTarget();
            String clubsString = target.request().accept(MediaType.APPLICATION_JSON).get(String.class);
            ObjectMapper mapper = new ObjectMapper();
            List<Club> clubs = mapper.readValue(clubsString, new TypeReference<List<Club>>(){} );
            return clubs;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }


    public static List<Club> getClubsByUserId(long id) {
        try {
            WebTarget target = getWebTarget();
            String clubsString = target.path("user/" + id).request().accept(MediaType.APPLICATION_JSON).get(String.class);
            ObjectMapper mapper = new ObjectMapper();
            List<Club> clubs = mapper.readValue(clubsString, new TypeReference<List<Club>>(){} );
            return clubs;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public static void delete (String id) {
        WebTarget target = getWebTarget();
        target.path(id).request().delete();
    }


    public static Club get(long id){
        try {
            WebTarget target = getWebTarget();
            Club club = target.path(String.valueOf(id)).request().accept(MediaType.APPLICATION_JSON).get(Club.class);
            return club;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}
