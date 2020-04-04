package com.bean;

import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

/**
 * 序列化pojo对象PayDetail
 */
public class PayDetail implements Serializable {
    public final static long serialVersionUID = 103L;

    private Integer payId;                      // 缴费详单id
    private Integer payUserId;                  // 缴费用户id
//    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date payDate;                       // 缴费日期
    private Integer payChannelId;               // 缴费渠道Id
    private Double payAccount;                  // 缴费金额
    private Integer payAreaId;                  // 缴费区域id
    private Area area;                          // 缴费区域对象
    private Channel channel;                    // 缴费渠道对象
    private Users users;                        // 缴费用户对象

    public PayDetail() {}

    public Integer getPayId() {
        return payId;
    }

    public void setPayId(Integer payId) {
        this.payId = payId;
    }

    public Integer getPayUserId() {
        return payUserId;
    }

    public void setPayUserId(Integer payUserId) {
        this.payUserId = payUserId;
    }

    public Date getPayDate() {
        return payDate;
    }

    public void setPayDate(Date payDate) {
        this.payDate = payDate;
    }

    public Integer getPayChannelId() {
        return payChannelId;
    }

    public void setPayChannelId(Integer payChannelId) {
        this.payChannelId = payChannelId;
    }

    public Integer getPayAreaId() {
        return payAreaId;
    }

    public void setPayAreaId(Integer payAreaId) {
        this.payAreaId = payAreaId;
    }

    public Area getArea() {
        return area;
    }

    public void setArea(Area area) {
        this.area = area;
    }

    public Channel getChannel() {
        return channel;
    }

    public void setChannel(Channel channel) {
        this.channel = channel;
    }

    public Double getPayAccount() {
        return payAccount;
    }

    public void setPayAccount(Double payAccount) {
        this.payAccount = payAccount;
    }

    public Users getUsers() {
        return users;
    }

    public void setUsers(Users users) {
        this.users = users;
    }

    @Override
    public String toString() {
        return "PayDetail{" +
                "payId=" + payId +
                ", payUserId='" + payUserId + '\'' +
                ", payDate=" + payDate +
                ", payChannelId=" + payChannelId +
                ", payAccount=" + payAccount +
                ", payAreaId=" + payAreaId +
                ", area=" + area +
                ", channel=" + channel +
                ", users=" + users +
                '}';
    }
}
