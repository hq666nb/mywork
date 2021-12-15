package com.cdzy.service.impl;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import org.jaudiotagger.audio.AudioFileIO;
import org.jaudiotagger.audio.mp3.MP3File;
import org.jaudiotagger.tag.id3.AbstractID3v2Frame;
import org.jaudiotagger.tag.id3.AbstractID3v2Tag;
import org.jaudiotagger.tag.id3.framebody.FrameBodyAPIC;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.cdzy.dao.MusicInfoDao;
import com.cdzy.pojo.MusicInfo;
import com.cdzy.service.MusicInfoService;
@Transactional
@Service
public class MusicInfoServiceImpl implements MusicInfoService{
	@Autowired
	MusicInfoDao musicInfoDao;
	
	/*private String reg(String input) {
	    return input.substring(input.indexOf('"') + 1, input.lastIndexOf('"'));
	}

	@Override
	public int inset(MultipartFile file) {
		MusicInfo musicInfo=null;
		String name=file.getOriginalFilename();
		String musicFileUrl="E:/SSM/PJ/MUSIC/WebContent/musics/"+name;
		String musicImgUrl="E:/SSM/PJ/MUSIC/WebContent/images/musicImg/"+name+".jpg";
		File musicFile=new File(musicFileUrl);
		try {
			file.transferTo(musicFile);
			MP3File mp3File = (MP3File) AudioFileIO.read(musicFile);
			AbstractID3v2Tag tag = mp3File.getID3v2Tag();
	        AbstractID3v2Frame frame = (AbstractID3v2Frame) tag.getFrame("APIC");
	        FrameBodyAPIC body = (FrameBodyAPIC) frame.getBody();
	        byte[] imageData = body.getImageData();
	        FileOutputStream fos = new FileOutputStream(musicImgUrl);
	        fos.write(imageData);
	        fos.close();
	        System.out.println(reg(mp3File.getID3v2Tag().frameMap.get("TIT2").toString()));
	        musicInfo=new MusicInfo(null,reg(mp3File.getID3v2Tag().frameMap.get("TIT2").toString()),reg(mp3File.getID3v2Tag().frameMap.get("TPE1").toString()),reg(mp3File.getID3v2Tag().frameMap.get("TALB").toString()),"musics/"+name,"images/musicImg/"+name+".jpg");
		} catch (Exception e) {
			new File(musicFileUrl).delete();
			new File(musicImgUrl).delete();
			return 0;
		}
		return musicInfoDao.inset(musicInfo);
	}

	@Override
	public int delete(Integer music_id) {
		MusicInfo musicInfo=new MusicInfo();
		musicInfo.setMusic_id(music_id);
		musicInfo=select(musicInfo).get(0);
		new File("E:/SSM/PJ/MUSIC/WebContent/"+musicInfo.getMusic_url()).delete();
		new File("E:/SSM/PJ/MUSIC/WebContent/"+musicInfo.getMusic_img_url()).delete();
		return musicInfoDao.delete(music_id);
	}*/

	@Override
	public List<MusicInfo> selectMusic(MusicInfo musicInfo) {
		return musicInfoDao.selectMusic(musicInfo);
	}
	
}
