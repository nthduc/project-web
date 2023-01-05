package vn.edu.hcmuaf.fit.services;

import vn.edu.hcmuaf.fit.bean.BannerBean;
import vn.edu.hcmuaf.fit.bean.ProductBean;
import vn.edu.hcmuaf.fit.db.ConnectionDB;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class BannerService {
    private static BannerService instance;
    public BannerService(){    }
    public static BannerService getInstance(){
        if (instance == null) {
            instance = new BannerService();
        }
        return instance;
    }
    public List<BannerBean> getAllBanner(){
        String query = " Select * from banners";
        List<BannerBean> list = new ArrayList<>();
        try {
            ConnectionDB.connect();
            PreparedStatement ps = ConnectionDB.conn.prepareStatement(query);
            try(ResultSet rs = ps.executeQuery()){
                while (rs.next()) {
                    int id = rs.getInt(1);
                    String title = rs.getString(2);
                    String content = rs.getString(3);
                    String url = rs.getString(4);

                    list.add(new BannerBean(id,title,content,url));
                }}
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
    public static void main(String[] args) {
        BannerService banner = new BannerService();

        List<BannerBean> list = banner.getAllBanner();
        for (BannerBean p:list) {
            System.out.println(p);
        }

    }
}
