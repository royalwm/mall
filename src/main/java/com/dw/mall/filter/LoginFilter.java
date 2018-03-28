package com.dw.mall.filter;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.dw.mall.config.RedisClient;

public class LoginFilter implements HandlerInterceptor {
	@Autowired
	private RedisClient redisClient;

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object obj,
			Exception exception) throws Exception {
	}

	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, ModelAndView arg3)
			throws Exception {

	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object arg2) throws Exception {
		String uri = request.getRequestURI();
		boolean mark=false;
		if (uri.contains("/cart")||uri.contains("/order")) {
			Cookie[] cookies = request.getCookies();
			for (Cookie cookie : cookies) {
				if ("token".equals(cookie.getName())) {
					String token = cookie.getValue();
					String string = redisClient.get(token);
					mark=true;
				}
			}
			if (mark) {
				return true;
			}
			String requestURI = request.getRequestURI();
			String itemId = requestURI.substring(requestURI.lastIndexOf("/")+1);
			if (uri.contains("/cart")) {
				if (StringUtils.isBlank(request.getParameter("num"))) {
					response.sendRedirect(request.getScheme()+"://"+request.getServerName()+":8082/login?redirect="+request.getScheme()+"://"+request.getServerName()+":8081/mall/cart/add");
					return false;
				}
				response.sendRedirect(request.getScheme()+"://"+request.getServerName()+":8082/login?redirect="+request.getScheme()+"://"+request.getServerName()+":8081/mall/cart/add/"+itemId+"?num="+request.getParameter("num"));
			}
			if (uri.contains("/order")) {
				response.sendRedirect(request.getScheme()+"://"+request.getServerName()+":8082/login?redirect="+request.getScheme()+"://"+request.getServerName()+":8081/mall/order/page");
			}
			return false;
		}
		return true;
	}

}
