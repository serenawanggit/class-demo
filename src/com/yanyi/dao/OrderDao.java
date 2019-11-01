package com.yanyi.dao;

import java.util.List;
import java.util.Map;

import com.yanyi.entity.OrderDto;
public interface OrderDao {
	
	List<OrderDto> queryAll(Map<String, String> map);

	List<OrderDto> queryOrder(OrderDto dto);

	int addOrder(OrderDto dto);
}