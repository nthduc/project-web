package vn.edu.hcmuaf.fit.bean;

import java.io.Serializable;

public class RoleBean implements Serializable {
    private int role_ID;
    private String name;
    private String description;

    public RoleBean() {
    }

    public RoleBean(int role_ID, String name, String description) {
        this.role_ID = role_ID;
        this.name = name;
        this.description = description;
    }

    public int getRole_ID() {
        return role_ID;
    }

    public void setRole_ID(int role_ID) {
        this.role_ID = role_ID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
