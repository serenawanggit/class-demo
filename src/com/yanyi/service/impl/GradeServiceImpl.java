package com.yanyi.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yanyi.dao.GradeDao;
import com.yanyi.entity.GradeDto;
import com.yanyi.service.GradeService;

@Service
public class GradeServiceImpl implements GradeService{
	@Autowired
	private GradeDao gradeDao;
	
	@Override
	public List<GradeDto> queryGrade(GradeDto dto) {
		return gradeDao.queryGradeByDto(dto);
	}

}
