package com.dw.mall.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dw.mall.mapper.OrderItemsMapper;
import com.dw.mall.pojo.Order;
import com.dw.mall.pojo.OrderItems;
import com.dw.mall.pojo.OrderMapping;
import com.dw.mall.service.OrderItemsService;
@Service
public class OrderItemsServiceImpl implements OrderItemsService {
	@Autowired
	private OrderItemsMapper orderItemsMapper;

	@Override
	public void addOrderItems(OrderMapping order) {
		List<OrderItems> orderItemsList = order.getOrderItemsList();
		for (OrderItems orderItems : orderItemsList) {
			orderItems.setOrderId(order.getOrderId());
			orderItemsMapper.insertSelective(orderItems);
		}
	}

}
