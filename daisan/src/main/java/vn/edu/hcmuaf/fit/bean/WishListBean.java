package vn.edu.hcmuaf.fit.bean;

import java.io.Serializable;
import java.util.ArrayList;

public class WishListBean implements Serializable {
    private String wishListID;
    private ArrayList<ProductBean> productList;
    public WishListBean(){}


    public WishListBean(String wishListID, ArrayList<ProductBean> productList) {
        this.wishListID = wishListID;
        this.productList = productList;
    }

    public String getWishListID() {
        return wishListID;
    }

    public ArrayList<ProductBean> getProductList() {
        return productList;
    }

    public void setProductList(ArrayList<ProductBean> productList) {
        this.productList = productList;
    }

    public void setWishListID(String wishListID) {
        this.wishListID = wishListID;
    }
}