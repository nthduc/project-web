package vn.edu.hcmuaf.fit.db;

import java.sql.*;
import java.time.LocalDate;
/**
 * Xử lí kết nối database
 *
 * @author Bui Anh Tuan
 * @version 1.0
 * @since 2022-12-12
 * Cập nhất kết nối database
 *
 * @author Nguyen Thai Duc
 * @version 1.0
 * @since 2022-12-29
 */

public class ConnectionDB {
    // Declare a connection
    public static Connection conn;
    // Declare the connection URL
    private static final String url = "jdbc:mysql://localhost:3306/";
    private static final String dbName = "daisan";
    private static final String unicode = "?useUnicode=true&characterEncoding=utf-8";
    private static final String user = "root";
    private static final String password = "021220";
    static {
        try {
            // Load the MySQL JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    public static void connect() throws SQLException, ClassNotFoundException{
        // Get a connection to the database
        try {
            conn = DriverManager.getConnection(url + dbName + unicode, user, password);
            System.out.println("Kết nối Database thành công");
        } catch(SQLException e) {
            e.printStackTrace();
        }

    }

    public static void closeConnection() {
        // Close the connection
        try {
            if (conn != null) {
                conn.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static ResultSet executeQuery(String sql) {
        // Execute a SQL query and return the result set
        try {
            PreparedStatement statement = conn.prepareStatement(sql);
            return statement.executeQuery();
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static boolean isConnected() {
        // Check the connection status
        try {
            return !conn.isClosed();
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        LocalDate date = java.time.LocalDate.now();

        System.out.println(date);

        LocalDate date1 =  date.plusDays(8);

        System.out.println(Date.valueOf(date1));

        connect();
        // Kiểm tra đã kết nối chưa
        System.out.println("Đã kết nối DB" + isConnected());

        closeConnection();

    }
}


