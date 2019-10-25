package com.yanyi.dao;

import java.util.List;

import com.yanyi.entity.LoveTeacherDto;

public interface LoveTeacherDao {
    /**
     * 查询收藏表
     * @return
     */
	List<LoveTeacherDto> queryAll(LoveTeacherDto LoveTeacher);
	/**
	 * 修改客户姓名
	 * @param costomer 
	 * @return name
	 */
	
	int delLoveTeacherById(String ids);
	/**
	 * 添加客户信息
	 * @param costomer
	 * @return
	 */
	int addLoveTeacher(LoveTeacherDto LoveTeacher);
	
}