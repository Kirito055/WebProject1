package db.repository;

import db.DBConnection;
import models.Post;

import java.sql.*;
import java.util.ArrayList;

public class PostRepository extends DBConnection {


    //akniet method
    public void addEvent(Post event) {
        try {
            String sql = "INSERT INTO posts(`title`, `description`,`date`,`image`,`user_id`,`club_id`,`type`) " +
                    "VALUES (?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement preparedStatement = super.getConnection().prepareStatement(sql);

            preparedStatement.setString(1, event.getTitle());
            preparedStatement.setString(2, event.getDescrition());
            preparedStatement.setDate(3, Date.valueOf(event.getDate()));
            preparedStatement.setString(4, event.getImage());
            preparedStatement.setInt(5, event.getUser_id());
            preparedStatement.setInt(6, event.getClub_id());
            preparedStatement.setString(7, event.getType());

            preparedStatement.execute();
        } catch (SQLException throwable) {
            throwable.printStackTrace();
        }
    }
    public void updateEvent(Post event) {
        try {
            String sql = "update posts set " +
                         "title = ?," +
                         "description = ?," +
                         "date = ?," +
                         "image = ?," +
                         "user_id = ?," +
                         "club_id = ?," +
                         "type = ? " +
                         "where id = ?";

            PreparedStatement preparedStatement = super.getConnection().prepareStatement(sql);

            preparedStatement.setString(1, event.getTitle());
            preparedStatement.setString(2, event.getDescrition());
            preparedStatement.setDate(3, Date.valueOf(event.getDate()));
            preparedStatement.setString(4, event.getImage());
            preparedStatement.setInt(5, event.getUser_id());
            preparedStatement.setInt(6, event.getClub_id());
            preparedStatement.setString(7, event.getType());

            preparedStatement.setInt(8, event.getId());
            preparedStatement.execute();
        } catch (SQLException throwable) {
            throwable.printStackTrace();
        }
    }
    public void removeEvent(Integer id) {
        String sql = "delete from posts where id = ?";

        try {
            PreparedStatement stmt = super.getConnection().prepareStatement(sql);
            stmt.setInt(1, id);
            stmt.execute();

        } catch (
                SQLException throwables) {
            throwables.printStackTrace();
        }

    }
    public ArrayList<Post> selectAll() {
        ArrayList<Post> list = new ArrayList<>();

        try {
            String sql = "select * from posts where type ='event' ";
            Statement statement = super.getConnection().createStatement();
            ResultSet resultSet = statement.executeQuery(sql);

            while (resultSet.next()) {
                list.add(new Post(
                        resultSet.getInt("id"),
                        resultSet.getString("title"),
                        resultSet.getString("description"),
                        resultSet.getString("date"),
                        resultSet.getString("image"),
                        resultSet.getInt("user_id"),
                        resultSet.getInt("club_id"),
                        "event"
                ));
            }

        } catch (SQLException throwable) {
            throwable.printStackTrace();
        }
        return list;
    }

    //talgat method
    public ArrayList<Post> eventSelect() {
        ArrayList<Post> events = new ArrayList();
        try {
            Statement statement = super.getConnection().createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT * FROM posts where type ='event'");
            ResultSetMetaData metaData = resultSet.getMetaData();
            int numberOfColumns = metaData.getColumnCount();
            Post post;
            while (resultSet.next()) {
                String[] eventFields = new String[numberOfColumns];
                for (int a = 1; a <= numberOfColumns; a++) {
                    eventFields[a - 1] = resultSet.getObject(a).toString();
                }
                post = new Post(eventFields);
                events.add(post);
            }
            resultSet.close();
            super.getConnection().close();
            statement.close();
        } catch (SQLException sqlException) {
            sqlException.printStackTrace();
        }
        return events;
    }

    public int Addevent(Post event, String title, String description, String date, String image, int user_id, int club_id) {

        Connection connection = null;
        PreparedStatement preparedStatement = null;
        String type = "event";
        int added = 0;
        try {
            connection = getConnection();

            preparedStatement = connection.prepareStatement("INSERT INTO `posts`(`title`, `description`,`date`,`image`,`user_id`,`club_id`,`type`) VALUES (?,?,?,?,?,?,?)");
            preparedStatement.setString(1, title);
            preparedStatement.setString(2, description);
            preparedStatement.setDate(3, Date.valueOf(date));
            preparedStatement.setString(4, image);
            preparedStatement.setInt(5, user_id);
            preparedStatement.setInt(6, club_id);
            preparedStatement.setString(7, type);
            added = preparedStatement.executeUpdate();
            connection.close();
            preparedStatement.close();
        } catch (SQLException sqlException) {
            sqlException.printStackTrace();
        }
        return added;
    }

    public int UpdateEvent(int id, String title, String description, String date, String image, int user_id, int club_id) {

        int updated = 0;
        try {
            PreparedStatement preparedStatement = super.getConnection().
                    prepareStatement("update posts set title=?, description=?, date=?, image=?, user_id=?, club_id=? where id=?");
            preparedStatement.setString(1, title);
            preparedStatement.setString(2, description);
            preparedStatement.setString(3, date);
            preparedStatement.setString(4, image);
            preparedStatement.setInt(5, user_id);
            preparedStatement.setInt(6, club_id);
            preparedStatement.setInt(7, id);
            updated = preparedStatement.executeUpdate();
            super.getConnection().close();
            preparedStatement.close();
        } catch (SQLException sqlException) {
            sqlException.printStackTrace();
        }
        return updated;
    }

    public int deletePost(int id) {
        int deleted = 0;
        try {
            PreparedStatement preparedStatement = super.getConnection().prepareStatement("delete from posts where id = ?");
            preparedStatement.setInt(1, id);
            deleted = preparedStatement.executeUpdate();
            super.getConnection().close();
            preparedStatement.close();
        } catch (SQLException sqlException) {
            sqlException.printStackTrace();
        }
        return deleted;
    }
}
