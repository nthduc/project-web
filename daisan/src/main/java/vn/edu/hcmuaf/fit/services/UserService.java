package vn.edu.hcmuaf.fit.services;

import vn.edu.hcmuaf.fit.bean.UserBean;
import vn.edu.hcmuaf.fit.db.ConnectionDB;
import java.sql.SQLException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
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
        String query = "select * from users where username = ?";
        try {
            ConnectionDB.connect();
            PreparedStatement ps = ConnectionDB.con.prepareStatement(query);
            ps.setString(1,username);
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                return new UserBean(rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getDate(8),
                        rs.getString(9),
                        rs.getString(10));
            }
        }catch (Exception e) {
        }
        return null;
    }
    public void themtaikhoan(String username, String email, String password){
        String query = "insert into users values(0,2,?,?,?,0,0,0,0,0)";
            try {
                ConnectionDB.connect();
                PreparedStatement ps = ConnectionDB.con.prepareStatement(query);
                ps.setString(3,username);
                ps.setString(4,email);
                ps.setString(5,password);
                ps.execute();

            }catch (Exception e) {
            }
    }

}
