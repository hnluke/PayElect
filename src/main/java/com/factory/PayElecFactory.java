package com.factory;

import com.service.impl.ManagerServiceImpl;
import com.service.impl.PayElecServiceImpl;
import com.util.InitManage;
import org.apache.ibatis.session.SqlSession;

public class PayElecFactory {
    //static SqlSession sqlSession = InitManage.getSqlSession();
    public static PayElecServiceImpl getPayElecServiceImpl() {
        SqlSession sqlSession = InitManage.getSqlSession();

        return new PayElecServiceImpl(sqlSession);
    }

    public static ManagerServiceImpl getManagerServiceImpl() {
        SqlSession sqlSession = InitManage.getSqlSession();

        return new ManagerServiceImpl(sqlSession);
    }


}
