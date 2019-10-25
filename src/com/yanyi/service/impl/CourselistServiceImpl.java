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
		private CourselistDao  courselistDao;

	@Override
	public List<CourselistDto> queryAll(CourselistDto course) {
		// TODO Auto-generated method stub
		return courselistDao.queryAll(course);
	}

	@Override
	public int delCourseById(String ids) {
		// TODO Auto-generated method stub
		return courselistDao.delCourseById(ids);
	}

	@Override
	public List<CourselistDto> queryCourse(CourselistDto course) {
		// TODO Auto-generated method stub
		return courselistDao.queryCourse(course);
	}

	@Override
	public int updateCourseById(CourselistDto course) {
		// TODO Auto-generated method stub
		return courselistDao.updateCourseById(course);
	}

	@Override
	public int addCourse(CourselistDto course) {
		// TODO Auto-generated method stub
		return courselistDao.addCourse(course);
	}

	@Override
	public List<CourselistDto> queryCourseListByParam(CourselistDto dto) {
		return courselistDao.queryCourseListByParam(dto);
	}

}
