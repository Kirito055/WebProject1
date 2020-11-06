package controllers;

import models.Club;
import service.ClubService;

import java.util.ArrayList;

public class ClubController {
    private final ClubService clubServ=new ClubService();

    public ArrayList<Club> getAll(){
        return clubServ.getAll();
    }
}
