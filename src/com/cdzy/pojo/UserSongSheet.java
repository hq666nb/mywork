package com.cdzy.pojo;

public class UserSongSheet {
	private Integer songSheet_id;
	private Integer user_id;
	private String songSheet_name;
	public Integer getSongSheet_id() {
		return songSheet_id;
	}
	public void setSongSheet_id(Integer songSheet_id) {
		this.songSheet_id = songSheet_id;
	}
	public Integer getUser_id() {
		return user_id;
	}
	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}
	public String getSongSheet_name() {
		return songSheet_name;
	}
	public void setSongSheet_name(String songSheet_name) {
		this.songSheet_name = songSheet_name;
	}
	public UserSongSheet(Integer songSheet_id, Integer user_id, String songSheet_name) {
		super();
		this.songSheet_id = songSheet_id;
		this.user_id = user_id;
		this.songSheet_name = songSheet_name;
	}
	public UserSongSheet() {
		super();
	}
	@Override
	public String toString() {
		return "UserSongSheet [songSheet_id=" + songSheet_id + ", user_id=" + user_id + ", songSheet_name="
				+ songSheet_name + "]";
	}
	
}
