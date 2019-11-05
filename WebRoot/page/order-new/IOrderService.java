package com.yanyi.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.yanyi.entity.CostomerPasswordDto;
import com.yanyi.entity.CourseDto;
import com.yanyi.entity.CourseTypeDto;
import com.yanyi.entity.OrderDto;
import com.yanyi.entity.QuestionDto;

public interface IOrderService {


	List<OrderDto> queryAll(HashMap<String, String> map);

	List<OrderDto> queryisFianl(OrderDto order);
}
