package vn.edu.hcmuaf.fit.bean;

import java.io.Serializable;

public class InfoBean implements Serializable {

    private String name;
    private String company;
    private String phone;
    private String address;
    public InfoBean(){}
    public InfoBean(String name, String company, String phone, String address) {
        this.name = name;
        this.company = company;
        this.phone = phone;
        this.address = address;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
}

