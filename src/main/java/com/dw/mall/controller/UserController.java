package com.dw.mall.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dw.mall.config.RedisClient;
import com.dw.mall.constant.RestConstant;
import com.dw.mall.pojo.User;
import com.dw.mall.service.UserService;
import com.dw.mall.utils.CookieUtils;
import com.dw.mall.utils.EasyuiPagination;
import com.dw.mall.utils.JSONUtil;

@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	private UserService userService;
	@Autowired
	private RedisClient redisClient;

	@RequestMapping("/list")
	@ResponseBody
	public EasyuiPagination userList(HttpServletRequest request, HttpServletResponse response,Integer page, Integer rows) throws Exception {
		return userService.userList(page, rows);
	}

	@RequestMapping(value = "/editPage", method = RequestMethod.GET)
	public String editPage() {
		return "userEdit";
	}

	@RequestMapping(value = "/addPage", method = RequestMethod.GET)
	public String addPage() {
		return "userAdd";
	}

	@RequestMapping(value = "/update", method = RequestMethod.POST)
	@ResponseBody
	public int update(@RequestBody User user) {
		userService.update(user);
		return RestConstant.SUCCESS;
	}

	@RequestMapping(value = "/add", method = RequestMethod.POST)
	@ResponseBody
	public int add(@RequestBody User user) {
		int mark = userService.add(user);
		if (mark == 1) {
			return RestConstant.SUCCESS;
		}
		return RestConstant.FAILED;
	}

	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	@ResponseBody
	public int delete(@RequestParam("ids") List<Long> ids) {
		int mark = userService.delete(ids);
		if (mark == 1) {
			return RestConstant.SUCCESS;
		}
		return RestConstant.FAILED;
	}
}
