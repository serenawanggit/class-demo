package com.yanyi.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yanyi.entity.CourseDto;
import com.yanyi.entity.CourseTypeDto;
import com.yanyi.service.CourseService;

@Controller
@RequestMapping("/home")
public class HomePageController {
	@Autowired
	private CourseService courseService;
	
	@RequestMapping("/index")
	public String index(Model mo){
		CourseDto dto = new CourseDto("轮播图", 4, 0);
		mo.addAttribute("lbList", courseService.queryCourse(dto));
		dto = new CourseDto("视频", 4, 0);
		mo.addAttribute("videoList", courseService.queryCourse(dto));
		dto = new CourseDto("大咖专区", 4, 0);
		mo.addAttribute("dkList", courseService.queryCourse(dto));
		mo.addAttribute("typeList", courseService.queryCourseType(new CourseTypeDto()));
		return "home-phone";
	}

	@RequestMapping("/courseAll")
	public String courseAll(Model mo){
		List<CourseTypeDto> queryCourseType = courseService.queryCourseType(new CourseTypeDto());
		mo.addAttribute("courseType", queryCourseType);
		return "course-all";
	}
	
	@ResponseBody
	@RequestMapping("/home/queryCourseTypeByParentIdToAll")
	public String queryCourseTypeByParentId(){
		return "";
	}

	@RequestMapping("/myCourse")
	public String myCourse(){
		return "course-my";
	}

	@RequestMapping("/myself")
	public String myself(){
		return "myself";
	}
	

}
