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
		return orderMapper.queryAll(map);
	}

	@Override
	public List<OrderDto> queryOrder(OrderDto dto) {
		return orderMapper.queryOrder(dto);
	}

	@Override
	public int addOrder(OrderDto dto) {
		return orderMapper.addOrder(dto);
	}

	
	
}
