package models;

import com.fasterxml.jackson.annotation.JsonProperty;

public class Club {
    private long id;
    private String name;
    private @JsonProperty("leaderId") long leaderId;
    private String logo;
    private String description;

    public Club() {
    }

    public Club(long id, String name, long leaderId, String logo, String description) {
        this.id = id;
        this.name = name;
        this.leaderId = leaderId;
        this.logo = logo;
        this.description = description;
    }

    public Club(String name, long leaderId, String logo, String description) {
        this.name = name;
        this.leaderId = leaderId;
        this.logo = logo;
        this.description = description;
    }

    public long getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public long getLeader_id() {
        return leaderId;
    }

    public String getLogo() {
        return logo;
    }

    public String getDescription() {
        return description;
    }

    @Override
    public String toString() {
        return "Club{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", leaderId=" + leaderId +
                ", logo='" + logo + '\'' +
                ", description='" + description + '\'' +
                '}';
    }
}
