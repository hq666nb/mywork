package com.cdzy.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cdzy.pojo.MusicInfo;
import com.cdzy.pojo.MusicSongSheet;
import com.cdzy.pojo.UserInfo;
import com.cdzy.pojo.UserSongSheet;
import com.cdzy.service.UserSongSheetService;



@Controller
public class UserSongSheetController {
	
	@Autowired
	UserSongSheetService userSongSheetService;
	
	@RequestMapping("/toLeft.action")
	public String toLeft(HttpSession session,UserSongSheet userSongSheet){
		userSongSheet.setUser_id((Integer) session.getAttribute("id"));
		session.setAttribute("SongSheetList", userSongSheetService.getUserSongSheetList(userSongSheet));
		return "main/left.jsp";
	}
	
	@RequestMapping("/addSongSheet.action")
	@ResponseBody
	public String addSongSheet(UserSongSheet userSongSheet,HttpSession session){
		userSongSheet.setUser_id((Integer) session.getAttribute("id"));
		int row=userSongSheetService.addSongSheet(userSongSheet);
		if(row>0){
			return "ok";
		}else{
			return "on";
		}
	}

	@RequestMapping("/toSongSheet.action")
	public String toSongSheet(MusicSongSheet musicSongSheet,Model model){
		System.out.println(userSongSheetService.getMusicSongSheet(musicSongSheet));
		try{
			List<MusicInfo> musicSongSheetList=userSongSheetService.getMusicSongSheet(musicSongSheet).getMusics();
			model.addAttribute("musics",musicSongSheetList);
		}catch (Exception e) {}
		model.addAttribute("SongSheetId",musicSongSheet.getSongSheet_id());
		return "/WEB-INF/jsp/SongSheet.jsp";
	}
	
	@RequestMapping("/addMusicSongSheet.action")
	@ResponseBody
	public String addMusicSongSheet(MusicSongSheet musicSongSheet){
		int row=0;
		try {
			row=userSongSheetService.addMusicSongSheet(musicSongSheet);
		} catch (Exception e) {
			// TODO: handle exception
		}
		if(row>0){
			return "ok";
		}else{
			return "on";
		}
	}
	
	@RequestMapping("/delMusicSongSheet.action")
	@ResponseBody
	public String delMusicSongSheet(MusicSongSheet musicSongSheet){
		int row=userSongSheetService.delMusicSongSheet(musicSongSheet);
		if(row>0){
			return "ok";
		}else{
			return "on";
		}
	}
	
}
