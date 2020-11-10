package db.repository;

import db.DBConnection;
import models.Club;

import java.sql.*;
import java.util.ArrayList;

public class ClubRepository extends DBConnection {

    public ArrayList<Club> clubSelectAll()
    {
        ArrayList<Club> clubs = new ArrayList();
        try
        {
            Statement statement = super.getConnection().createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT * FROM clubs");
            ResultSetMetaData metaData = resultSet.getMetaData();
            int numberOfColumns = metaData.getColumnCount();
            Club club;
            while (resultSet.next())
            {
                String[] clubFields = new String[numberOfColumns];
                for(int a=1; a<=numberOfColumns; a++)
                {
                    clubFields[a-1] = resultSet.getObject(a).toString();
                }
                club = new Club(clubFields);
                clubs.add(club);
            }
            resultSet.close();
            super.getConnection().close();
            statement.close();
        }
        catch (SQLException sqlException)
        {
            sqlException.printStackTrace();
        }
        return clubs;
    }

}
