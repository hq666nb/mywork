package com.cdzy.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.OutputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
import org.springframework.web.multipart.MultipartFile;

import com.cdzy.pojo.UserInfo;
import com.cdzy.service.UserInfoService;

@Controller
public class UserInfoController {
	@Autowired
	UserInfoService userInfoService;
	
	@RequestMapping("/toUpdateUserInfo.action")
	public String toUserInfo(HttpSession session){
		if(session.getAttribute("id")!=null){
			return "/WEB-INF/jsp/updateUserInfo.jsp";
		}else{
			return "body/No access.jsp";
		}
	}
	
	@RequestMapping("/toUserHomepage.action")
	public String toUserHomepage(HttpSession session){
		if(session.getAttribute("id")!=null){
			return "/WEB-INF/jsp/userHomepage.jsp";
		}else{
			return "body/No access.jsp";
		}
	}
	
	@RequestMapping("/toUpdatePwd.action")
	public String toUpdatePwd(HttpSession session){
		if(session.getAttribute("id")!=null){
			return "/WEB-INF/jsp/updatePwd.jsp";
		}else{
			return "body/No access.jsp";
		}
	}
	
	@RequestMapping("/Update.action")
	@ResponseBody
	public String Update(UserInfo userInfo,HttpSession session){
		userInfo.setUser_date(userInfo.getUser_date().replaceAll(",", "-"));
		int row=userInfoService.Update(userInfo);
		if(row>0){
			session.setAttribute("id", userInfo.getUser_id());
			session.setAttribute("name", userInfo.getUser_name());
			session.setAttribute("sex", userInfo.getUser_sex());
			session.setAttribute("phone", userInfo.getUser_phone());
			session.setAttribute("email",userInfo.getUser_email());
			session.setAttribute("y", userInfo.getUser_date().split("-")[0]);
			session.setAttribute("m", userInfo.getUser_date().split("-")[1]);
			session.setAttribute("d", userInfo.getUser_date().split("-")[2]);
			session.setAttribute("profile",userInfo.getUser_profile());
			return "ok";
		}else{
			return "on";
		}
	}
	
	@RequestMapping("/UpdateFile.action")
	@ResponseBody
	public String UpdateFile(UserInfo userInfo,MultipartFile file,HttpSession session) throws Exception{
		int begin = file.getOriginalFilename().indexOf(".");
        int last = file.getOriginalFilename().length();
        String a = file.getOriginalFilename().substring(begin, last);
        if(a.equals(".jpg")||a.equals(".png")){
        	String picPath="D:/Other/pictrue/"+session.getAttribute("id")+a;
        	file.transferTo(new File(picPath));
        	userInfo.setUser_id((Integer) session.getAttribute("id"));
        	userInfo.setUser_pictrue_url(picPath);
        	userInfoService.UpdateFile(userInfo);
        	session.setAttribute("fileUrl",userInfo.getUser_pictrue_url());
			return "ok";  
        }else{
			return "on";
		}
	}
	
	@RequestMapping("/getImgFile.action")
	public void getImgFile(HttpServletRequest request, HttpServletResponse response,HttpSession session) throws Exception{
		String fileName = null;
		File file;
		if(session.getAttribute("id")!=null){
			if(session.getAttribute("fileUrl")==null){
				fileName="D:/Other/pictrue/LOL380x380/克烈.jpg";
			}else{
				fileName=(String) session.getAttribute("fileUrl");
			}
		}else{
			fileName="D:/Other/pictrue/tx.png";
		}
		file = new File(fileName);
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
	
	@RequestMapping("/Login.action")
	@ResponseBody
	public String Login(UserInfo userInfo,HttpSession session,Model model){
		if(userInfoService.Login(userInfo)!=null){
			session.setAttribute("id", userInfoService.Login(userInfo).getUser_id());
			session.setAttribute("name", userInfoService.Login(userInfo).getUser_name());
			session.setAttribute("sex", userInfoService.Login(userInfo).getUser_sex());
			session.setAttribute("phone", userInfoService.Login(userInfo).getUser_phone());
			session.setAttribute("email", userInfoService.Login(userInfo).getUser_email());
			try {
				session.setAttribute("y", userInfoService.Login(userInfo).getUser_date().split("-")[0]);
				session.setAttribute("m", userInfoService.Login(userInfo).getUser_date().split("-")[1]);
				session.setAttribute("d", userInfoService.Login(userInfo).getUser_date().split("-")[2]);
			} catch (Exception e) {}
			session.setAttribute("profile", userInfoService.Login(userInfo).getUser_profile());
			session.setAttribute("fileUrl", userInfoService.Login(userInfo).getUser_pictrue_url());
			return "ok";
		}else{
			return "on";
		}
	}
	@RequestMapping("/LogOut.action")
	@ResponseBody
	public String LogOut(HttpSession session){
		session.invalidate();
		return "ok";
	}
}
