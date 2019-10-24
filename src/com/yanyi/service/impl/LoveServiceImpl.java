package com.yanyi.service.impl;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.yanyi.dao.CostomerDao;
import com.yanyi.dao.LoveDao;
import com.yanyi.entity.CostomerDto;
import com.yanyi.entity.CostomerPasswordDto;
import com.yanyi.entity.CostomerPhoneDto;
import com.yanyi.entity.LoveDto;
import com.yanyi.service.ICostomerService;
import com.yanyi.service.LoveService;
@Service
public class LoveServiceImpl implements LoveService {
	
	@Resource
	public LoveDao loveMapper;

	@Override
	public List<LoveDto> queryAll(LoveDto love) {
		// TODO Auto-generated method stub
		return loveMapper.queryAll(love);
	}

	@Override
	public int delLoveById(String ids) {
		// TODO Auto-generated method stub
		return loveMapper.delLoveById(ids);
	}

	@Override
	public int addLove(LoveDto love) {
		// TODO Auto-generated method stub
		return loveMapper.addLove(love);
	}
	
	

}
