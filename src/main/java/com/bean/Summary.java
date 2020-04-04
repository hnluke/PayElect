package com.bean;

import java.io.Serializable;

/**
 * 序列化pojo对象Summary
 */
public class Summary implements Serializable {
    public final static long serialVersionUID = 102L;

    private String channels;            // 渠道名称
    private Integer total;              // 总户数
    private Double totalAccount;        // 总金额

    public Integer getTotal() {
        return total;
    }

    public String getChannels() {
        return channels;
    }

    public void setChannels(String channels) {
        this.channels = channels;
    }

    public void setTotal(Integer total) {
        this.total = total;
    }

    public Double getTotalAccount() {
        return totalAccount;
    }

    public void setTotalAccount(Double totalAccount) {
        this.totalAccount = totalAccount;
    }

    @Override
    public String toString() {
        return "Summary{" +
                "channels='" + channels + '\'' +
                ", total=" + total +
                ", totalAccount=" + totalAccount +
                '}';
    }
}
