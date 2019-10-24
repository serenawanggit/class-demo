package com.yanyi.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yanyi.dao.CourseDao;
import com.yanyi.entity.CourseDto;
import com.yanyi.entity.CourseTypeDto;
import com.yanyi.entity.QuestionDto;
import com.yanyi.service.CourseService;

@Service
public class CourseServiceImpl implements CourseService{
	@Autowired
	private CourseDao courseDao;

	@Override
	public List<CourseTypeDto> queryCourseType(CourseTypeDto dto) {
		return courseDao.queryCourseType(dto);
	}

	@Override
	public List<CourseTypeDto> queryCourseTypeByParentIdNotNull() {
		return courseDao.queryCourseTypeByParentIdNotNull();
	}

	@Override
	public int addCourseType(CourseTypeDto dto) {
		return courseDao.addCourseType(dto);
	}

	@Override
	public int updateCourseTypeById(CourseTypeDto dto) {
		return courseDao.updateCourseTypeById(dto);
	}

	@Override
	public int delCourseTypeById(String ids) {
		return courseDao.delCourseTypeById(ids);
	}
	
	@Override
	public int addCourse(CourseDto dto) {
		return courseDao.addCourse(dto);
	}

	@Override
	public List<CourseDto> queryCourse(CourseDto dto) {
		return courseDao.queryCourse(dto);
	}

	@Override
	public int delCourseById(String ids) {
		return courseDao.delCourseById(ids);
	}

	@Override
	public int updateCourseById(CourseDto dto) {
		return courseDao.updateCourseById(dto);
	}

	@Override
	public List<QuestionDto> queryCourseQuestion(QuestionDto dto) {
		return courseDao.queryCourseQuestion(dto);
	}

	@Override
	public int addCourseQuestion(QuestionDto dto) {
		return courseDao.addCourseQuestion(dto);
	}

	@Override
	public int updateCourseQuestionById(QuestionDto dto) {
		return courseDao.updateCourseQuestionById(dto);
	}

	@Override
	public int delCourseQuestionById(String ids) {
		return courseDao.delCourseQuestionById(ids);
	}

	@Override
	public List<CourseDto> queryCourseByOrder(Map<String, String> map) {
		return null;
	}

}
