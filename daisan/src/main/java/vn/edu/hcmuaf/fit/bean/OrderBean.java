package vn.edu.hcmuaf.fit.bean;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;

public class OrderBean implements Serializable {
    private String orderID;
    private InfoBean info;
    private int status;
    private int totalPrice;
    private Date receptDate;
    private Date deliveryDate;
    private String email;
    private ArrayList<ItemBean> list;

    public OrderBean() {
    }

    public OrderBean(String orderID, InfoBean info, int status, int totalPrice) {
        this.orderID = orderID;
        this.info = info;
        this.status = status;
        this.totalPrice = totalPrice;
    }

    public String getOrderID() {
        return orderID;
    }

    public void setOrderID(String orderID) {
        this.orderID = orderID;
    }

    public InfoBean getInfo() {
        return info;
    }

    public void setInfo(InfoBean info) {
        this.info = info;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public int getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(int totalPrice) {
        this.totalPrice = totalPrice;
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

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public ArrayList<ItemBean> getList() {
        return list;
    }

    public void setList(ArrayList<ItemBean> list) {
        this.list = list;
    }
}
