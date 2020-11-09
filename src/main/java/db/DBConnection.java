package db;

import models.Club;
import models.Post;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;
import java.sql.*;
import java.util.ArrayList;

public class DBConnection {
    private Context initialContext;
    private Connection connection = null;


    public Connection getConnection() {

        if (connection == null) {
            try {
                initialContext = new InitialContext();
                Context envCtx = (Context) initialContext.lookup("java:comp/env");
                DataSource ds = (DataSource) envCtx.lookup("jdbc/final_aitu");
                connection = ds.getConnection();
            } catch (SQLException e) {
                e.printStackTrace();
            } catch (NamingException e) {
                e.printStackTrace();
            }
        }
        return connection;
    }

    public ArrayList<Club> clubSelect(Connection connection)
    {
        ArrayList<Club> clubs = new ArrayList();
        try
        {
            Statement statement = connection.createStatement();
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
            connection.close();
            statement.close();
        }
        catch (SQLException sqlException)
        {
            sqlException.printStackTrace();
        }
        return clubs;
    }



    public ArrayList<Post> eventSelect(Connection connection)
    {
        ArrayList<Post> events = new ArrayList();
        try
        {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT * FROM posts where type ='event'");
            ResultSetMetaData metaData = resultSet.getMetaData();
            int numberOfColumns = metaData.getColumnCount();
            Post post;
            while (resultSet.next())
            {
                String[] eventFields = new String[numberOfColumns];
                for(int a=1; a<=numberOfColumns; a++)
                {
                    eventFields[a-1] = resultSet.getObject(a).toString();
                }
                post = new Post(eventFields);
                events.add(post);
            }
            resultSet.close();
            connection.close();
            statement.close();
        }
        catch (SQLException sqlException)
        {
            sqlException.printStackTrace();
        }
        return events;
    }

}
