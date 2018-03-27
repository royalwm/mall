package com.dw.mall.service;

import com.dw.mall.pojo.User;

public interface UserService {

	User getUserByToken(String userId);

}
