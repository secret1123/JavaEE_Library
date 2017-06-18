package demo.util;

import java.sql.*;

/**
 * Created by AnLu on
 * 2017/6/16 15:09.
 * JavaEE_Library
 */
public class TransactionTest {
    public static void main(String[] args) {
        Connection connection = Db.getConnection();
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        String sql = "INSERT INTO javaee_library.user VALUE (NULL ,'','','')";

        try {
            if (connection == null) {
                return;
            }
            preparedStatement = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            preparedStatement.executeUpdate();

            resultSet = preparedStatement.getGeneratedKeys();
            resultSet.next();
            int id = resultSet.getInt(1);

            sql = "DELETE FROM javaee_library.user WHERE id = ?";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1,id);
            preparedStatement.executeUpdate();
        }catch (SQLException e){
            e.printStackTrace();
        }finally {
            Db.close(resultSet,preparedStatement,connection);
        }
    }
}
