package vn.edu.hcmuaf.fit.bean;

import java.io.Serializable;

public class BannerBean implements Serializable {
    private int id;
    private String title;
    private String content;
    private String imgURL;

    public BannerBean() {};

    public BannerBean(int id, String title, String content, String imgURL) {
        this.id = id;
        this.title = title;
        this.content = content;
        this.imgURL = imgURL;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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

    public String getImgURL() {
        return imgURL;
    }

    public void setImgURL(String imgURL) {
        this.imgURL = imgURL;
    }

    @Override
    public String toString() {
        return "BannerBean{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", content='" + content + '\'' +
                ", imgURL='" + imgURL + '\'' +
                '}';
    }
}
