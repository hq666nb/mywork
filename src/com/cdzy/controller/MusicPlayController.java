package com.cdzy.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.net.URLDecoder;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jaudiotagger.audio.AudioFileIO;
import org.jaudiotagger.audio.mp3.MP3File;
import org.jaudiotagger.tag.id3.AbstractID3v2Frame;
import org.jaudiotagger.tag.id3.AbstractID3v2Tag;
import org.jaudiotagger.tag.id3.framebody.FrameBodyAPIC;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cdzy.pojo.MusicInfo;
import com.cdzy.service.MusicInfoService;

@Controller
public class MusicPlayController {
	
	@RequestMapping("/getFile.action")
	public void getFile(HttpServletRequest request, HttpServletResponse response,String fileName) throws IOException{
		File file = new File(fileName);
		InputStream inputStream = new FileInputStream(file);
		OutputStream outputStream = new BufferedOutputStream(response.getOutputStream());
		byte[] buff = new byte[1024];
		int n;
		while((n=inputStream.read(buff))!=-1){
			outputStream.write(buff,0,n);
		}
		outputStream.flush();
		outputStream.close();
		inputStream.close();
	}
	
	@RequestMapping("/getPictureFile.action")
	public void getPictureFile(HttpServletRequest request, HttpServletResponse response,String fileName) throws Exception{
		File file = new File(fileName);
		MP3File mp3File = (MP3File) AudioFileIO.read(file);
		AbstractID3v2Tag tag = mp3File.getID3v2Tag();
        AbstractID3v2Frame frame = (AbstractID3v2Frame) tag.getFrame("APIC");
        FrameBodyAPIC body = (FrameBodyAPIC) frame.getBody();
        byte[] imageData = body.getImageData();
		OutputStream outputStream = new BufferedOutputStream(response.getOutputStream());
		outputStream.write(imageData);
		outputStream.flush();
		outputStream.close();
	}
	
	@RequestMapping("/getLyric.action")
	public void getLyric(HttpServletRequest request, HttpServletResponse response,String fileName) throws Exception{
		fileName=fileName.split(".mp3")[0]+".lrc";
		File file = new File(fileName);
		InputStream inputStream = new FileInputStream(file);
		response.setContentType("text/xml;charset=UTF-8");
		byte[] buff = new byte[(int) file.length()];
		inputStream.read(buff);
		response.getWriter().println(new String(buff,"GBK"));
		inputStream.close();
	}
}
