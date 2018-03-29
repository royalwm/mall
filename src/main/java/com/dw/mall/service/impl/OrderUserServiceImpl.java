package com.dw.mall.service.impl;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dw.mall.mapper.OrderUserMapper;
import com.dw.mall.pojo.OrderUser;
import com.dw.mall.service.OrderUserService;

@Service
public class OrderUserServiceImpl implements OrderUserService {
	@Autowired
	private OrderUserMapper orderUserMapper;

	@Override
	public void addOrderUser(OrderUser orderUser) {
		orderUser.setCreated(new Date());
		orderUser.setUpdated(new Date());
		orderUserMapper.insertSelective(orderUser);
	}

	@Override
	public void deleteByOrderId(String orderId) {
		orderUserMapper.deleteByPrimaryKey(orderId);
	}

}
