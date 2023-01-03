package vn.edu.hcmuaf.fit.bean;

import java.io.Serializable;

public class BannerBean implements Serializable {


    private int banner_ID;
    private String title;
    private String content;
    private String img_URL;


    public BannerBean() {
    }

    public BannerBean(int banner_ID, String title, String content, String img_URL) {
        this.banner_ID = banner_ID;
        this.title = title;
        this.content = content;
        this.img_URL = img_URL;
    }

    public int getBanner_ID() {
        return banner_ID;
    }

    public void setBanner_ID(int banner_ID) {
        this.banner_ID = banner_ID;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getImg_URL() {
        return img_URL;
    }

    public void setImg_URL(String img_URL) {
        this.img_URL = img_URL;
    }

    @Override
    public String toString() {
        return "BannerBean{" +
                "banner_ID=" + banner_ID +
                ", title='" + title + '\'' +
                ", content='" + content + '\'' +
                ", img_URL='" + img_URL + '\'' +
                '}';
    }
}

