package db;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.SQLException;

public class DBConnection {

    public Connection getConnection(){
        Context initialContext;
        Connection connection = null;
        try
        {
            initialContext = new InitialContext();
            Context envCtx = (Context)initialContext.lookup("java:comp/env");
            DataSource ds = (DataSource)envCtx.lookup("jdbc/final_aitu");
            connection = ds.getConnection();
        }
        catch (SQLException e)
        {
            e.printStackTrace();
        } catch (NamingException e) {
            e.printStackTrace();
        }
        return connection;
    }

}
