package com.dao;

import com.bean.Users;

public interface UsersMapperDao {

    /**
     * 依据户号查找用户
     * @param  userNo 户号
     * @return
     */
    public Users queryUsersByUserNO(String userNo);

    /**
     * 插入用户信息
     * @param users  用户对象
     * @return
     */
    public boolean insertUser(Users users);

    /**
     * 更新用户信息
     * @param users  依据此用户对象的id属性
     * @return
     */
    public boolean updateUserById(Users users);

    /**
     * 删除用户
     * @param userId
     * @return
     */
    public boolean deleteUserById(Integer userId);
}
