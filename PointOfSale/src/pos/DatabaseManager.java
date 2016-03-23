package pos;

import java.sql.ResultSet;
import java.sql.SQLException;

public class DatabaseManager {

    public boolean userLoginCheck(String username, String password) throws SQLException {
        DatabaseHelper.connection = DatabaseHelper.getConnection();
        ResultSet resultSet = null;
        try {
            DatabaseHelper.stmt = DatabaseHelper.connection.createStatement();
        } catch (SQLException ex) {

        }
       String  sql = "SELECT username, password FROM user_login WHERE username='" + username + "' AND password='" + password + "';";

        try {
            resultSet = DatabaseHelper.stmt.executeQuery(sql);
        } catch (SQLException ex) {

        }
        return resultSet.next();
    }
    

}
