package com.yanyi.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.ui.Model;

import com.yanyi.entity.CostomerDto;
import com.yanyi.entity.CostomerPasswordDto;
import com.yanyi.entity.CostomerPhoneDto;
import com.yanyi.entity.LoveTeacherDto;

public  interface LoveTeacherService {
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
