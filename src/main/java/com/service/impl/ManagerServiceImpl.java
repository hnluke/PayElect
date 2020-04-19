package com.service.impl;

import com.bean.Manager;
import com.dao.ManagerMapperDao;
import com.service.IManagerService;
import org.apache.ibatis.session.SqlSession;

public class ManagerServiceImpl implements IManagerService {
    SqlSession sqlSession = null;
    ManagerMapperDao managerMapperDao = null;

    public ManagerServiceImpl(SqlSession sqlSession) {
        this.sqlSession = sqlSession;
        managerMapperDao = sqlSession.getMapper(ManagerMapperDao.class);

    }
    @Override
    public boolean verify(String magUserName, String magUserPwd) {
        boolean flag = false;
        Manager manager = managerMapperDao.findManagerByName(magUserName);
        if(manager != null) {
            if(magUserPwd.equals(manager.getMagUserPwd())) {
                flag = true;
            }
        }
        return flag;
    }
}
