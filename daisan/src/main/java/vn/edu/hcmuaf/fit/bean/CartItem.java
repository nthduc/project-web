package vn.edu.hcmuaf.fit.bean;

public class CartItem {
    private int Pro_id;
    private String name;
    private int quantity;
    private int price;

    public CartItem(int pro_id, String name, int quantity, int price) {
        Pro_id = pro_id;
        this.name = name;
        this.quantity = quantity;
        this.price = price;
    }

    public int getPro_id() {
        return Pro_id;
    }

    public void setPro_id(int pro_id) {
        Pro_id = pro_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
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
