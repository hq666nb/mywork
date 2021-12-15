package com.cdzy.pojo;

import java.util.List;

public class MusicSongSheet {
	private Integer songSheet_id;
	private Integer music_id;
	private List<MusicInfo> musics;
	private String music_name;
	private String music_singer;
	public Integer getSongSheet_id() {
		return songSheet_id;
	}
	public void setSongSheet_id(Integer songSheet_id) {
		this.songSheet_id = songSheet_id;
	}
	public Integer getMusic_id() {
		return music_id;
	}
	public void setMusic_id(Integer music_id) {
		this.music_id = music_id;
	}
	public List<MusicInfo> getMusics() {
		return musics;
	}
	public void setMusics(List<MusicInfo> musics) {
		this.musics = musics;
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
	public MusicSongSheet(Integer songSheet_id, Integer music_id, List<MusicInfo> musics, String music_name,
			String music_singer) {
		super();
		this.songSheet_id = songSheet_id;
		this.music_id = music_id;
		this.musics = musics;
		this.music_name = music_name;
		this.music_singer = music_singer;
	}
	public MusicSongSheet() {
		super();
	}
	@Override
	public String toString() {
		return "MusicSongSheet [songSheet_id=" + songSheet_id + ", music_id=" + music_id + ", musics=" + musics
				+ ", music_name=" + music_name + ", music_singer=" + music_singer + "]";
	}
	
	
}
