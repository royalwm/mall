package com.dw.mall.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.DigestUtils;

import com.dw.mall.config.RedisClient;
import com.dw.mall.constant.RestConstant;
import com.dw.mall.mapper.UserMapper;
import com.dw.mall.pojo.User;
import com.dw.mall.pojo.UserExample;
import com.dw.mall.pojo.UserExample.Criteria;
import com.dw.mall.service.UserService;
import com.dw.mall.utils.EasyuiPagination;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import net.sf.json.JSONObject;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private RedisClient redisClient;
	@Autowired
	private UserMapper userMapper;

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

	@Override
	public User selectUserByUsername(String username) {
		UserExample userExample = new UserExample();
		Criteria createCriteria = userExample.createCriteria();
		createCriteria.andUsernameEqualTo(username);
		return userMapper.selectByExample(userExample).get(0);
	}

	@Override
	public EasyuiPagination userList(Integer page, Integer size) {
		PageHelper.startPage(page, size);
		UserExample userExample = new UserExample();
		List<User> list = userMapper.selectByExample(userExample);
		EasyuiPagination<User> easyuiPagination = new EasyuiPagination<User>();
		PageInfo<User> pageInfo = new PageInfo<>(list);
		long total = pageInfo.getTotal();
		easyuiPagination.setRows(list);
		easyuiPagination.setTotal(total);
		return easyuiPagination;
	}

	@Override
	public void update(User user) {
		userMapper.updateByPrimaryKeySelective(user);
	}

	@Override
	public int add(User user) {
		UserExample userExample = new UserExample();
		Criteria createCriteria = userExample.createCriteria();
		createCriteria.andUsernameEqualTo(user.getUsername());
		List<User> userList = userMapper.selectByExample(userExample);
		if (userList.size() > 0) {
			return RestConstant.FAILED;
		}
		user.setPassword(DigestUtils.md5DigestAsHex(user.getPassword().getBytes()));
		user.setUpdated(new Date());
		user.setCreated(new Date());
		return userMapper.insertSelective(user);
	}

	@Override
	public int delete(List<Long> ids) {
		for (Long id : ids) {
			userMapper.deleteByPrimaryKey(id);
		}
		return RestConstant.SUCCESS;
	}

}
