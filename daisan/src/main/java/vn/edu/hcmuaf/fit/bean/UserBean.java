package vn.edu.hcmuaf.fit.bean;

import java.io.Serializable;
import java.util.Date;

public class UserBean implements Serializable {

    private String id;
    private String email;
    private String name;
    private String password;
    private int role;
    private String gender;
    private Date dob;
    private String phone;
    private String address;
    private String card;
    private WishListBean wishListBean;
    private CartBean cart;
    private OrderBean order;

    public UserBean(){}
    public UserBean(String id, String email, String name, String password, int role, String gender, String phone, String address, Date dob, String card, WishListBean wishListBean, CartBean cart, OrderBean order){
        this.id = id;
        this.email = email;
        this.name = name;
        this.password = password;
        this.role = role;
        this.gender = gender;
        this.phone = phone;
        this.address = address;
        this.dob = dob;
        this.card = card;
        this.wishListBean = wishListBean;
        this.cart = cart;
        this.order = order;
    }

    public UserBean(String email,String name,String password){
        this.email = email;
        this.name = name;
        this.password = password;
    }

    public UserBean(String id,String email,String password,int role){
        this.id = id;
        this.email = email;
        this.password = password;
        this.role = role;
    }

    public String getGender() {
        return gender;
    }

    public String getName() {
        return name;
    }

    public String getId() {
        return id;
    }

    public Date getDob() {
        return dob;
    }

    public int getRole() {
        return role;
    }

    public String getAddress() {
        return address;
    }

    public String getEmail() {
        return email;
    }

    public String getPassword() {
        return password;
    }

    public String getCard() {
        return card;
    }

    public String getPhone() {
        return phone;
    }

    public CartBean getCart() {
        return cart;
    }

    public OrderBean getOrder() {
        return order;
    }

    public WishListBean getWishList() {
        return wishListBean;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setId(String id) {
        this.id = id;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public void setCard(String card) {
        this.card = card;
    }

    public void setDob(Date dob) {
        this.dob = dob;
    }

    public void setCart(CartBean cart) {
        this.cart = cart;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setOrder(OrderBean order) {
        this.order = order;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public void setRole(int role) {
        this.role = role;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public void setWishList(WishListBean wishListBean) {
        this.wishListBean = wishListBean;
    }
}
