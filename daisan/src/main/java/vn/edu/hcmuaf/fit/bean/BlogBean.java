package vn.edu.hcmuaf.fit.bean;

import java.io.Serializable;

public class BlogBean implements Serializable {
    private String userid;
    private String username;
    private String blogid;
    private String thumbnailURL;
    private String title;
    private String smallcontent;
    private String content;

    public BlogBean() {};

    public BlogBean(String userid, String blogid, String thumbnailURL, String title, String smallcontent) {
        this.userid = userid;
        this.blogid = blogid;
        this.thumbnailURL = thumbnailURL;
        this.title = title;
        this.smallcontent = smallcontent;
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getBlogid() {
        return blogid;
    }

    public void setBlogid(String blogid) {
        this.blogid = blogid;
    }

    public String getThumbnailURL() {
        return thumbnailURL;
    }

    public void setThumbnailURL(String thumbnailURL) {
        this.thumbnailURL = thumbnailURL;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getSmallcontent() {
        return smallcontent;
    }

    public void setSmallcontent(String smallcontent) {
        this.smallcontent = smallcontent;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
}
