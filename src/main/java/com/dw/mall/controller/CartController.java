package com.dw.mall.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dw.mall.config.RedisClient;
import com.dw.mall.constant.RestConstant;
import com.dw.mall.pojo.Items;
import com.dw.mall.pojo.User;
import com.dw.mall.service.CartService;
import com.dw.mall.service.ItemsService;
import com.dw.mall.service.UserService;

import net.sf.json.JSONArray;

@Controller
@RequestMapping("/cart")
public class CartController {
	@Autowired
	private ItemsService itemsService;
	@Autowired
	private RedisClient redisClient;
	@Autowired
	private UserService userService;
	@Autowired
	private CartService cartService;

	@RequestMapping("/delete/{itemIds}")
	@ResponseBody
	public int delete(HttpServletRequest request,@PathVariable("itemIds") List<Long> itemIds) {
		cartService.deleteCart(request,itemIds);
		return RestConstant.SUCCESS;
	}

	@RequestMapping("/add/{itemId}")
	public String jumpToCart(@PathVariable("itemId") Long itemId, HttpServletRequest request, Integer num,
			ModelMap model) throws Exception {
		model.addAttribute("basePath", request.getContextPath());
		Items items = itemsService.getItemById(itemId);
		Cookie[] cookies = request.getCookies();
		String userId = "";
		for (Cookie cookie : cookies) {
			if ("token".equals(cookie.getName())) {
				userId = cookie.getValue();
			}
		}
		User user = userService.getUserByToken(userId);
		Boolean hexists = redisClient.hexists("cart", user.getUsername());
		boolean mark = false;
		ArrayList<Items> itemsList = null;
		if (hexists) {
			String itemJson = redisClient.hget("cart", user.getUsername());
			JSONArray itemObj = JSONArray.fromObject(itemJson);
			itemsList = (ArrayList<Items>) JSONArray.toCollection(itemObj, Items.class);
		} else {
			itemsList = new ArrayList<>();
		}
		if (itemsList.size() > 0) {
			for (Items items2 : itemsList) {
				if (items2.getId().longValue() == itemId) {
					Integer oldNum = items2.getNum();
					num = oldNum + num;
					items2.setNum(num);
					mark = true;
					break;
				}
			}
		}
		if (!mark) {
			items.setNum(num);
			itemsList.add(items);
		}
		JSONArray itemObj = JSONArray.fromObject(itemsList);
		redisClient.hset("cart", user.getUsername(), itemObj.toString());
		model.addAttribute("cartList", itemsList);
		return "cart";
	}
}
