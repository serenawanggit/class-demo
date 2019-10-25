package com.yanyi.dao;

import java.util.HashMap;
import java.util.List;

import com.yanyi.entity.CostomerDto;
import com.yanyi.entity.CostomerPasswordDto;
import com.yanyi.entity.CostomerPhoneDto;

public interface CostomerDao {
    /**
     * 查询客户表
     * @return
     */
	List<CostomerDto> queryAll(HashMap<String, String> map);
	/**
	 * 修改客户姓名
	 * @param costomer 
	 * @return name
	 */
	int updateCostomerById(CostomerDto costomer);
	/**
	 * 修改客户密码
	 * @param costomer 
	 * @return password
	 */
	int updateCostomerPsswordById(CostomerPasswordDto costomer);
	/**
	 * 修改手机号码
	 * @param costomer 
	 * @return phone
	 */
	int updateCostomerPhoneById(CostomerPhoneDto costomer);
	
	/**
	 * 根据Ids删除
	 * @param ids
	 * @return
	 */
	int delCostomerById(String ids);
	/**
	 * 添加客户信息
	 * @param costomer
	 * @return
	 */
	int addCostomer(CostomerDto costomer);
	
}