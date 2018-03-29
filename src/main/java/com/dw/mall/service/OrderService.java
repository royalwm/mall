package com.dw.mall.service;

import java.util.List;

import com.dw.mall.pojo.OrderItems;
import com.dw.mall.pojo.OrderMapping;
import com.dw.mall.pojo.Receiver;

public interface OrderService {

	void addOrder(OrderMapping order);

	Receiver selectReceiverByUserId(Long id);

	void addReceiver(Receiver receiver);

	void updateReceiver(Receiver receiver);

	List<List<OrderItems>> queryOrder(Long id);

	void deleteByOrderId(String orderId);

}
