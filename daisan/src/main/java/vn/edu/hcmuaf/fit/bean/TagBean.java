package vn.edu.hcmuaf.fit.bean;

public class TagBean {
    private int tag_ID;
    private String name;
    private String imgURL;

    public TagBean() {
    }

    public TagBean(int tag_ID, String name, String imgURL) {
        this.tag_ID = tag_ID;
        this.name = name;
        this.imgURL = imgURL;
    }

    public int getTag_ID() {
        return tag_ID;
    }

    public void setTag_ID(int tag_ID) {
        this.tag_ID = tag_ID;
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

    @Override
    public String toString() {
        return "TagBean{" +
                "tag_ID=" + tag_ID +
                ", name='" + name + '\'' +
                ", imgURL='" + imgURL + '\'' +
                '}';
    }
}
