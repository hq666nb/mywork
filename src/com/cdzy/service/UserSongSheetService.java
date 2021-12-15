package com.cdzy.service;

import java.util.List;

import com.cdzy.pojo.MusicInfo;
import com.cdzy.pojo.MusicSongSheet;
import com.cdzy.pojo.UserSongSheet;

public interface UserSongSheetService {
	List<UserSongSheet> getUserSongSheetList(UserSongSheet userSongSheet);
	
	int addSongSheet(UserSongSheet userSongSheet);
	
	MusicSongSheet getMusicSongSheet(MusicSongSheet musicSongSheet);
	
	int addMusicSongSheet(MusicSongSheet musicSongSheet);
	
	int delMusicSongSheet(MusicSongSheet musicSongSheet);
}
