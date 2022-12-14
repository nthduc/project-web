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
    public List<ProductBean> getAllProductByTagID(int id) {
        String query = " Select * from products where  tag_ID =?";
        List<ProductBean> listPro = new ArrayList<>();
        try {
            ConnectionDB.connect();
            PreparedStatement ps = ConnectionDB.conn.prepareStatement(query);
            ps.setInt(1,id);
            try(ResultSet rs = ps.executeQuery()){
                while (rs.next()) {
                    int pro_ID = rs.getInt(1);
                    String name = rs.getString(2);
                    String Url = rs.getString(3);
                    int price = rs.getInt(4);
                    int saleprice = rs.getInt(5);
                    String des = rs.getString(6);
                    int status = rs.getInt(7);
                    String company = rs.getString(8);
                    int tag_ID = rs.getInt(9);
                    listPro.add(new ProductBean(pro_ID,name,Url,price,saleprice,des,status,company,tag_ID));
                }}
        } catch (Exception e) {
            e.printStackTrace();
        }
        return listPro;
    }
//    l???y s???n ph???m b???ng ID
    public ProductBean getProductByID(int id) {
        String query = " Select * from products where  product_ID =?";
        ProductBean product = null;
        try {
            ConnectionDB.connect();
            PreparedStatement ps = ConnectionDB.conn.prepareStatement(query);
            ps.setInt(1,id);
            try(ResultSet rs = ps.executeQuery()){
                while (rs.next()) {
                    int pro_ID = rs.getInt(1);
                    String name = rs.getString(2);
                    String Url = rs.getString(3);
                    int price = rs.getInt(4);
                    int saleprice = rs.getInt(5);
                    String des = rs.getString(6);
                    int status = rs.getInt(7);
                    String company = rs.getString(8);
                    int tag_ID = rs.getInt(9);
                    product =  new ProductBean(pro_ID,name,Url,price,saleprice,des,status,company,tag_ID);
                }}
        } catch (Exception e) {
            e.printStackTrace();
        }
        return product;
    }
    //    default status = 1 -- L???y danh s??ch s???n ph???m m???i
    public List<ProductBean> getNewProduct() {
        String query = " Select * from products where status = 1 limit 20";
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
//    l???y s???n ph???m y??u th??ch default id = 3
    public List<ProductBean> getFavorProduct() {
        String query = " Select * from products where status = 3 limit 20";
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
//    L???y s???n ph???m b??n ch???y default id =4
    public List<ProductBean> getTopProduct() {
        String query = " Select * from products where status = 4 limit 20";
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
//    l???y danh s??ch s???n ph???m khuy???n m??i default status = 2
    public List<ProductBean> getSaleProduct() {
        String query = " Select * from products where status = 2";
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
    public List<ProductBean> getProductTag2() {
        String query = " Select * from products where tag_ID = 2 and status = 1";
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
    public List<ProductBean> getProductTag1() {
        String query = " Select * from products where tag_ID = 1 and status =1";
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
    public List<ProductBean> getProductTag3() {
        String query = " Select * from products where tag_ID = 6 and status =1";
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
    public List<ProductBean> searchProductByName(String tx) {
        String query = " Select * from products where name like ?";
        List<ProductBean> listPro = new ArrayList<>();
        try {
            ConnectionDB.connect();
            PreparedStatement ps = ConnectionDB.conn.prepareStatement(query);
            ps.setString(1,"%"+tx+"%");
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

    public List<ProductBean> getAllProducts() {
        List<ProductBean> products = new ArrayList<>();

        try {
            ConnectionDB.connect();
            String query = "SELECT * FROM products";
            PreparedStatement statement = ConnectionDB.conn.prepareStatement(query);
            ResultSet result = statement.executeQuery();

            while (result.next()) {
                int id = result.getInt("product_ID");
                String name = result.getString("name");
                int price = result.getInt("price");
                int salePrice = result.getInt("sale_price");
                String description = result.getString("description");
                String image = result.getString("img_URL");
                int tag = result.getInt("tag_ID");
                String company = result.getString("company");
                int status = result.getInt("status");

                ProductBean product = new ProductBean(id, name, image, price, salePrice, description,status,company,tag);
                products.add(product);
            }

            result.close();
            statement.close();
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        return products;
    }

    public boolean addProduct(ProductBean product) {
        String query = "INSERT INTO products (name, img_URL, price, sale_price, description, status, company, tag_ID) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
        int affectedRows = 0;
        try {
            ConnectionDB.connect();
            PreparedStatement ps = ConnectionDB.conn.prepareStatement(query);
            ps.setString(1, product.getName());
            ps.setString(2, product.getImgURL());
            ps.setInt(3, product.getPrice());
            ps.setInt(4, product.getSalePrice());
            ps.setString(5, product.getDescription());
            ps.setInt(6, product.getStatus());
            ps.setString(7, product.getCompany());
            ps.setInt(8, product.getTag_ID());
            affectedRows = ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return affectedRows > 0;
    }

    public static void main(String[] args) {
        ProductService pro = new ProductService();
        List<ProductBean> list1 = pro.getAllProduct();
        List<ProductBean> list = pro.getNewProduct();
        List<ProductBean> tag3 = pro.getProductTag3();
        List<ProductBean> l = pro.searchProductByName("");
        HttpServletRequest request = null;

        for (ProductBean p:l) {
            System.out.println(p);
        }

    }



}
