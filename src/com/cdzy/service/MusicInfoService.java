package com.cdzy.service;

import java.io.File;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.cdzy.pojo.MusicInfo;

public interface MusicInfoService {
	List<MusicInfo> selectMusic(MusicInfo musicInfo);
}
