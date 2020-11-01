package db;

import models.Club;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;
import java.sql.*;
import java.util.ArrayList;

public class DBConnection {



    public Connection getConnection() {
         Context initialContext;
         Connection connection = null;
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

    public int addClub(String clubName,int leader_id,String logo,String description)
    {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        int added = 0;
        try
        {
            connection = getConnection();
            preparedStatement = connection.prepareStatement("insert into clubs (name, leader_id, logo,description) values (?, ?, ?, ?)");
            preparedStatement.setString(1, clubName);
            preparedStatement.setInt(2, leader_id);
            preparedStatement.setString(3, logo);
            preparedStatement.setString(4, description);
            added = preparedStatement.executeUpdate();
            connection.close();
            preparedStatement.close();
        }
        catch (SQLException sqlException)
        {
            sqlException.printStackTrace();
        }
        return added;
    }

    public int updateClub(int id, String name,int leader_id,String logo,String description)
    {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        int updated = 0;
        try
        {
            connection = getConnection();
            preparedStatement = connection.prepareStatement("update clubs set name=?, leader_id=?, logo=?, description=? where id=?");
            preparedStatement.setString(1, name);
            preparedStatement.setInt(2, leader_id);
            preparedStatement.setString(3,logo);
            preparedStatement.setString(4, description);
            preparedStatement.setInt(5, id);
            updated = preparedStatement.executeUpdate();
            connection.close();
            preparedStatement.close();
        }
        catch (SQLException sqlException)
        {
            sqlException.printStackTrace();
        }
        return updated;
    }
    protected int delete(String id)
    {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        int deleted = 0;
        try
        {
            connection = getConnection();
            preparedStatement = connection.prepareStatement("delete from books where books.book_id = ?");
            preparedStatement.setString(1, id);
            deleted = preparedStatement.executeUpdate();
            connection.close();
            preparedStatement.close();
        }
        catch (SQLException sqlException)
        {
            sqlException.printStackTrace();
        }
        return deleted;
    }



}
