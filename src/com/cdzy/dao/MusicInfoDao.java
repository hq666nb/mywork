package com.cdzy.dao;

import java.util.List;

import com.cdzy.pojo.MusicInfo;

public interface MusicInfoDao {
	List<MusicInfo> selectMusic(MusicInfo musicInfo);
}
