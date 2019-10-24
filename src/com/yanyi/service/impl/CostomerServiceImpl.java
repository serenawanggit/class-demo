package com.yanyi.service.impl;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.yanyi.dao.CostomerDao;
import com.yanyi.entity.CostomerDto;
import com.yanyi.entity.CostomerPasswordDto;
import com.yanyi.entity.CostomerPhoneDto;
import com.yanyi.service.ICostomerService;
@Service
public class CostomerServiceImpl implements ICostomerService {
	
	@Resource
	public CostomerDao costomerMapper;
	//修改客户姓名
	@Override
	public int updateCostomerById(CostomerDto costomer) {
		return costomerMapper.updateCostomerById(costomer);
	}
	//修改客户密码
	@Override
	public int updateCostomerPsswordById(CostomerPasswordDto costomer) {
		return costomerMapper.updateCostomerPsswordById(costomer);
	}
	//修改手机号码
	@Override
	public int updateCostomerPhoneById(CostomerPhoneDto costomer) {
		return costomerMapper.updateCostomerPhoneById(costomer);
	}
	//查询客户表
	@Override
	public List<CostomerDto> queryAll(HashMap<String, String> map) {
		 
		return costomerMapper.queryAll(map);
	}
	/**
	 * 根据Ids删除
	 * @param ids
	 * @return
	 */
	@Override
	public int delCostomerById(String ids) {
		// TODO Auto-generated method stub
		return costomerMapper.delCostomerById(ids);
	}
	//添加客户信息
	@Override
	public int addCostomer(CostomerDto costomer) {
		// TODO Auto-generated method stub
		return costomerMapper.addCostomer(costomer);
	}

}
