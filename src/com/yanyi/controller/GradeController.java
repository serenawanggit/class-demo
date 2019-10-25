package com.yanyi.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yanyi.entity.GradeDto;
import com.yanyi.service.GradeService;
import com.yanyi.util.JsonUtil;
import com.yanyi.util.PageTableResult;

@Controller
@RequestMapping("/grade")
public class GradeController {
	@Autowired
	private GradeService gradeService;
	
	@ResponseBody
	@RequestMapping("queryGrade")
	public String queryGrade(GradeDto dto){
		PageTableResult result = new PageTableResult();
		result.setCode(0);
		result.setData(gradeService.queryGrade(dto));
		return JsonUtil.object2Json(result);
	}
	
}
