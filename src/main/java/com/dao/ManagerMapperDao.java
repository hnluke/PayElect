package com.dao;

import com.bean.Manager;

public interface ManagerMapperDao {
    public Manager findManagerByName(String magUserName);
}
