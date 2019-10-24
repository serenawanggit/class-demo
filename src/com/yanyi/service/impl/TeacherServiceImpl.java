package com.yanyi.service.impl;


import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.yanyi.dao.TeacherDao;
import com.yanyi.entity.TeacherDto;
import com.yanyi.service.ITeacherService;
@Service
public class TeacherServiceImpl implements ITeacherService {

	

	@Resource
	public TeacherDao teacherMapper;
	
	
	@Override
	public List<TeacherDto> queryAll(TeacherDto teacher) {
		// TODO Auto-generated method stub
		return teacherMapper.queryAll(teacher);
	}
	@Override
	public List<TeacherDto> queryCourse(TeacherDto teacher) {
		// TODO Auto-generated method stub
		return teacherMapper.queryAll(teacher);
	}
	@Override
	public int delTeacherById(String ids) {
		// TODO Auto-generated method stub
		return teacherMapper.delTeacherById(ids);
	}
		@Override
	public int updateCourseById(TeacherDto teacher) {
		// TODO Auto-generated method stub
		return teacherMapper.updateCourseById(teacher);
	}

		@Override
		public int addCourse(TeacherDto teacher) {
			// TODO Auto-generated method stub
			return teacherMapper.addCourse(teacher);
		}

	
	
}
