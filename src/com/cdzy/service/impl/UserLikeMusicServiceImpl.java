package com.cdzy.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cdzy.dao.UserLikeMusicDao;
import com.cdzy.pojo.UserLikeMusic;
import com.cdzy.service.UserLikeMusicService;

@Service
public class UserLikeMusicServiceImpl implements UserLikeMusicService{
	@Autowired
	UserLikeMusicDao userLikeMusicDao;

	@Override
	public UserLikeMusic selectUserLikeMusic(UserLikeMusic userLikeMusic) {
		// TODO Auto-generated method stub
		return userLikeMusicDao.selectUserLikeMusic(userLikeMusic);
	}

	@Override
	public int insertUserLikeMusic(UserLikeMusic userLikeMusic) {
		// TODO Auto-generated method stub
		return userLikeMusicDao.insertUserLikeMusic(userLikeMusic);
	}

	@Override
	public int deleteUserLikeMusic(UserLikeMusic userLikeMusic) {
		// TODO Auto-generated method stub
		return userLikeMusicDao.deleteUserLikeMusic(userLikeMusic);
	}
}
