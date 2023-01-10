package vn.edu.hcmuaf.fit.bean;

public class OrderDetail {
    int order_ID;
    int product_ID;
    int quantity;
    int price;

    public OrderDetail(int order_ID, int product_ID, int quantity, int price) {
        this.order_ID = order_ID;
        this.product_ID = product_ID;
        this.quantity = quantity;
        this.price = price;
    }

    public int getOrder_ID() {
        return order_ID;
    }

    public void setOrder_ID(int order_ID) {
        this.order_ID = order_ID;
    }

    public int getProduct_ID() {
        return product_ID;
    }

    public void setProduct_ID(int product_ID) {
        this.product_ID = product_ID;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }
}
