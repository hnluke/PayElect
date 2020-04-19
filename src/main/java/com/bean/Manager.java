package com.bean;

public class Manager {
    public final static long serialVersionUID = 106L;

    private Integer magUserId;
    private String magUserName;
    private String magUserPwd;

    public Integer getMagUserId() {
        return magUserId;
    }

    public void setMagUserId(Integer magUserId) {
        this.magUserId = magUserId;
    }

    public String getMagUserName() {
        return magUserName;
    }

    public void setMagUserName(String magUserName) {
        this.magUserName = magUserName;
    }

    public String getMagUserPwd() {
        return magUserPwd;
    }

    public void setMagUserPwd(String magUserPwd) {
        this.magUserPwd = magUserPwd;
    }

    @Override
    public String toString() {
        return "Manager{" +
                "magUserId=" + magUserId +
                ", magUserName='" + magUserName + '\'' +
                ", magUserPwd='" + magUserPwd + '\'' +
                '}';
    }
}
