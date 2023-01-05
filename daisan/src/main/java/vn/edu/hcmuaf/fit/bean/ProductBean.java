package vn.edu.hcmuaf.fit.bean;

import java.io.Serializable;
import java.math.BigDecimal;

public class ProductBean implements Serializable {
    private int id;
    private String name;
    private String imgURL;
    private int price;
    private int salePrice;
    private String description;
    private int status;
    private String company;
    private int tag_ID;
//    public ProductBean(int id, String name, String url, int price, int saleprice, String des, int status, String company, int tag_ID){}



    public ProductBean(String name, String imgURL, int price, int salePrice, String description) {
        this.name = name;
        this.imgURL = imgURL;
        this.price = price;
        this.salePrice = salePrice;
        this.description = description;
    }

    public ProductBean(int id, String name, String imgURL, int price, int salePrice, String description, int status, String company, int tag_ID) {
        this.id = id;
        this.name = name;
        this.imgURL = imgURL;
        this.price = price;
        this.salePrice = salePrice;
        this.description = description;
        this.status = status;
        this.company = company;
        this.tag_ID = tag_ID;
    }
//    public ProductBean(int idP, String nameP, String image, int priceP, int saleP, String desc, int status, String nameC, int tag) {
//    }


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImgURL() {
        return imgURL;
    }

    public void setImgURL(String imgURL) {
        this.imgURL = imgURL;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getSalePrice() {
        return salePrice;
    }

    public void setSalePrice(int salePrice) {
        this.salePrice = salePrice;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    public int getTag_ID() {
        return tag_ID;
    }

    public void setTag_ID(int tag_ID) {
        this.tag_ID = tag_ID;
    }

    @Override
    public String toString() {
        return "ProductBean{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", imgURL='" + imgURL + '\'' +
                ", price=" + price +
                ", salePrice=" + salePrice +
                ", description='" + description + '\'' +
                ", status=" + status +
                ", company='" + company + '\'' +
                ", tag_ID=" + tag_ID +
                '}';
    }
}

