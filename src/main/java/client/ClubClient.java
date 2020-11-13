package client;

import org.glassfish.jersey.client.ClientConfig;

import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.WebTarget;

public class ClubClient {

    private static String baseUri = "http://localhost:8080/rest/books/";

    static WebTarget getWebTarget(){
        ClientConfig config = new ClientConfig();
        Client client = ClientBuilder.newClient(config);
        return client.target(baseUri);
    }



}
