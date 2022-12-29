package vn.edu.hcmuaf.fit.bean;

import java.io.Serializable;
import java.util.Date;

public class UserBean implements Serializable {
    private int user_ID;
    private int role_ID;
    private String username;
    private String password;
    private String email;
    private String fullname;
    private String gender;
    private Date dob;
    private String phone;
    private String address;

    public UserBean(int anInt, int rsInt, String username, String string, String rsString, String email, String fullname, String gender, String date, String phone, String address) {
    }

    public UserBean(int user_ID, int role_ID, String username, String password, String email, String fullname, String gender, Date dob, String phone, String address) {
        this.user_ID = user_ID;
        this.role_ID = role_ID;
        this.username = username;
        this.password = password;
        this.email = email;
        this.fullname = fullname;
        this.gender = gender;
        this.dob = dob;
        this.phone = phone;
        this.address = address;
    }

    public int getUser_ID() {
        return user_ID;
    }

    public void setUser_ID(int user_ID) {
        this.user_ID = user_ID;
    }

    public int getRole_ID() {
        return role_ID;
    }

    public void setRole_ID(int role_ID) {
        this.role_ID = role_ID;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public Date getDob() {
        return dob;
    }

    public void setDob(Date dob) {
        this.dob = dob;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    @Override
    public String toString() {
        return "UserBean{" +
                "user_ID=" + user_ID +
                ", role_ID=" + role_ID +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", email='" + email + '\'' +
                ", fullname='" + fullname + '\'' +
                ", gender='" + gender + '\'' +
                ", dob=" + dob +
                ", phone='" + phone + '\'' +
                ", address='" + address + '\'' +
                '}';
    }

    public static void main(String[] args) {
        UserBean userBean = new UserBean(1,2,"nam","123","12345@gmail.com","0","0",null,"0","0");
        System.out.print(userBean);
    }
}