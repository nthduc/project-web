package vn.edu.hcmuaf.fit.bean;

import java.util.ArrayList;
import java.util.List;

public class Cart {
    private List<CartItem> items;
    private int totalPrice;
    public Cart(){
        items = new ArrayList<>();
    }

    public void setTotalPrice(int totalPrice) {
        this.totalPrice = totalPrice;
    }

    public int getTotalPrice(List<CartItem> items){
        int total =0;
        for (CartItem i: items){
            total += (i.getPrice()*i.getQuantity());
        }
        return total;
    }


}
