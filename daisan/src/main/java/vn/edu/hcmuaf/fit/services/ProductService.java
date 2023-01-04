package vn.edu.hcmuaf.fit.services;

import vn.edu.hcmuaf.fit.bean.ProductBean;
import vn.edu.hcmuaf.fit.db.ConnectionDB;

import javax.servlet.http.HttpServletRequest;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductService {
    private  static ProductService instance;
    public ProductService(){
    }
    public static ProductService getInstance(){
        if (instance == null) {
            instance = new ProductService();
        }
        return instance;
    }
    public List<ProductBean> getAllProduct() {
        String query = " Select * from products";
        List<ProductBean> listPro = new ArrayList<>();
        try {
            ConnectionDB.connect();
            PreparedStatement ps = ConnectionDB.conn.prepareStatement(query);
            try(ResultSet rs = ps.executeQuery()){
            while (rs.next()) {
                int id = rs.getInt(1);
                String name = rs.getString(2);
                String Url = rs.getString(3);
                int price = rs.getInt(4);
                int saleprice = rs.getInt(5);
                String des = rs.getString(6);
                int status = rs.getInt(7);
                String company = rs.getString(8);
                int tag_ID = rs.getInt(9);
                listPro.add(new ProductBean(id,name,Url,price,saleprice,des,status,company,tag_ID));
            }}
        } catch (Exception e) {
                e.printStackTrace();
        }
        return listPro;
    }
//    default status = 1
    public List<ProductBean> getNewProduct() {
        String query = " Select * from products where status = 1";
        List<ProductBean> listPro = new ArrayList<>();
        try {
            ConnectionDB.connect();
            PreparedStatement ps = ConnectionDB.conn.prepareStatement(query);
            try(ResultSet rs = ps.executeQuery()){
                while (rs.next()) {
                    int id = rs.getInt(1);
                    String name = rs.getString(2);
                    String Url = rs.getString(3);
                    int price = rs.getInt(4);
                    int saleprice = rs.getInt(5);
                    String des = rs.getString(6);
                    int status = rs.getInt(7);
                    String company = rs.getString(8);
                    int tag_ID = rs.getInt(9);
                    listPro.add(new ProductBean(id,name,Url,price,saleprice,des,status,company,tag_ID));
                }}
        } catch (Exception e) {
            e.printStackTrace();
        }
        return listPro;
    }
    public static void main(String[] args) {
        ProductService pro = new ProductService();
        List<ProductBean> list1 = pro.getAllProduct();
        List<ProductBean> list = pro.getNewProduct();
        HttpServletRequest request = null;

        for (ProductBean p:list1) {
            System.out.println(p);
        }

    }
}
