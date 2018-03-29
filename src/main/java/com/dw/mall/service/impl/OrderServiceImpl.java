package com.dw.mall.service.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dw.mall.mapper.OrderItemsMapper;
import com.dw.mall.mapper.OrderMapper;
import com.dw.mall.mapper.ReceiverMapper;
import com.dw.mall.pojo.Order;
import com.dw.mall.pojo.OrderExample;
import com.dw.mall.pojo.OrderItems;
import com.dw.mall.pojo.OrderItemsExample;
import com.dw.mall.pojo.OrderMapping;
import com.dw.mall.pojo.Receiver;
import com.dw.mall.pojo.ReceiverExample;
import com.dw.mall.pojo.ReceiverExample.Criteria;
import com.dw.mall.service.OrderService;

@Service
public class OrderServiceImpl implements OrderService {
	@Autowired
	private OrderMapper orderMapper;
	@Autowired
	private ReceiverMapper receiverMapper;
	@Autowired
	private OrderItemsMapper orderItemsMapper;

	@Override
	public void addOrder(OrderMapping orderMapping) {
		Order order = (Order) orderMapping;
		order.setUpdateTime(new Date());
		order.setConsignTime(new Date());
		orderMapper.insertSelective(order);
	}

	@Override
	public Receiver selectReceiverByUserId(Long id) {
		ReceiverExample receiverExample = new ReceiverExample();
		Criteria createCriteria = receiverExample.createCriteria();
		createCriteria.andUserIdEqualTo(id.intValue());
		List<Receiver> listReceiver = receiverMapper.selectByExample(receiverExample);
		Receiver receiver = null;
		if (listReceiver.size() > 0) {
			receiver = listReceiver.get(0);
		}
		return receiver;
	}

	@Override
	public void addReceiver(Receiver receiver) {
		receiverMapper.insertSelective(receiver);
	}

	@Override
	public void updateReceiver(Receiver receiver) {
		ReceiverExample receiverExample = new ReceiverExample();
		Criteria createCriteria = receiverExample.createCriteria();
		createCriteria.andUserIdEqualTo(receiver.getUserId());
		receiverMapper.updateByExampleSelective(receiver, receiverExample);
	}

	@Override
	public List<List<OrderItems>> queryOrder(Long userId) {
		OrderExample orderExample = new OrderExample();
		com.dw.mall.pojo.OrderExample.Criteria createCriteria = orderExample.createCriteria();
		createCriteria.andUserIdEqualTo(userId);
		List<Order> listOrder = orderMapper.selectByExample(orderExample);
		List<List<OrderItems>> orderItemsList= new ArrayList<>();
		for (Order order : listOrder) {
			String orderId = order.getOrderId();
			OrderItemsExample orderItemsExample = new OrderItemsExample();
			com.dw.mall.pojo.OrderItemsExample.Criteria createCriteria2 = orderItemsExample.createCriteria();
			createCriteria2.andOrderIdEqualTo(orderId);
			ArrayList<OrderItems> orderitemsList= (ArrayList<OrderItems>) orderItemsMapper.selectByExample(orderItemsExample);
			orderItemsList.add(orderitemsList);
		}
		return orderItemsList;
	}

	@Override
	public void deleteByOrderId(String orderId) {
		orderMapper.deleteByPrimaryKey(orderId);
	}

}
