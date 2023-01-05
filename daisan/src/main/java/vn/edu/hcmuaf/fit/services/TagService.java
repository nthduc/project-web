package vn.edu.hcmuaf.fit.services;

import vn.edu.hcmuaf.fit.bean.ProductBean;
import vn.edu.hcmuaf.fit.bean.TagBean;
import vn.edu.hcmuaf.fit.db.ConnectionDB;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class TagService {
    private static TagService instance;
    public TagService(){    }
    public static TagService getInstance(){
        if (instance == null) {
            instance = new TagService();
        }
        return instance;
    }
    public List<TagBean> getAllTag() {
        String query = " Select * from tags";
        List<TagBean> list = new ArrayList<>();
        try {
            ConnectionDB.connect();
            PreparedStatement ps = ConnectionDB.conn.prepareStatement(query);
            try(ResultSet rs = ps.executeQuery()){
                while (rs.next()) {
                    int id = rs.getInt(1);
                    String name = rs.getString(2);
                    String Url = rs.getString(3);

                    list.add(new TagBean(id,name,Url));
                }}
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;}

    public static void main(String[] args) {
        TagService s = new TagService();
        List<TagBean> list = s.getAllTag();
        for (TagBean t: list
             ) {
            System.out.println(t);
        }
    }
    }
