package com.yanyi.dao;

import java.util.List;

import com.yanyi.entity.FootsDto;

public interface FootsDao {
    /**
     * 查询收藏表
     * @return
     */
	List<FootsDto> queryAll(FootsDto Foots);
	/**
	 * 修改客户姓名
	 * @param costomer 
	 * @return name
	 */
	
	int delFootsById(String ids);
	/**
	 * 添加客户信息
	 * @param costomer
	 * @return
	 */
	int addFoots(FootsDto Foots);
	
}