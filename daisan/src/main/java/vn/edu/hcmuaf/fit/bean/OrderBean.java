package vn.edu.hcmuaf.fit.bean;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;

public class OrderBean implements Serializable {
    private int order_ID;
    private int user_ID;
    private int num_item;
    private String payment;
    private String status;
    private int price;
    private Date receptDate;
    private Date deliveryDate;
    private ArrayList<CartItem> list;

    public OrderBean() {

    }

    public OrderBean(int order_ID, int user_ID, int num_item, int price, String payment, Date deliveryDate, Date receptDate, String status) {
        this.order_ID = order_ID;
        this.user_ID = user_ID;
        this.num_item = num_item;
        this.price = price;
        this.payment = payment;
        this.deliveryDate = deliveryDate;
        this.receptDate = receptDate;
        this.status = status;
    }

    public int getOrder_ID() {
        return order_ID;
    }

    public void setOrder_ID(int order_ID) {
        this.order_ID = order_ID;
    }

    public int getUser_ID() {
        return user_ID;
    }

    public void setUser_ID(int user_ID) {
        this.user_ID = user_ID;
    }

    public int getNum_item() {
        return num_item;
    }

    public void setNum_item(int num_item) {
        this.num_item = num_item;
    }

    public String getPayment() {
        return payment;
    }

    public void setPayment(String payment) {
        this.payment = payment;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public Date getReceptDate() {
        return receptDate;
    }

    public void setReceptDate(Date receptDate) {
        this.receptDate = receptDate;
    }

    public Date getDeliveryDate() {
        return deliveryDate;
    }

    public void setDeliveryDate(Date deliveryDate) {
        this.deliveryDate = deliveryDate;
    }

    public ArrayList<CartItem> getList() {
        return list;
    }

    public void setList(ArrayList<CartItem> list) {
        this.list = list;
    }
}