package com.yanyi.controller;

import java.util.List;
import java.util.Objects;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yanyi.entity.CourseDto;
import com.yanyi.entity.CourseTypeDto;
import com.yanyi.entity.CourselistDto;
import com.yanyi.entity.OrderDto;
import com.yanyi.service.CourseService;
import com.yanyi.service.ICourselistService;
import com.yanyi.util.JsonUtil;

@Controller
@RequestMapping("/home")
public class HomePageController {
	@Autowired
	private CourseService courseService;
	@Autowired
	private ICourselistService courselistService;
	
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
	@RequestMapping("/queryCourseTypeByParentIdToAll")
	public String queryCourseTypeByParentId(){
		return "";
	}

	@ResponseBody
	@RequestMapping("/myCourse")
	public String myCourse(OrderDto dto){
		return JsonUtil.object2Json(courseService.queryCourseByOrder(dto));
	}

	@RequestMapping("/myself")
	public String myself(){
		return "myself";
	}
	
	@RequestMapping("/toVideoView")
	public String toVideoView(Integer courseId, Model mo){
		mo.addAttribute("courseData", courseService.queryCourse(new CourseDto(courseId, null)));
		mo.addAttribute("courselistData", courselistService.queryCourseListByParam(new CourselistDto(null, Objects.toString(courseId))));
		return "myCourse/video_view";
	}
	

}
