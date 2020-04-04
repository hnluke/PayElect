package com.dao;

import com.bean.Channel;
import com.bean.PayDetail;

public interface PayDetailMapperDao {
    /**
     * 查询片区表(依据片区id)
     * @param payId 缴费明细id
     * @return
     */
    public Channel queryPayDetailById(Integer payId);

    /**
     * 插入片区记录
     * @param payDetail 缴费明细对象
     * @return
     */
    public boolean insertPayDetail(PayDetail payDetail);

    /**
     * 删除片区记录
     * @param payId 缴费明细id
     * @return
     */
    public boolean deletePayDetailById(Integer payId);

    /**
     * 更新片区记录(依据片区id)
     * @param payDetail 缴费明细对象
     * @return
     */
    public boolean updatePayDetailById(PayDetail payDetail);
}
