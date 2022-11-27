package vn.edu.hcmuaf.fit.bean;

import java.io.Serializable;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Map;

public class CartBean implements Serializable {
    private String cartID;
    private ArrayList<ProductBean> listProduct;
    private Map<String,Integer> listItem;

    public CartBean(){}

    public CartBean(String cartID) throws SQLException, ClassNotFoundException {
        this.cartID = cartID;

    }

    public String getCartID() {
        return cartID;
    }

    public void setCartID(String cartID) {
        this.cartID = cartID;
    }

    public ArrayList<ProductBean> getListProduct() {
        return listProduct;
    }

    public void setListProduct(ArrayList<ProductBean> listProduct) {
        this.listProduct = listProduct;
    }

    public Map<String, Integer> getListItem() {
        return listItem;
    }

    public void setListItem(Map<String, Integer> listItem) {
        this.listItem = listItem;
    }
}

