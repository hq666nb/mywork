package com.cdzy.service;

import java.util.List;

import com.cdzy.pojo.UserLikeMusic;

public interface UserLikeMusicService {
	UserLikeMusic selectUserLikeMusic(UserLikeMusic userLikeMusic);
	
	int insertUserLikeMusic(UserLikeMusic userLikeMusic);
	
	int deleteUserLikeMusic(UserLikeMusic userLikeMusic);
}
