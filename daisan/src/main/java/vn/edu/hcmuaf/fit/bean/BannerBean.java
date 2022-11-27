package vn.edu.hcmuaf.fit.bean;

import java.io.Serializable;

public class BannerBean implements Serializable {
    private String id;
    private String title1;
    private String title2;
    private String imgURL;

    public BannerBean() {};

    public BannerBean(String id, String title1, String title2, String imgURL) {
        this.id = id;
        this.title1 = title1;
        this.title2 = title2;
        this.imgURL = imgURL;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getTitle1() {
        return title1;
    }

    public void setTitle1(String title1) {
        this.title1 = title1;
    }

    public String getTitle2() {
        return title2;
    }

    public void setTitle2(String title2) {
        this.title2 = title2;
    }

    public String getImgURL() {
        return imgURL;
    }

    public void setImgURL(String imgURL) {
        this.imgURL = imgURL;
    }
}
