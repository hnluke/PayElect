package com.bean;



import java.io.Serializable;
import java.util.Date;

/**
 * 序列化pojo对象Area
 */
public class Area implements Serializable {
    public final static long serialVersionUID = 100L;
    private Integer areaId;     // 所属片区
    private String areaName;    // 片区名称

    public Area() {}

    public Integer getAreaId() {
        return areaId;
    }

    public void setAreaId(Integer areaId) {
        this.areaId = areaId;
    }

    public String getAreaName() {
        return areaName;
    }

    public void setAreaName(String areaName) {
        this.areaName = areaName;
    }

    @Override
    public String toString() {
        return "Area{" +
                "areaId=" + areaId +
                ", areaName='" + areaName + '\'' +
                '}';
    }
}
