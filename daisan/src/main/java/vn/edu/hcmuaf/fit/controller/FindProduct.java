package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.bean.ItemBean;
import vn.edu.hcmuaf.fit.bean.ProductBean;
import vn.edu.hcmuaf.fit.db.ConnectionDB;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class FindProduct {

    public static ProductBean findProduct(String id) throws SQLException, ClassNotFoundException {
        ConnectionDB.connect();
        ProductBean product = null;
        String sql = "select * from product where id='" + id + "'";
        PreparedStatement ps = ConnectionDB.conn.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();
        while (rs.next()){
//            product = new ProductBean(rs.getString(1),rs.getString(2),rs.getString(3)
//                    ,rs.getInt(4),rs.getInt(5),rs.getString(6),rs.getInt(7)
//                    ,rs.getString(8),rs.getString(9));
        }
        return product;
    }

    public static ArrayList<ItemBean> initCart(String cartID) throws SQLException, ClassNotFoundException {
        ConnectionDB.connect();
        ArrayList<ItemBean> list = new ArrayList<>();
        String sql = "select productid,quantity from cart where cartid='" + cartID + "'";
        PreparedStatement ps = ConnectionDB.conn.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();
        while (rs.next()){
            ItemBean item = new ItemBean();
            String id = rs.getString(1);
            int quantity = rs.getInt(2);
            item.setProduct(findProduct(id));
            item.setId(id);
            item.setQuantity(quantity);
            System.out.println(item.getProduct().getId());
            item.setPrice(item.getProduct().getSalePrice() * item.getQuantity());
            list.add(item);
        }
        return list;
    }

    public static void updateDB(String cartid,ItemBean item) throws SQLException, ClassNotFoundException {
        ConnectionDB.connect();
        boolean status = false;
        String sql = "select * from cart";
        PreparedStatement ps = ConnectionDB.conn.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();

        while (rs.next()){
            String id = rs.getString(1);
            String productid = rs.getString(2);
            int quantity = rs.getInt(3);

            if (cartid.equals(id) && item.getId().equals(productid)){
                status = true;

            }
        }
        if (status == true){
            PreparedStatement ps1 = ConnectionDB.conn.prepareStatement("UPDATE cart set quantity="+item.getQuantity()+" WHERE cartid='"+cartid+"' AND productid='"+item.getId()+"'");
            ps1.executeUpdate();
        } else {
            PreparedStatement ps1 = ConnectionDB.conn.prepareStatement("insert into cart (cartid,productid,quantity) values (?,?,?)");
            ps1.setString(1,cartid);
            ps1.setString(2,item.getId());
            ps1.setInt(3,item.getQuantity());
            ps1.executeUpdate();
        }
    }

    public static void remove(String cartid,String id) throws SQLException, ClassNotFoundException {
        ConnectionDB.connect();
        PreparedStatement ps = ConnectionDB.conn.prepareStatement("delete from cart where cartid=? and productid=?");
        ps.setString(1,cartid);
        ps.setString(2,id);
        ps.executeUpdate();
    }
}

