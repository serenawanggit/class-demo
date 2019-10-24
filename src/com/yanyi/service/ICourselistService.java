package com.yanyi.service;

import java.util.List;

import com.yanyi.entity.CourselistDto;

public interface ICourselistService {
	/**
	 * 查询课程列表
	 * @param hashMap 键值对 key(date) valeu(值)
	 * @return list
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
	 * 添加列
	 * @param course
	 * @return
	 */
	int addCourse(CourselistDto course);

}
