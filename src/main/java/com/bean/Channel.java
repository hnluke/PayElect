package com.bean;

import java.io.Serializable;

/**
 * 序列化pojo对象Channel
 */
public class Channel implements Serializable {
    public final static long serialVersionUID = 101L;

    private Integer chnId;              // 缴费渠道id
    private String chnName;             // 渠道名称
    private Integer chnEnable = 0;      // 是否禁用

    public Channel() {}

    public Integer getChnId() {
        return chnId;
    }

    public void setChnId(Integer chnId) {
        this.chnId = chnId;
    }

    public String getChnName() {
        return chnName;
    }

    public void setChnName(String chnName) {
        this.chnName = chnName;
    }

    public Integer getChnEnable() {
        return chnEnable;
    }

    public void setChnEnable(Integer chnEnable) {
        this.chnEnable = chnEnable;
    }

    @Override
    public String toString() {
        return "Channel{" +
                "chnId=" + chnId +
                ", chnName='" + chnName + '\'' +
                ", chnEnable=" + chnEnable +
                '}';
    }
}
