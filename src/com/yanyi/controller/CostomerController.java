package com.yanyi.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Objects;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yanyi.entity.CostomerDto;
import com.yanyi.entity.CostomerPasswordDto;
import com.yanyi.entity.CostomerPhoneDto;
import com.yanyi.service.ICostomerService;
import com.yanyi.util.JsonUtil;
import com.yanyi.util.PageTableResult;

@Controller
@RequestMapping("/costomer")
public class CostomerController {
	
	@Autowired
	private ICostomerService costomerService;
	//查询客户所有信息
	@ResponseBody
	@RequestMapping("query")
	public String query(){
		PageTableResult result = new PageTableResult();
		 List<CostomerDto> list = costomerService.queryAll(new HashMap<String, String>());
		 result.setData(list);
		 result.setCode(0);
		 return JsonUtil.object2Json(result);
	}
	//修改客户信息
	@ResponseBody
	@RequestMapping("/updateCostomerById")
	public String updateCostomerById(String value,String field , String id){
		CostomerDto Costomer = null;
		CostomerPasswordDto CostomerPassword = null;
		CostomerPhoneDto Costomerphone = null;
		if (field.equals("name")) {
			if(Objects.equals(field,"name")) Costomer =  new CostomerDto(Integer.parseInt(id),value);
			return costomerService.updateCostomerById(Costomer)>0 ? "{\"succes\":\"true\"}" : "{\"succes\":\"false\"}";
		}
		if (field.equals("password")) {
			if(Objects.equals(field,"password")) CostomerPassword =  new CostomerPasswordDto(Integer.parseInt(id),value);
			return costomerService.updateCostomerPsswordById(CostomerPassword)>0 ? "{\"succes\":\"true\"}" : "{\"succes\":\"false\"}";
		}
		if (field.equals("phone")) {
			if(Objects.equals(field,"phone")) Costomerphone =  new CostomerPhoneDto(Integer.parseInt(id),value);
			return costomerService.updateCostomerPhoneById(Costomerphone)>0 ? "{\"succes\":\"true\"}" : "{\"succes\":\"false\"}";
		}
		return null;
		
	}
	//根据Id删除
	@ResponseBody
	@RequestMapping("/delCostomerById")
	public String DelCostomerById(String ids){
		return costomerService.delCostomerById(ids)>0 ? "{\"succes\":\"true\"}" : "{\"succes\":\"false\"}";
	}
	
	//添加客户信息
		@ResponseBody		
		@RequestMapping("/addCostomer")
		public String addCostomer(CostomerDto costomer){
			return costomerService.addCostomer(costomer)>0 ? "{\"succes\":\"true\"}" : "{\"succes\":\"false\"}";
		}
}
