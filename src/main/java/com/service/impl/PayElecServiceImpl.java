package com.service.impl;

import com.bean.*;
import com.dao.*;
import com.service.IPayElecService;
import org.apache.ibatis.session.SqlSession;

import java.util.List;

public class PayElecServiceImpl implements IPayElecService {
    SqlSession sqlSession = null;
    AreaMapperDao areaMapperDao = null;
    ChannelMapperDao channelMapperDao = null;
    UsersMapperDao usersMapperDao = null;
    PayDetailMapperDao payDetailMapperDao = null;
    APCUnionMapperDao apcUnionMapperDao = null;

    public PayElecServiceImpl(SqlSession sqlSession) {
        this.sqlSession = sqlSession;
        areaMapperDao = sqlSession.getMapper(AreaMapperDao.class);
        channelMapperDao = sqlSession.getMapper(ChannelMapperDao.class);
        apcUnionMapperDao = sqlSession.getMapper(APCUnionMapperDao.class);
        usersMapperDao = sqlSession.getMapper(UsersMapperDao.class);
        payDetailMapperDao = sqlSession.getMapper(PayDetailMapperDao.class);
    }

    /**
     * 缴电费
     * @param users 用户对象
     * @param payDetail 缴纳明细对象
     * @return
     */
    @Override
    public boolean payElec(Users users, PayDetail payDetail){
        boolean flag = false;
        try {
            // 先确定用户数据有没有此用户，如果没有，则添加
            if (usersMapperDao.queryUsersByUserNO(users.getUserNo()) == null) {
                usersMapperDao.insertUser(users);
            }
            Integer id = users.getUserId();
            // 因为开启了Mybatis的自动主键回写功能，所以可以得到User对象的id属性
            payDetail.setPayUserId(users.getUserId());
            // 更新电费缴纳数据表
            payDetailMapperDao.insertPayDetail(payDetail);
            // 提交事务
            sqlSession.commit();
            flag = true;
        } catch (Exception e) {
            // 回滚事务
            sqlSession.rollback();
            e.printStackTrace();
        }
        return flag;
    }

    /**
     * 查询电费(定制查询)
     * @param userNo        户号
     * @param userName      户主姓名
     * @param payDate       缴纳日期
     * @param payChannelId  缴纳渠道
     * @param payAreaId      所在区域
     * @return
     */
    @Override
    public List<PayDetail> queryElec(String userNo, String userName,
                                     String payDate, Integer payChannelId,
                                     Integer payAreaId) {
        List<PayDetail> list = null;
        try {
            list = apcUnionMapperDao.queryAPCUnion(
                    userNo, userName, payDate, payChannelId, payAreaId);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    /**
     * 汇总查询
     * @param payDate       缴费日期
     * @param areaName      所属片区
     * @param chnName       资金渠道
     * @return
     */
    @Override
    public List<Summary> querySummay(String payDate, String areaName, String chnName) {
        List<Summary> list = null;
        try {
            list = apcUnionMapperDao.queryAPCSummary(payDate, areaName, chnName);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
}
