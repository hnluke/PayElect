package com.dao;

import com.bean.Area;

public interface AreaMapperDao {
    /**
     * 查询片区表(依据片区id)
     * @param areaId 片区id
     * @return
     */
    public Area queryAreaById(Integer areaId) throws Exception;

    /**
     * 插入片区记录
     * @param area 片区对象
     * @return
     */
    public boolean insertArea(Area area) throws Exception;

    /**
     * 删除片区记录
     * @param areaId 片区id
     * @return
     */
    public boolean deleteAreaById(Integer areaId) throws Exception;

    /**
     * 更新片区记录(依据片区id)
     * @param areaId 片区id
     * @return
     */
    public boolean updateAreaById(Integer areaId, String areaName) throws Exception;
}
