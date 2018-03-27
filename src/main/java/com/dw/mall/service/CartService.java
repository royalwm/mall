package com.dw.mall.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

public interface CartService {

	int deleteCart(HttpServletRequest request, List<Long> itemIds);

}
