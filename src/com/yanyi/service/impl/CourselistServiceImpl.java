package com.yanyi.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.yanyi.dao.CourselistDao;
import com.yanyi.entity.CourselistDto;
import com.yanyi.service.ICourselistService;
@Service
public class CourselistServiceImpl implements ICourselistService {
	
		@Resource
		private CourselistDao  costomerMapper;

	@Override
	public List<CourselistDto> queryAll(CourselistDto course) {
		// TODO Auto-generated method stub
		return costomerMapper.queryAll(course);
	}

	@Override
	public int delCourseById(String ids) {
		// TODO Auto-generated method stub
		return costomerMapper.delCourseById(ids);
	}

	@Override
	public List<CourselistDto> queryCourse(CourselistDto course) {
		// TODO Auto-generated method stub
		return costomerMapper.queryCourse(course);
	}

	@Override
	public int updateCourseById(CourselistDto course) {
		// TODO Auto-generated method stub
		return costomerMapper.updateCourseById(course);
	}

	@Override
	public int addCourse(CourselistDto course) {
		// TODO Auto-generated method stub
		return costomerMapper.addCourse(course);
	}

}
