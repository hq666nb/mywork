package com.cdzy.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cdzy.dao.UserInfoDao;
import com.cdzy.pojo.UserInfo;
import com.cdzy.service.UserInfoService;

@Service
public class UserInfoSericeImpl implements UserInfoService{
	@Autowired
	UserInfoDao userInfoDao;

	@Override
	public UserInfo Login(UserInfo userInfo) {
		// TODO Auto-generated method stub
		return userInfoDao.Login(userInfo);
	}

	@Override
	public int Update(UserInfo userInfo) {
		// TODO Auto-generated method stub
		return userInfoDao.Update(userInfo);
	}

	@Override
	public int UpdateFile(UserInfo userInfo) {
		// TODO Auto-generated method stub
		return userInfoDao.UpdateFile(userInfo);
	}
	
	
}
