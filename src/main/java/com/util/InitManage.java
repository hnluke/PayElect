package com.util;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.IOException;
import java.io.InputStream;

public class InitManage {
    private static String resource = "mybatis-config.xml";
    private static InputStream inputStream = null;
    private static SqlSessionFactory sqlSessionFactory = null;

    /**
     * 获取SqlSession
     * @return
     */
    public static SqlSession getSqlSession() {
        SqlSession sqlSession = null;
        try {
            inputStream = Resources.getResourceAsStream(resource);
            sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
            // 获取sqlSession
            sqlSession = sqlSessionFactory.openSession();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return sqlSession;
    }
}
