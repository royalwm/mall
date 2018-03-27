package com.dw.mall.service.impl;

import java.util.Iterator;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dw.mall.config.RedisClient;
import com.dw.mall.constant.RestConstant;
import com.dw.mall.pojo.Items;
import com.dw.mall.service.CartService;

import net.sf.json.JSONArray;

@Service
public class CartServiceImpl implements CartService {
	@Autowired
	private RedisClient redisClient;

	@Override
	public int deleteCart(HttpServletRequest request,List<Long> itemIds) {
		String userName="";
		Cookie[] cookies = request.getCookies();
		for (Cookie cookie : cookies) {
			if ("token".equals(cookie.getName())) {
				userName=cookie.getValue();
				//TODO
				break;
			}
		}
		String hget = null;
		try {
			hget = redisClient.hget("cart", userName);
		} catch (Exception e1) {
			e1.printStackTrace();
		}
		JSONArray fromObject = JSONArray.fromObject(hget);
		List<Items> itemsList = (List<Items>) JSONArray.toCollection(fromObject,Items.class);
		Iterator<Items> iterator = itemsList.iterator();
		for (Long itemsId : itemIds) {
			while (iterator.hasNext()) {
				Items items = (Items) iterator.next();
				if (items.getId()==itemsId) {
					iterator.remove();
				}
			}
		}
		try {
			redisClient.hset("cart", userName, JSONArray.fromObject(itemsList).toString());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return RestConstant.SUCCESS;
	}

}
