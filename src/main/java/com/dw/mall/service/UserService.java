package com.dw.mall.service;

import java.util.List;

import com.dw.mall.pojo.User;
import com.dw.mall.utils.EasyuiPagination;

public interface UserService {

	User getUserByToken(String userId);

	User selectUserByUsername(String username);

	EasyuiPagination userList(Integer page, Integer rows);

	void update(User user);

	int add(User user);

	int delete(List<Long> ids);

}
