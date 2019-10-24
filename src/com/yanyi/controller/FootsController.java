package com.yanyi.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.yanyi.entity.FootsDto;
import com.yanyi.util.JsonUtil;
import com.yanyi.util.PageTableResult;
import com.yanyi.service.FootsService;
@Controller
@RequestMapping("/Foots")
public class FootsController {
	
	@Autowired
	private FootsService FootsService;
	//查询客户所有信息
	@ResponseBody
	@RequestMapping("/query")
	public String query(){
		PageTableResult result = new PageTableResult();
		 List<FootsDto> list = FootsService.queryAll(new FootsDto());
		 result.setData(list);
		 result.setCode(0);
		 return JsonUtil.object2Json(result);
	}
	
	//根据Id删除
	@ResponseBody
	@RequestMapping("/delFootsById")
	public String DelFootsById(String id){
		return FootsService.delFootsById(id)>0 ? "{\"succes\":\"true\"}" : "{\"succes\":\"false\"}";
	}
	
	//添加客户信息
		@ResponseBody		
		@RequestMapping("/addFoots")
		public String addFoots(FootsDto Foots){
			return FootsService.addFoots(Foots)>0 ? "{\"succes\":\"true\"}" : "{\"succes\":\"false\"}";
		}
}
