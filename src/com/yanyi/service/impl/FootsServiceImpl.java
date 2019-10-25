package com.yanyi.service.impl;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.yanyi.dao.CostomerDao;
import com.yanyi.dao.FootsDao;
import com.yanyi.entity.CostomerDto;
import com.yanyi.entity.CostomerPasswordDto;
import com.yanyi.entity.CostomerPhoneDto;
import com.yanyi.entity.FootsDto;
import com.yanyi.service.ICostomerService;
import com.yanyi.service.FootsService;
@Service
public class FootsServiceImpl implements FootsService {
	
	@Resource
	public FootsDao FootsMapper;

	@Override
	public List<FootsDto> queryAll(FootsDto Foots) {
		// TODO Auto-generated method stub
		return FootsMapper.queryAll(Foots);
	}

	@Override
	public int delFootsById(String ids) {
		// TODO Auto-generated method stub
		return FootsMapper.delFootsById(ids);
	}

	@Override
	public int addFoots(FootsDto Foots) {
		// TODO Auto-generated method stub
		return FootsMapper.addFoots(Foots);
	}
	
	

}
