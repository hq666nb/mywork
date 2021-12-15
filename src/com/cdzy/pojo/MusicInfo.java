package com.cdzy.pojo;

public class MusicInfo {
	private Integer music_id;
	private String music_name;
	private String music_singer;
	private String music_album;
	private String music_file_url;
	public Integer getMusic_id() {
		return music_id;
	}
	public void setMusic_id(Integer music_id) {
		this.music_id = music_id;
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
	public String getMusic_album() {
		return music_album;
	}
	public void setMusic_album(String music_album) {
		this.music_album = music_album;
	}
	public String getMusic_file_url() {
		return music_file_url;
	}
	public void setMusic_file_url(String music_file_url) {
		this.music_file_url = music_file_url;
	}
	public MusicInfo(Integer music_id, String music_name, String music_singer, String music_album,
			String music_file_url) {
		super();
		this.music_id = music_id;
		this.music_name = music_name;
		this.music_singer = music_singer;
		this.music_album = music_album;
		this.music_file_url = music_file_url;
	}
	public MusicInfo() {
		super();
	}
	@Override
	public String toString() {
		return "MusicInfo [music_id=" + music_id + ", music_name=" + music_name + ", music_singer=" + music_singer
				+ ", music_album=" + music_album + ", music_file_url=" + music_file_url + "]";
	}
	
}
