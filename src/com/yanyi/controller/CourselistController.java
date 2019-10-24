package com.yanyi.controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yanyi.entity.CourselistDto;
import com.yanyi.service.ICourselistService;
import com.yanyi.util.JsonUtil;
import com.yanyi.util.PageTableResult;

@Controller
@RequestMapping("/courselist")
public class CourselistController {
	
	@Autowired
	private ICourselistService courseService;
	//查询教师所有信息
	@ResponseBody
	@RequestMapping("query")
	public String query(CourselistDto Course){
		PageTableResult result = new PageTableResult();
		 List<CourselistDto> list = courseService.queryAll(Course);
		 result.setData(list);
		 result.setCode(0);
		 return JsonUtil.object2Json(result);
	}
	
	//根据Id删除
		@ResponseBody
		@RequestMapping("/delCourseById")
		public String DelCourseById(String ids){
			return courseService.delCourseById(ids)>0 ? "{\"succes\":\"true\"}" : "{\"succes\":\"false\"}";
		}
		
		@ResponseBody
		@RequestMapping("/queryCourse")
		public String queryCourse(CourselistDto Course){
			PageTableResult result = new PageTableResult();
			 List<CourselistDto> list = courseService.queryCourse(Course);
			 result.setData(list);
			 result.setCode(0);
			 return JsonUtil.object2Json(result);
		}
		//查询教师所有信息
				@ResponseBody
				@RequestMapping("/updateCourseById")
				public String updateCourseById(CourselistDto Course){
					 return courseService.updateCourseById(Course)>0 ? "{\"succes\":\"true\"}" : "{\"succes\":\"false\"}";
				}
			//添加课程列
				@ResponseBody
				@RequestMapping("/addCourse")
				public String addCourse(CourselistDto Course){
					 return courseService.addCourse(Course)>0 ? "{\"succes\":\"true\"}" : "{\"succes\":\"false\"}";
				}
}
