package com.bean;

import java.io.Serializable;

/**
 * 序列化pojo对象Users
 */
public class Users implements Serializable {
    public final static long serialVersionUID = 104L;

    private Integer userId;     // 用户id
    private String userNo;      // 户号
    private String userName;    // 户主姓名

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getUserNo() {
        return userNo;
    }

    public void setUserNo(String userNo) {
        this.userNo = userNo;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    @Override
    public String toString() {
        return "Users{" +
                "userId=" + userId +
                ", userNo='" + userNo + '\'' +
                ", userName='" + userName + '\'' +
                '}';
    }
}
