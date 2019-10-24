package com.yanyi.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.yanyi.entity.LoveTeacherDto;
import com.yanyi.util.JsonUtil;
import com.yanyi.util.PageTableResult;
import com.yanyi.service.LoveTeacherService;
@Controller
@RequestMapping("/LoveTeacher")
public class LoveTeacherController {
	
	@Autowired
	private LoveTeacherService LoveTeacherService;
	//查询客户所有信息
	@ResponseBody
	@RequestMapping("/query")
	public String query(){
		PageTableResult result = new PageTableResult();
		 List<LoveTeacherDto> list = LoveTeacherService.queryAll(new LoveTeacherDto());
		 result.setData(list);
		 result.setCode(0);
		 return JsonUtil.object2Json(result);
	}
	
	//根据Id删除
	@ResponseBody
	@RequestMapping("/delLoveTeacherById")
	public String DelLoveTeacherById(String ids){
		return LoveTeacherService.delLoveTeacherById(ids)>0 ? "{\"succes\":\"true\"}" : "{\"succes\":\"false\"}";
	}
	
	//添加客户信息
		@ResponseBody		
		@RequestMapping("/addLoveTeacher")
		public String addLoveTeacher(LoveTeacherDto LoveTeacher){
			return LoveTeacherService.addLoveTeacher(LoveTeacher)>0 ? "{\"succes\":\"true\"}" : "{\"succes\":\"false\"}";
		}
}
