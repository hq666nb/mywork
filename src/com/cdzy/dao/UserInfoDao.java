package com.cdzy.dao;

import com.cdzy.pojo.UserInfo;

public interface UserInfoDao {
	UserInfo Login(UserInfo userInfo);
	
	int Update(UserInfo userInfo);
	
	int UpdateFile(UserInfo userInfo);
}
