package com.yanyi.dao;

import java.util.List;
import com.yanyi.entity.CourselistDto;
public interface CourselistDao {
	/**
	 * 查询课程列表
	 * @param course
	 * @return
	 */
	List<CourselistDto> queryAll(CourselistDto course);
	/**
	 * 删除
	 * @param ids
	 * @return
	 */
	int delCourseById(String ids);
	
	
	List<CourselistDto> queryCourse(CourselistDto course);
	/**
	 * 更新
	 * @param course
	 * @return
	 */
	int updateCourseById(CourselistDto course);
	/**
	 * 
	 * 添加课类
	 * @param course
	 * @return
	 */
	int addCourse(CourselistDto course);
  
}