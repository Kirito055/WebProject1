package models;

public class Club {
        private int id;
        private String name;
        private int leader_id;
        private String logo;
        private  String description;

        public Club(String[] clubFields)
        {
            if(clubFields.length == 5)
            {
                this.id = Integer.parseInt(clubFields[0]);
                this.name = clubFields[1];
                this.leader_id = Integer.parseInt(clubFields[2]);
                this.logo = clubFields[3];
                this.description=clubFields[4];
            }
        }

    public Club(String name, int leader_id, String logo, String description) {
        this.name = name;
        this.leader_id = leader_id;
        this.logo = logo;
        this.description = description;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public int getLeader_id() {
        return leader_id;
    }

    public String getLogo() {
        return logo;
    }

    public String getDescription() {
        return description;
    }
}
