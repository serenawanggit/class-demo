package com.yanyi.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.ui.Model;

import com.yanyi.entity.CostomerDto;
import com.yanyi.entity.CostomerPasswordDto;
import com.yanyi.entity.CostomerPhoneDto;
import com.yanyi.entity.LoveDto;

public  interface LoveService {
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
	
	
	
}
