package com.cdzy.controller;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.cdzy.pojo.MusicInfo;
import com.cdzy.service.MusicInfoService;

@Controller
public class MusicBodyController {
	@Autowired
	MusicInfoService MusicInfoService;
	
	@RequestMapping("/toMusicBody.action")
	public String selecttop(MusicInfo musicInfo,Model model){
		List<MusicInfo> musicInfoList=MusicInfoService.selectMusic(musicInfo);
		model.addAttribute("music", musicInfoList);
		return "/body/musicBody.jsp";
	}
	
}
