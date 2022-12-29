package vn.edu.hcmuaf.fit.db;

import java.sql.*;
import java.time.LocalDate;

public class ConnectionDB {
    public static Connection con;

    public static Connection connect() throws SQLException, ClassNotFoundException{
        String dbName = "daisan";
        if (con==null || con.isClosed()){
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/" + dbName + "?useUnicode=true&characterEncoding=utf-8","root","");

        }
        return con;
    }

    public static void main(String[] args) {
        LocalDate date = java.time.LocalDate.now();

        System.out.println(date);

        LocalDate date1 =  date.plusDays(8);

        System.out.println(Date.valueOf(date1));
        try {
            ConnectionDB.connect();
            Statement st =  ConnectionDB.con.createStatement();
            st.executeUpdate("insert into users values(6,2,'tester','t@gmail.com','123','','','','','')");
        }catch (Exception e){

        }


    }
}


