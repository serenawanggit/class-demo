package com.yanyi.service;

import java.util.HashMap;
import java.util.List;
import com.yanyi.entity.OrderDto;

public interface IOrderService {

	List<OrderDto> queryAll(HashMap<String, String> map);

	List<OrderDto> queryOrder(OrderDto dto);
}
