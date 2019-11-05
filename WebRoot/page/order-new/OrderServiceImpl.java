package com.yanyi.service.impl;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.yanyi.dao.OrderDao;
import com.yanyi.entity.OrderDto;
import com.yanyi.service.IOrderService;
@Service
public class OrderServiceImpl implements IOrderService {
	
	@Resource
	public OrderDao orderMapper;

	@Override
	public List<OrderDto> queryAll(HashMap<String, String> map) {
		// TODO Auto-generated method stub
		return orderMapper.queryAll(map);
	}

	@Override 
	public List<OrderDto> queryisFianl(OrderDto order) {
		// TODO Auto-generated method stub
		return orderMapper.queryisFianl(order);
	}
	
	
}
