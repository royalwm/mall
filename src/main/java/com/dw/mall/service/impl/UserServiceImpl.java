package com.dw.mall.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dw.mall.config.RedisClient;
import com.dw.mall.pojo.User;
import com.dw.mall.service.UserService;

import net.sf.json.JSONObject;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private RedisClient redisClient;

	@Override
	public User getUserByToken(String userId) {
		String userJson = null;
		try {
			userJson = redisClient.get(userId);
		} catch (Exception e) {
			e.printStackTrace();
		}
		JSONObject jsonObject = JSONObject.fromObject(userJson);
		return (User) JSONObject.toBean(jsonObject, User.class);
	}

}
