package com.dw.mall.pojo;

import java.util.List;

public class OrderMapping extends Order {
	private List<OrderItems> orderItemsList;

	private OrderUser orderUser;

	public OrderUser getOrderUser() {
		return orderUser;
	}

	public void setOrderUser(OrderUser orderUser) {
		this.orderUser = orderUser;
	}

	public List<OrderItems> getOrderItemsList() {
		return orderItemsList;
	}

	public void setOrderItemsList(List<OrderItems> orderItemsList) {
		this.orderItemsList = orderItemsList;
	}
}
