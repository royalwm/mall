package com.dw.mall.service;

import com.dw.mall.pojo.OrderMapping;

public interface OrderItemsService {

	void addOrderItems(OrderMapping order);

	void deleteByOrderId(String orderId);

}
