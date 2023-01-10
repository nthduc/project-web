package vn.edu.hcmuaf.fit.services;

import vn.edu.hcmuaf.fit.bean.OrderBean;
import vn.edu.hcmuaf.fit.bean.ProductBean;
import vn.edu.hcmuaf.fit.db.ConnectionDB;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class OrderService {
    private  static OrderService instance;
    public OrderService(){
    }
    public static OrderService getInstance(){
        if (instance == null) {
            instance = new OrderService();
        }
        return instance;
    }


    public List<OrderBean> getAllOrders() {
        List<OrderBean> orders = new ArrayList<>();
        try {
            // establish database connection
            ConnectionDB.connect();
            // create SQL statement
            String sql = "SELECT * FROM orders";
            // create prepared statement
            PreparedStatement statement = ConnectionDB.conn.prepareStatement(sql);
            // execute statement and get result set
            ResultSet result = statement.executeQuery();
            // iterate over result set and create OrderBean objects
            while (result.next()) {

                int id = result.getInt("order_ID");
                int userId = result.getInt("user_ID");
                int numItem = result.getInt("num_item");
                int price = result.getInt("price");
                String payment = result.getString("payment");
                Date deliveryDate = result.getDate("delivery_date");
                Date receiptDate = result.getDate("recept_date");
                String status = result.getString("status");
                OrderBean order = new OrderBean(id, userId, numItem, price, payment, deliveryDate,receiptDate,status);
                orders.add(order);
            }
            // close connection
            ConnectionDB.conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return orders;
    }

    public boolean addOrder(OrderBean order) {
        String query = "INSERT INTO orders (user_ID, num_item, price, payment, delivery_date, recept_date, status) VALUES ( ?, ?, ?, ?, ?, ?, ?)";
        int affectedRows = 0;
        try {
            ConnectionDB.connect();
            PreparedStatement ps = ConnectionDB.conn.prepareStatement(query);
            ps.setInt(1, order.getOrder_ID());
            ps.setInt(2, order.getNum_item());
            ps.setInt(3, order.getPrice());
            ps.setString(4, order.getPayment());
            ps.setDate(5, (java.sql.Date) order.getDeliveryDate());
            ps.setDate(6, (java.sql.Date) order.getReceptDate());
            ps.setString(7, order.getStatus());
            affectedRows = ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return affectedRows > 0;
    }
}
