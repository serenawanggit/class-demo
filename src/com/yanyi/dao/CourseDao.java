package com.yanyi.dao;

import java.util.List;
import java.util.Map;

import com.yanyi.entity.CourseDto;
import com.yanyi.entity.CourseTypeDto;
import com.yanyi.entity.QuestionDto;

public interface CourseDao {
	
	List<CourseTypeDto> queryCourseType(CourseTypeDto dto);
	
	List<CourseTypeDto> queryCourseTypeByParentIdNotNull();
	
	int addCourseType(CourseTypeDto dto);
	
	int updateCourseTypeById(CourseTypeDto dto);
	
	int delCourseTypeById(String ids);

	int addCourse(CourseDto dto);
	
	List<CourseDto> queryCourse(CourseDto dto);

	int delCourseById(String ids);
	
	int updateCourseById(CourseDto dto);
	
	List<QuestionDto> queryCourseQuestion(QuestionDto dto);

	int addCourseQuestion(QuestionDto dto);
	
	int updateCourseQuestionById(QuestionDto dto);

	int delCourseQuestionById(String ids);

	List<CourseDto> queryCourseByOrder(Map<String, String> map);
	
}
