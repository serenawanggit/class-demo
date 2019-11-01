package com.yanyi.dao;

import java.util.List;

import com.yanyi.entity.LoveDto;

public interface LoveDao {
    /**
     * 查询收藏表
     * @return
     */
	List<LoveDto> queryAll(LoveDto love);
	/**
	 * 修改客户姓名
	 * @param costomer 
	 * @return name
	 */
	
	int delLoveById(String ids);
	/**
	 * 添加客户信息
	 * @param costomer
	 * @return
	 */
	int addLove(LoveDto love);

	int delLoveByParam(LoveDto dto);
	
}