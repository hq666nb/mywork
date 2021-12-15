package com.cdzy.dao;

import java.util.List;

import com.cdzy.pojo.UserLikeMusic;

public interface UserLikeMusicDao {
	UserLikeMusic selectUserLikeMusic(UserLikeMusic userLikeMusic);
	
	int insertUserLikeMusic(UserLikeMusic userLikeMusic);
	
	int deleteUserLikeMusic(UserLikeMusic userLikeMusic);
}
