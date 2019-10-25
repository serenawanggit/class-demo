package com.yanyi.dao;
import java.util.List;

import com.yanyi.entity.TeacherDto;



public interface TeacherDao {
	/**
     * 查询客户表
     * @return
     */
	List<TeacherDto> queryAll(TeacherDto teacher);
	/**
	 * 根据Id查询
	 * @param ids
	 * @return
	 */
	int GetIdQuery(String ids);
	
	/**
	 * 根据Id删除
	 * @param ids
	 * @return
	 */
	int delTeacherById(String ids);
	
	List<TeacherDto> queryCourse(TeacherDto teacher);
	/**
	 * 更新
	 * @param teacher
	 * @return
	 */
	int updateCourseById(TeacherDto teacher);
	/**
	 * 添加教师课程
	 * @param teacher
	 * @return
	 */
	int addCourse(TeacherDto teacher);	
}