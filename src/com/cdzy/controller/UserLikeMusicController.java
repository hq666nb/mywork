package com.cdzy.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cdzy.pojo.MusicInfo;
import com.cdzy.pojo.UserLikeMusic;
import com.cdzy.service.UserLikeMusicService;

@Controller
public class UserLikeMusicController {
	@Autowired
	UserLikeMusicService userLikeMusicService;
	
	@RequestMapping("/toUserLikeMusicBody.action")
	public String toUserInfo(UserLikeMusic userLikeMusic,Model model,HttpSession session){
		if(session.getAttribute("id")!=null){
			userLikeMusic.setUser_id(Integer.parseInt(session.getAttribute("id").toString()));
			try{
				List<MusicInfo> list=userLikeMusicService.selectUserLikeMusic(userLikeMusic).getLikeMusics();
				model.addAttribute("userLikeMusicList",list);
			}catch (Exception e) {}
			return "/WEB-INF/jsp/userLikeMusicBody.jsp";
		}else{
			return "body/No access.jsp";
		}	
	}
	
	@RequestMapping("/insertUserLikeMusic.action")
	@ResponseBody
	public String insertUserLikeMusic(UserLikeMusic userLikeMusic,HttpSession session){
		int row=0;
		userLikeMusic.setUser_id(Integer.parseInt(session.getAttribute("id").toString()));
		try {
			row=userLikeMusicService.insertUserLikeMusic(userLikeMusic);
		} catch (Exception e) {
			// TODO: handle exception
		}
		if(row>0){
			return "ok";
		}else{
			return "on";
		}
	}
	
	@RequestMapping("/deleteUserLikeMusic.action")
	@ResponseBody
	public String deleteUserLikeMusic(UserLikeMusic userLikeMusic,HttpSession session){
		userLikeMusic.setUser_id(Integer.parseInt(session.getAttribute("id").toString()));
		int row=userLikeMusicService.deleteUserLikeMusic(userLikeMusic);
		if(row>0){
			return "ok";
		}else{
			return "on";
		}
	}
}
