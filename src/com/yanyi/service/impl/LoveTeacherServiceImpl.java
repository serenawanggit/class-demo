package com.yanyi.service.impl;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.yanyi.dao.CostomerDao;
import com.yanyi.dao.LoveTeacherDao;
import com.yanyi.entity.CostomerDto;
import com.yanyi.entity.CostomerPasswordDto;
import com.yanyi.entity.CostomerPhoneDto;
import com.yanyi.entity.LoveTeacherDto;
import com.yanyi.service.ICostomerService;
import com.yanyi.service.LoveTeacherService;
@Service
public class LoveTeacherServiceImpl implements LoveTeacherService {
	
	@Resource
	public LoveTeacherDao LoveTeacherMapper;

	@Override
	public List<LoveTeacherDto> queryAll(LoveTeacherDto LoveTeacher) {
		// TODO Auto-generated method stub
		return LoveTeacherMapper.queryAll(LoveTeacher);
	}

	@Override
	public int delLoveTeacherById(String ids) {
		// TODO Auto-generated method stub
		return LoveTeacherMapper.delLoveTeacherById(ids);
	}

	@Override
	public int addLoveTeacher(LoveTeacherDto LoveTeacher) {
		// TODO Auto-generated method stub
		return LoveTeacherMapper.addLoveTeacher(LoveTeacher);
	}
	
	

}
