package com.yanyi.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yanyi.entity.CourselistDto;
import com.yanyi.entity.TeacherDto;
import com.yanyi.service.ITeacherService;
import com.yanyi.util.JsonUtil;
import com.yanyi.util.PageTableResult;

@Controller
@RequestMapping("/teacher")
public class TeacherController {
	
	@Autowired
	private ITeacherService teacherService;
	//查询教师所有信息
	@ResponseBody
	@RequestMapping("query")
	public String query(TeacherDto Teacher){
		PageTableResult result = new PageTableResult();
		 List<TeacherDto> list = teacherService.queryAll(Teacher);
		 result.setData(list);
		 result.setCode(0);
		 return JsonUtil.object2Json(result);
	}
	
	//查询教师所有信息
		@ResponseBody
		@RequestMapping("/queryCourse")
		public String queryCourse(TeacherDto Teacher){
			PageTableResult result = new PageTableResult();
			 List<TeacherDto> list = teacherService.queryCourse(Teacher);
			 result.setData(list);
			 result.setCode(0);
			 return JsonUtil.object2Json(result);
		}
	//根据Id删除
		@ResponseBody
		@RequestMapping("/delTeacherById")
		public String DelTeacherById(String ids){
			return teacherService.delTeacherById(ids)>0 ? "{\"succes\":\"true\"}" : "{\"succes\":\"false\"}";
		}

		@ResponseBody
		@RequestMapping("/updateCourseById")
		public String updateCourseById(TeacherDto Teacher){
			 return teacherService.updateCourseById(Teacher)>0 ? "{\"succes\":\"true\"}" : "{\"succes\":\"false\"}";
		}
		//添加教师课程
		@ResponseBody
		@RequestMapping("/addCourse")
		public String addCourse(TeacherDto Teacher){
			 return teacherService.addCourse(Teacher)>0 ? "{\"succes\":\"true\"}" : "{\"succes\":\"false\"}";
		}
}
