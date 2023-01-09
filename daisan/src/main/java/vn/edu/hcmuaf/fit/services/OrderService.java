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
}
