package com.dw.mall.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.UUID;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dw.mall.config.RedisClient;
import com.dw.mall.constant.RestConstant;
import com.dw.mall.pojo.Items;
import com.dw.mall.pojo.OrderMapping;
import com.dw.mall.pojo.OrderUser;
import com.dw.mall.pojo.Receiver;
import com.dw.mall.pojo.User;
import com.dw.mall.service.OrderItemsService;
import com.dw.mall.service.OrderService;
import com.dw.mall.service.OrderUserService;
import com.dw.mall.service.UserService;
import com.dw.mall.utils.CookieUtils;
import com.dw.mall.utils.JSONUtil;

import net.sf.json.JSONArray;

@Controller
@RequestMapping("/order")
public class OrderController {
	@Autowired
	private UserService userService;
	@Autowired
	private RedisClient redisClient;
	@Autowired
	private OrderUserService orderUserService;
	@Autowired
	private OrderItemsService orderItemsService;
	@Autowired
	private OrderService orderService;

	@RequestMapping(value = "/create", method = RequestMethod.POST)
	public String createOrder(HttpServletRequest request, OrderMapping orderMapping) throws Exception {
		String cookie = CookieUtils.getCookie(request, "token");
		String string = redisClient.get(cookie);
		User user = (User) JSONUtil.jsonStringToBean(string, User.class);
		OrderUser orderUser = orderMapping.getOrderUser();
		String orderId = UUID.randomUUID().toString();
		orderMapping.setOrderId(orderId);
		orderMapping.setUserId(user.getId());
		orderUser.setOrderId(orderId);
		orderUserService.addOrderUser(orderUser);
		orderItemsService.addOrderItems(orderMapping);
		orderService.addOrder(orderMapping);
		request.setAttribute("basePath", request.getContextPath());
		request.setAttribute("payment", orderMapping.getPayment());
		request.setAttribute("orderId", orderId);
		request.setAttribute("orderUser", user.getUsername());
		return "orderSuccess";
	}

	@RequestMapping("/page")
	public String orderPage(HttpServletRequest request) throws Exception {
		request.setAttribute("basePath", request.getContextPath());
		Cookie[] cookies = request.getCookies();
		String userId = "";
		for (Cookie cookie : cookies) {
			if ("token".equals(cookie.getName())) {
				userId = cookie.getValue();
			}
		}
		User user = userService.getUserByToken(userId);
		String itemJson = redisClient.hget("cart", user.getUsername());
		JSONArray itemObj = JSONArray.fromObject(itemJson);
		ArrayList<Items> itemsList = (ArrayList<Items>) JSONArray.toCollection(itemObj, Items.class);
		request.setAttribute("cartList", itemsList);
		request.setAttribute("userId", user.getId());
		Receiver receiver = orderService.selectReceiverByUserId(user.getId());
		if (receiver != null) {
			request.setAttribute("receiver", receiver);
		}
		return "order";
	}

	@RequestMapping("/pay")
	public void generateOrder(HttpServletRequest request, HttpServletResponse response) throws IOException {
		/**
		 * 接收参数 创建订单
		 */
		String token = "dK6CcYQztqW1DeOR8DGGCS2bl59POKmn"; // 记得更改 http://codepay.fateqq.com 后台可设置
		String codepay_id = "40483";// 记得更改 http://codepay.fateqq.com 后台可获得
		String price = request.getParameter("price"); // 表单提交的价格
		String type = request.getParameter("type"); // 支付类型 1：支付宝 2：QQ钱包 3：微信
		String pay_id = request.getParameter("pay_id"); // 支付人的唯一标识
		String param = request.getParameter("param"); // 自定义一些参数 支付后返回
		String notify_url = "";// 通知地址
		String return_url = "";// 支付后同步跳转地址
		if (price == null) {
			price = "1";
		}
		// 参数有中文则需要URL编码
		String url = "http://codepay.fateqq.com:52888/creat_order?id=" + codepay_id + "&pay_id=" + pay_id + "&price="
				+ price + "&type=" + type + "&token=" + token + "&param=" + param + "&notify_url=" + notify_url
				+ "&return_url=" + return_url;
		response.sendRedirect(url);
	}

	@RequestMapping("/receiver")
	public String receiverPage(HttpServletRequest request) {
		request.setAttribute("basePath", request.getContextPath());
		String cookie = CookieUtils.getCookie(request, "token");
		User user = userService.getUserByToken(cookie);
		Receiver receiver = orderService.selectReceiverByUserId(user.getId());
		request.setAttribute("userId", user.getId());
		request.setAttribute("receiver", receiver);
		return "receiver";
	}

	@RequestMapping("/receiver/update")
	@ResponseBody
	public int updateReceiver(Receiver receiver) {
		Receiver receiver2 = orderService.selectReceiverByUserId(receiver.getUserId().longValue());
		if (receiver2 != null) {
			orderService.updateReceiver(receiver);
		} else {
			orderService.addReceiver(receiver);
		}
		return RestConstant.SUCCESS;
	}

	@RequestMapping("/receiver/query")
	@ResponseBody
	public Receiver queryReceiver(Receiver receiver) {
		return orderService.selectReceiverByUserId(receiver.getUserId().longValue());
	}
}
