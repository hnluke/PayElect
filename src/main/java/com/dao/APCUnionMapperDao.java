package com.dao;

import com.bean.PayDetail;
import com.bean.Summary;
import org.apache.ibatis.annotations.Param;

import java.util.Date;
import java.util.List;

public interface APCUnionMapperDao {

    public List<PayDetail> queryAPCUnion(
            @Param("userNo") String userNo, @Param("userName") String userName,
            @Param("payDate") String payDate, @Param("payChannelId") Integer payChannelId,
            @Param("payAreaId") Integer payAreaId) throws Exception;

    public List<Summary> queryAPCSummary(
            @Param("payDate") String payDate,
            @Param("payAreaId") String areaName,
            @Param("payChannelId") String chnName) throws Exception;
}
