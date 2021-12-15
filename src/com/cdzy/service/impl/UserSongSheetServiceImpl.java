package com.cdzy.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cdzy.dao.UserSongSheetDao;
import com.cdzy.pojo.MusicInfo;
import com.cdzy.pojo.MusicSongSheet;
import com.cdzy.pojo.UserSongSheet;
import com.cdzy.service.UserSongSheetService;

@Service
public class UserSongSheetServiceImpl implements UserSongSheetService{
	
	@Autowired
	UserSongSheetDao userSongSheetDao;

	@Override
	public List<UserSongSheet> getUserSongSheetList(UserSongSheet userSongSheet) {
		// TODO Auto-generated method stub
		return userSongSheetDao.getUserSongSheetList(userSongSheet);
	}

	@Override
	public MusicSongSheet getMusicSongSheet(MusicSongSheet musicSongSheet) {
		// TODO Auto-generated method stub
		return userSongSheetDao.getMusicSongSheet(musicSongSheet);
	}

	@Override
	public int addSongSheet(UserSongSheet userSongSheet) {
		// TODO Auto-generated method stub
		return userSongSheetDao.addSongSheet(userSongSheet);
	}

	@Override
	public int addMusicSongSheet(MusicSongSheet musicSongSheet) {
		// TODO Auto-generated method stub
		return userSongSheetDao.addMusicSongSheet(musicSongSheet);
	}

	@Override
	public int delMusicSongSheet(MusicSongSheet musicSongSheet) {
		// TODO Auto-generated method stub
		return userSongSheetDao.delMusicSongSheet(musicSongSheet);
	}

}
