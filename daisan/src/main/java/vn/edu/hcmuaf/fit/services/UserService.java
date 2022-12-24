package vn.edu.hcmuaf.fit.services;

import vn.edu.hcmuaf.fit.bean.UserBean;
import vn.edu.hcmuaf.fit.db.ConnectionDB;
import java.sql.SQLException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
public class UserService {
    private static UserService instance;
    private  UserService(){
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
    public boolean themtaikhoan(UserBean user){
            try {
                ConnectionDB.connect();
                PreparedStatement ps = ConnectionDB.con.prepareStatement("insert into users values('"+user.getName()+","+user.getEmail()+","+user.getPassword()+"')");
                return true;
            }catch (Exception e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        return false;
    }

}
