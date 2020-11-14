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
            List<Club> clubs = mapper.readValue(clubsString, new TypeReference<List<Club>>(){});
            return clubs;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}
