package com.dw.mall.filter;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.dw.mall.config.RedisClient;
import com.dw.mall.constant.RestConstant;
import com.dw.mall.pojo.User;
import com.dw.mall.utils.JSONUtil;

public class AdminFilter implements HandlerInterceptor {
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
		if (uri.contains("/manager")) {
			Cookie[] cookies = request.getCookies();
			for (Cookie cookie : cookies) {
				if ("token".equals(cookie.getName())) {
					String token = cookie.getValue();
					String string = redisClient.get(token);
					User user = (User) JSONUtil.jsonStringToBean(string, User.class);
					if (!RestConstant.Permission.NORMAL.equals(user.getPermission())) {
						String username = request.getParameter("username");
						if (!user.getUsername().equals(username)) {
							response.sendRedirect(request.getContextPath());
							return false;
						}
						return true;
					}
				}
			}
			response.sendRedirect(request.getContextPath());
			return false;
		}
		return true;
	}
}