package com.yanyi.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.yanyi.entity.LoveDto;
import com.yanyi.util.JsonUtil;
import com.yanyi.util.PageTableResult;
import com.yanyi.service.LoveService;
@Controller
@RequestMapping("/Love")
public class LoveController {
	
	@Autowired
	private LoveService LoveService;
	//查询客户所有信息
	@ResponseBody
	@RequestMapping("/query")
	public String query(){
		PageTableResult result = new PageTableResult();
		 List<LoveDto> list = LoveService.queryAll(new LoveDto());
		 result.setData(list);
		 result.setCode(0);
		 return JsonUtil.object2Json(result);
	}
	
	//根据Id删除
	@ResponseBody
	@RequestMapping("/delLoveById")
	public String DelLoveById(String ids){
		return LoveService.delLoveById(ids)>0 ? "{\"succes\":\"true\"}" : "{\"succes\":\"false\"}";
	}
	
	//添加客户信息
		@ResponseBody		
		@RequestMapping("/addLove")
		public String addLove(LoveDto Love){
			return LoveService.addLove(Love)>0 ? "{\"succes\":\"true\"}" : "{\"succes\":\"false\"}";
		}
}
