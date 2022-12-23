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
