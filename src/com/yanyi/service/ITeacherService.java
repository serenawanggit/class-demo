package com.yanyi.service;
import java.util.List;
import com.yanyi.entity.TeacherDto;

public interface ITeacherService {
	/**
	 * 查询客户h
	 * @param teacher 
	 * @param 
	 * @return list
	 */
	List<TeacherDto> queryAll(TeacherDto teacher);
	
	
	List<TeacherDto> queryCourse(TeacherDto teacher);
	/**
	 * 根据Id删除
	 * @param ids
	 * @return
	 */
	int delTeacherById(String ids);
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
