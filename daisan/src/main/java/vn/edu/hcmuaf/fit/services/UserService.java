package vn.edu.hcmuaf.fit.services;

import vn.edu.hcmuaf.fit.bean.UserBean;
import vn.edu.hcmuaf.fit.db.ConnectionDB;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

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
    //Kiểm tra tài khoản có tồn tại hay không?
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

            }catch (Exception e) {
                System.out.print(" Unsuccessful");
                e.printStackTrace();
            }
    }
    public void updateAcount( String fname, String phone, String email, String gender, int id){
        String query ="UPDATE users SET fullname = ?, phone =?,email=?,gender=? WHERE user_ID = ? ";
        try {
            ConnectionDB.connect();
            PreparedStatement ps = ConnectionDB.conn.prepareStatement(query);
            ps.setString(1,fname);
            ps.setString(2,phone);
            ps.setString(3,email);
            ps.setString(4,gender);
//            ps.setDate(5,dob);
            ps.setInt(5,id);
            ps.executeUpdate();
            System.out.println(" cập nhật thành công");
        }catch (Exception e){
            e.printStackTrace();
        }
    }
    public void updatePass( String pass, int id){
        String query ="UPDATE users SET password = ? WHERE user_ID = ? ";
        try {
            ConnectionDB.connect();
            PreparedStatement ps = ConnectionDB.conn.prepareStatement(query);
            ps.setString(1,pass);
            ps.setInt(2,id);
            ps.executeUpdate();
            System.out.println(" cập nhật mk thành công");
        }catch (Exception e){
            e.printStackTrace();
        }
    }
    public int themtaikhoanadmin(int role, String username, String email, String password, String fullname){
        System.out.println(role);
        System.out.println(username);
        System.out.println(email);
        System.out.println(password);
        System.out.println(fullname);


        String query = "INSERT INTO users (role_ID,username, email, password,fullname) VALUES (?, ?, ?, ?, ?)";
        int affectedRows = 0;

        try {
            ConnectionDB.connect();
            PreparedStatement ps = ConnectionDB.conn.prepareStatement(query);
            ps.setInt(1,role);
            ps.setString(2,username);
            ps.setString(3,email);
            ps.setString(4,password);
            ps.setString(5,fullname);
            affectedRows = ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return affectedRows;
    }
    public UserBean login(String username, String password){
        System.out.println(username);
        System.out.println(password);
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
            e.printStackTrace();
        }
        return user;
    }

    public UserBean loginAdmin(String username, String password,String email){
        System.out.println(username);
        System.out.println(password);
        System.out.println(email);
        String query = " select * from users where username = ? AND email =? AND password = ?";
        UserBean user = null;
        try {
            ConnectionDB.connect();
            PreparedStatement ps = ConnectionDB.conn.prepareStatement(query);

            ps.setString(1,username);
            ps.setString(2,email);
            ps.setString(3,password);

            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    int user_ID = rs.getInt(1);
                    int user_Role = rs.getInt(2);
                    String name = rs.getString(3);
                    String email1 = rs.getString(4);
                    String password1 = rs.getString(5);
                    String fullname = rs.getString(6);
                    String gender = rs.getString(7);
                    Date dob = rs.getDate(8);
                    String phone = rs.getString(9);
                    String address = rs.getString(10);

                    user = new UserBean(user_ID,user_Role,name,email1,password1,fullname,gender,dob,phone,address);
                }}
        }catch (Exception e) {
            e.printStackTrace();
            System.out.println("Có lỗi xảy ra không thể Truy vấn Database LoginAdmin");
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
    public boolean checkUsernameAndPass(String username, String pass){
        if (username == null){
            return false;
        }
        if (pass == null){
            return false;
        }
        return true;
    }

    public List<UserBean> getCustomers() {
        // Define a list to hold the customers
        List<UserBean> customers = new ArrayList<>();

        // Connect to the database
        try {
            ConnectionDB.connect();
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }

        // Define the SQL query to get the customers
        String sql = "SELECT * FROM users WHERE role_ID = 2";
        PreparedStatement statement;
        try {
            statement = ConnectionDB.conn.prepareStatement(sql);
            ResultSet result = statement.executeQuery();

            // Loop through the result set and add each customer to the list
            while (result.next()) {
                UserBean customer = new UserBean();
                customer.setUser_ID(result.getInt("user_ID"));
                customer.setFullname(result.getString("fullname"));
                customer.setUsername(result.getString("username"));
                customer.setEmail(result.getString("email"));
                customer.setRole_ID(result.getInt("role_ID"));
                customer.setDob(result.getDate("dob"));
                customer.setPhone(result.getString("phone"));
                customer.setAddress(result.getString("address"));
                customers.add(customer);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        // Close the database connection
        ConnectionDB.closeConnection();

        // Return the list of customers
        return customers;
    }

    public UserBean checkAccountExistEmail(String username, String email) {
        UserBean user = null;
        String query = "SELECT * FROM users WHERE username = ? AND email = ?";
        try {
            ConnectionDB.connect();
            PreparedStatement ps = ConnectionDB.conn.prepareStatement(query);
            ps.setString(1, username);
            ps.setString(2, email);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    int user_ID = rs.getInt(1);
                    int user_Role = rs.getInt(2);
                    String name = rs.getString(3);
                    String emailAddress = rs.getString(4);
                    String password = rs.getString(5);
                    String fullname = rs.getString(6);
                    String gender = rs.getString(7);
                    Date dob = rs.getDate(8);
                    String phone = rs.getString(9);
                    String address = rs.getString(10);

                    user = new UserBean(user_ID, user_Role, name, emailAddress, password, fullname, gender, dob, phone, address);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return user;
    }

    public UserBean checkUserByID(int id){
        UserBean user = null;
        String query = "select * from users where user_ID = ?";
        try {
            ConnectionDB.connect();
            System.out.print("1");
            PreparedStatement ps = ConnectionDB.conn.prepareStatement(query);
            System.out.print("2");
            ps.setInt(1,id);
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

    public boolean changePassword(String username, String currentPassword, String newPassword) {
        String query = "UPDATE users SET password = ? WHERE username = ? AND password = ?";
        int affectedRows = 0;

        try {
            ConnectionDB.connect();
            PreparedStatement ps = ConnectionDB.conn.prepareStatement(query);
            ps.setString(1, newPassword);
            ps.setString(2, username);
            ps.setString(3, currentPassword);
            affectedRows = ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return affectedRows > 0;
    }

    public static void main(String[] args) {
        UserService us = new UserService();
//        System.out.println(us.checkUser("anhtuan"));
//        us.themtaikhoan(2,"tester","test02@gmail.com","123");
//           us.listUser();
//        UserBean user = new UserBean(1,2,"nam","123","12345@gmail.com","0","0",null,"0","0");
//        us.add(user);
//       System.out.println(us.login("anhtuan","123456"));
//            us.updateAcount("tester fun","02212222","tester02@gmai.com","nam",13);
        us.updatePass("123",1);
    }



}
