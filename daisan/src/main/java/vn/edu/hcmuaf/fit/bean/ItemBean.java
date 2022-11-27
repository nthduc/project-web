package vn.edu.hcmuaf.fit.bean;

import java.io.Serializable;

public class ItemBean implements Serializable {

    private String id;
    private ProductBean product;
    private int quantity;
    private int price;

    public ItemBean(){}

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public ProductBean getProduct() {
        return product;
    }

    public void setProduct(ProductBean product) {
        this.product = product;
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

