package com.dw.mall.service;

import com.dw.mall.pojo.OrderMapping;
import com.dw.mall.pojo.Receiver;

public interface OrderService {

	void addOrder(OrderMapping order);

	Receiver selectReceiverByUserId(Long id);

	void addReceiver(Receiver receiver);

	void updateReceiver(Receiver receiver);

}
