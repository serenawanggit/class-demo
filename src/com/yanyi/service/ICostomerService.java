package com.yanyi.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.ui.Model;

import com.yanyi.entity.CostomerDto;
import com.yanyi.entity.CostomerPasswordDto;
import com.yanyi.entity.CostomerPhoneDto;

public  interface ICostomerService {
	/**
	 * 查询客户h
	 * @param hashMap 键值对 key(date) valeu(值)
	 * @return list
	 */
	List<CostomerDto> queryAll(HashMap<String, String> map);
	
	/**
	 * 修改姓名
	 * @param costomer
	 * @return
	 */
	int updateCostomerById(CostomerDto costomer);
	/**
	 * 修改密码
	 * @param costomer
	 * @return
	 */
	int updateCostomerPsswordById(CostomerPasswordDto costomer);
	/**
	 * 修改手机号码
	 * @param costomer
	 * @return
	 */
	int updateCostomerPhoneById(CostomerPhoneDto costomer);
	/**
	 * 根据Ids删除
	 * @param ids
	 * @return
	 */
	int delCostomerById(String ids);
	
	/**
	 * 添加客户
	 * @param costomer
	 * @return
	 */
	int addCostomer(CostomerDto costomer);
	
	
}
