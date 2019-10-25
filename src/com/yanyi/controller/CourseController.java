package com.yanyi.controller;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.yanyi.entity.CourseDto;
import com.yanyi.entity.CourseTypeDto;
import com.yanyi.entity.QuestionDto;
import com.yanyi.service.CourseService;
import com.yanyi.util.JsonUtil;
import com.yanyi.util.PageTableResult;

@Controller
@RequestMapping("/course")
public class CourseController {
	@Autowired
	private CourseService courseService;
	
	@ResponseBody
	@RequestMapping("queryCourseType")
	public String queryCourseType(CourseTypeDto dto, Integer limit, Integer page){
		PageTableResult result = new PageTableResult();
		List<CourseTypeDto> queryCourseType = courseService.queryCourseType(dto);
		result.setData(queryCourseType);
		result.setCode(0);
		return JsonUtil.object2Json(result);
	}

	@ResponseBody
	@RequestMapping("queryCourseTypeByParentIdNotNull")
	public String queryCourseTypeByParentIdNotNull(){
		return JsonUtil.object2Json(courseService.queryCourseTypeByParentIdNotNull());
	}
	
	@ResponseBody
	@RequestMapping("/addCourseType")
	public String addCourseType(CourseTypeDto dto){
		return courseService.addCourseType(dto)>0 ? "{\"succes\":\"true\"}" : "{\"succes\":\"false\"}";
	}
	
	@ResponseBody
	@RequestMapping("/updateCourseTypeById")
	public String updateCourseTypeById(String value,String field, String id){
		CourseTypeDto dto = null;
		if(Objects.equals(field, "name")) dto = new CourseTypeDto(Integer.parseInt(id), value);
		if(Objects.equals(field, "isFlag")) dto = new CourseTypeDto(Integer.parseInt(id), Integer.parseInt(value));
		return courseService.updateCourseTypeById(dto)>0 ? "{\"succes\":\"true\"}" : "{\"succes\":\"false\"}";
	}
	
	@ResponseBody
	@RequestMapping("/delCourseTypeById")
	public String delCourseTypeById(String ids){
		return courseService.delCourseTypeById(ids)>0 ? "{\"succes\":\"true\"}" : "{\"succes\":\"false\"}";
	}
	
	@ResponseBody
	@RequestMapping("/addCourse")
	public String addCourse(CourseDto dto){
		return courseService.addCourse(dto)>0 ? "{\"succes\":\"true\"}" : "{\"succes\":\"false\"}";
	}
	
	@ResponseBody
	@RequestMapping("/queryCourse")
	public String queryCourse(CourseDto dto, Integer limit, Integer page){
		PageTableResult result = new PageTableResult();
		dto.setPageSize(limit);
		dto.setTotalCount((page-1)*limit);
		List<CourseDto> queryCourse = courseService.queryCourse(dto);
		result.setData(queryCourse);
		result.setCode(0);
		return JsonUtil.object2Json(result);
	}
	
	@ResponseBody
	@RequestMapping("/delCourseById")
	public String delCourseById(String ids){
		return courseService.delCourseById(ids)>0 ? "{\"succes\":\"true\"}" : "{\"succes\":\"false\"}";
	}

	@ResponseBody
	@RequestMapping("/updateCourseByIdToEdit")
	public String updateCourseByIdToEdit(String value,String field, String id){
		CourseDto dto = new CourseDto();
		dto.setId(Integer.parseInt(id));
		if(Objects.equals(field, "name")) dto.setName(value);
		if(Objects.equals(field, "price")) dto.setPrice(Double.parseDouble(value));
		if(Objects.equals(field, "isFlag")) dto.setIsFlag(Integer.parseInt(value));
		if(Objects.equals(field, "remark")) dto.setRemark(value);
		return courseService.updateCourseById(dto)>0 ? "{\"succes\":\"true\"}" : "{\"succes\":\"false\"}";
	}
	
	@ResponseBody
	@RequestMapping("/updateCourseById")
	public String updateCourseById(CourseDto dto){
		return courseService.updateCourseById(dto)>0 ? "{\"succes\":\"true\"}" : "{\"succes\":\"false\"}";
	}
	
	@ResponseBody
	@RequestMapping("/queryCourseQuestion")
	public String queryCourseQuestion(QuestionDto dto, Integer limit, Integer page){
		PageTableResult result = new PageTableResult();
		List<QuestionDto> queryCourseQuestion = courseService.queryCourseQuestion(dto);
		result.setData(queryCourseQuestion);
		result.setCode(0);
		return JsonUtil.object2Json(result);
	}

	@ResponseBody
	@RequestMapping("/addCourseQuestion")
	public String addCourseQuestion(QuestionDto dto){
		return courseService.addCourseQuestion(dto)>0 ? "{\"succes\":\"true\"}" : "{\"succes\":\"false\"}";
	}
	
	@ResponseBody
	@RequestMapping("/delCourseQuestionById")
	public String delCourseQuestionById(String ids){
		return courseService.delCourseQuestionById(ids)>0 ? "{\"succes\":\"true\"}" : "{\"succes\":\"false\"}";
	}

	@ResponseBody
	@RequestMapping("/updateCourseQuestionByIdToEdit")
	public String updateCourseQuestionByIdToEdit(String value,String field, String id){
		QuestionDto dto = new QuestionDto();
		dto.setId(Integer.parseInt(id));
		if(Objects.equals(field, "problem")) dto.setProblem(value);
		if(Objects.equals(field, "options")) dto.setOptions(value);
		if(Objects.equals(field, "answer")) dto.setAnswer(value);
		return courseService.updateCourseQuestionById(dto)>0 ? "{\"succes\":\"true\"}" : "{\"succes\":\"false\"}";
	}
	
	@ResponseBody
	@RequestMapping("/updateCourseQuestionById")
	public String updateCourseQuestionById(QuestionDto dto){
		return courseService.updateCourseQuestionById(dto)>0 ? "{\"succes\":\"true\"}" : "{\"succes\":\"false\"}";
	}
	
	@ResponseBody
	@RequestMapping("/uploadFile")
	public String uploadFile(@RequestParam("file") CommonsMultipartFile file, HttpServletRequest request) throws IllegalStateException, IOException{
        PageTableResult result = new PageTableResult();
		result.setCode(0);
		result.setMsg("上传成功！");
		String realPath = request.getSession().getServletContext().getRealPath("/");  
		String filename = file.getOriginalFilename();
		String path=new Date().getTime()+filename.substring(filename.indexOf("."),filename.length());
        File newFile = new File(realPath + "uploadFiles/" + path);
        file.transferTo(newFile);
        Map<String, String> map = new HashMap<String, String>();
        map.put("src", path);
        result.setUploadData(map);;
        return JsonUtil.object2Json(result);
	}
}
