package com.cdzy.service;

import com.cdzy.pojo.UserInfo;

public interface UserInfoService {
	UserInfo Login(UserInfo userInfo);
	
	int Update(UserInfo userInfo);
	
	int UpdateFile(UserInfo userInfo);
}
