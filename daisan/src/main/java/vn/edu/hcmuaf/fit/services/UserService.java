package vn.edu.hcmuaf.fit.services;

import vn.edu.hcmuaf.fit.bean.UserBean;
import vn.edu.hcmuaf.fit.db.ConnectionDB;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class UserService {
    private static UserService instance;
    public UserService(){
    }

    public static UserService getInstance() {
        if (instance == null) {
            instance = new UserService();
        }
        return instance;
    }
    public UserBean checkUser(String username){
        UserBean user = null;
        String query = "select * from users where username = ?";
        try {
            ConnectionDB.connect();
            System.out.print("1");
            PreparedStatement ps = ConnectionDB.conn.prepareStatement(query);
            System.out.print("2");
            ps.setString(1,username);
            System.out.print("3");
            try (ResultSet rs = ps.executeQuery();) {
                System.out.print("4");
                if (rs.next()) {
                    int user_ID = rs.getInt(1);
                    int user_Role = rs.getInt(2);
                    String name = rs.getString(3);
                    String email = rs.getString(4);
                    String password = rs.getString(5);
                    String fullname = rs.getString(6);
                    String gender = rs.getString(7);
                    Date dob = rs.getDate(8);
                    String phone = rs.getString(9);
                    String address = rs.getString(10);

                    user = new UserBean(user_ID,user_Role,name,email,password,fullname,gender,dob,phone,address);
                    System.out.print("5");
                }
            }
        }catch (Exception e) {
            System.out.print("6");
        }
       
        return user;
    }
    public void themtaikhoan(int role,String username, String email, String password){

            try {
                role = 2;
                ConnectionDB.connect();
                String query = "INSERT INTO users (role_ID,username, email, password) VALUES (?, ?, ?,?)";
                System.out.print("add successful 3");
                PreparedStatement ps = ConnectionDB.conn.prepareStatement(query);
                System.out.print("add successful 2");
                ps.setInt(1,role);
                ps.setString(2,username);
                ps.setString(3,email);
                ps.setString(4,password);
                System.out.print("add successful 1");
                ps.executeUpdate();
                System.out.print("add successful");
//
            }catch (Exception e) {
                System.out.print(" Unsuccessful");
                e.printStackTrace();
            }
    }
    public UserBean login(String username, String password){
        String query = " select * from users where username = ? AND password =?";
        UserBean user = null;
        try {
            ConnectionDB.connect();
            PreparedStatement ps = ConnectionDB.conn.prepareStatement(query);
            ps.setString(1,username);
            ps.setString(2,password);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    int user_ID = rs.getInt(1);
                    int user_Role = rs.getInt(2);
                    String name = rs.getString(3);
                    String email = rs.getString(4);
                    String password1 = rs.getString(5);
                    String fullname = rs.getString(6);
                    String gender = rs.getString(7);
                    Date dob = rs.getDate(8);
                    String phone = rs.getString(9);
                    String address = rs.getString(10);

                    user = new UserBean(user_ID,user_Role,name,email,password1,fullname,gender,dob,phone,address);
                }}
        }catch (Exception e) {
        }
        return user;
    }
    public  void listUser(){
        try {
            ConnectionDB.connect();
            Statement st =  ConnectionDB.conn.createStatement();
            PreparedStatement ps = ConnectionDB.conn.prepareStatement("select * from users");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                System.out.println(rs.getInt(1) + "  " + rs.getInt(2)
                        + "  " + rs.getString(3) + "  " + rs.getString(4) + "  " + rs.getString(5) + "  " + rs.getString(6) + "  " + rs.getString(7) + "  " + rs.getString(8) + "  " + rs.getString(9) + "  " + rs.getString(10));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    public void add(UserBean user){
        String query = "insert into users values(?,?,?,?,?,?,?,?,?,?)";
        try {
            ConnectionDB.connect();
            PreparedStatement ps = ConnectionDB.conn.prepareStatement(query,Statement.RETURN_GENERATED_KEYS);
            System.out.print("1");
            ps.setInt(1,user.getUser_ID());
            ps.setInt(2,user.getRole_ID());
            ps.setString(3,user.getUsername());
            ps.setString(4,user.getPassword());
            ps.setString(5, user.getEmail());
            ps.setString(6, user.getFullname());
            ps.setString(7, user.getGender());
            ps.setDate(8, (Date) user.getDob());
            ps.setString(9, user.getPhone());
            ps.setString(10, user.getAddress());
            System.out.print("2");
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    int user_ID = rs.getInt(1);
                    int user_Role = rs.getInt(2);
                    String name = rs.getString(3);
                    String email = rs.getString(4);
                    String password1 = rs.getString(5);
                    String fullname = rs.getString(6);
                    String gender = rs.getString(7);
                    Date dob = rs.getDate(8);
                    String phone = rs.getString(9);
                    String address = rs.getString(10);

                    user = new UserBean(user_ID,user_Role,name,email,password1,fullname,gender,dob,phone,address);
                    System.out.print( user);
                }}

        }catch (Exception e) {
            System.out.print("4");
        }
    }
    public static void main(String[] args) {
        UserService us = new UserService();
//        System.out.println(us.checkUser("anhtuan"));
        us.themtaikhoan(2,"tester","test02@gmail.com","123");
////   us.listUser();
//        UserBean user = new UserBean(1,2,"nam","123","12345@gmail.com","0","0",null,"0","0");
//        us.add(user);
//       System.out.println(us.login("anhtuan","123456"));
    }

}
