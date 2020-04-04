package com.service;

import com.bean.*;

import java.util.List;

public interface IPayElecService {

    public boolean payElec(Users users, PayDetail payDetail);

    /**
     * 按照不同的条件查询电费
     * @param userNo        户号
     * @param userName      户主姓名
     * @param payDate       缴纳日期
     * @param payCannelId       资金渠道
     * @param payAreaId      所在区域
     * @return
     */
    public List<PayDetail> queryElec(String userNo, String userName,
                                     String payDate, Integer payCannelId,
                                     Integer payAreaId);

    /**
     * 汇总查询
     * @param payDate       缴费日期
     * @param areaName      所属片区
     * @param chnName       资金渠道
     * @return
     */
    public List<Summary> querySummay(String payDate, String areaName, String chnName);
}
