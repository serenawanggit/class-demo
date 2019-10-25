package com.yanyi.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yanyi.entity.OrderDto;
import com.yanyi.service.IOrderService;
import com.yanyi.util.JsonUtil;
import com.yanyi.util.PageTableResult;

@Controller
@RequestMapping("/order")
public class OrderController {
	
	@Autowired
	private IOrderService orderService;
	//��ѯ�ͻ���Ϣ
	
	@ResponseBody
	@RequestMapping("query")
	public String query(){
		PageTableResult result = new PageTableResult();
		 List<OrderDto> list = orderService.queryAll(new HashMap<String, String>());
		 result.setData(list);
		 result.setCode(0);
		 return JsonUtil.object2Json(result);
		
	}

}
