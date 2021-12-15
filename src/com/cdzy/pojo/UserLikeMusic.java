package com.cdzy.pojo;

import java.util.List;

public class UserLikeMusic {
	private Integer user_id;
	private Integer music_id;
	private List<MusicInfo> likeMusics;
	private String music_name;
	private String music_singer;
	public Integer getUser_id() {
		return user_id;
	}
	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}
	public Integer getMusic_id() {
		return music_id;
	}
	public void setMusic_id(Integer music_id) {
		this.music_id = music_id;
	}
	public List<MusicInfo> getLikeMusics() {
		return likeMusics;
	}
	public void setLikeMusics(List<MusicInfo> likeMusics) {
		this.likeMusics = likeMusics;
	}
	public String getMusic_name() {
		return music_name;
	}
	public void setMusic_name(String music_name) {
		this.music_name = music_name;
	}
	public String getMusic_singer() {
		return music_singer;
	}
	public void setMusic_singer(String music_singer) {
		this.music_singer = music_singer;
	}
	public UserLikeMusic(Integer user_id, Integer music_id, List<MusicInfo> likeMusics, String music_name,
			String music_singer) {
		super();
		this.user_id = user_id;
		this.music_id = music_id;
		this.likeMusics = likeMusics;
		this.music_name = music_name;
		this.music_singer = music_singer;
	}
	public UserLikeMusic() {
		super();
	}
	@Override
	public String toString() {
		return "UserLikeMusic [user_id=" + user_id + ", music_id=" + music_id + ", likeMusics=" + likeMusics
				+ ", music_name=" + music_name + ", music_singer=" + music_singer + "]";
	}
	
}
