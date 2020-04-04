package com.dao;

import com.bean.Area;
import com.bean.Channel;

public interface ChannelMapperDao {
    /**
     * 查询片区表(依据片区id)
     * @param channelId 渠道id
     * @return
     */
    public Channel queryChannelById(Integer channelId) throws Exception;

    /**
     * 插入片区记录
     * @param channel 渠道对象
     * @return
     */
    public boolean insertChannel(Channel channel) throws Exception;

    /**
     * 删除片区记录
     * @param channelId 片区id
     * @return
     */
    public boolean deleteChannelById(Integer channelId) throws Exception;

    /**
     * 更新片区记录(依据片区id)
     * @param channel 渠道对象
     * @return
     */
    public boolean updateChannelById(Channel channel) throws Exception;
}
