package com.cdzy.pojo;

public class UserInfo {
	private Integer user_id;
	private String user_name;
	private String user_pwd;
	private String user_sex;
	private String user_phone;
	private String user_email;
	private String user_date;
	private String user_profile;
	private String user_pictrue_url;
	public Integer getUser_id() {
		return user_id;
	}
	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_pwd() {
		return user_pwd;
	}
	public void setUser_pwd(String user_pwd) {
		this.user_pwd = user_pwd;
	}
	public String getUser_sex() {
		return user_sex;
	}
	public void setUser_sex(String user_sex) {
		this.user_sex = user_sex;
	}
	public String getUser_phone() {
		return user_phone;
	}
	public void setUser_phone(String user_phone) {
		this.user_phone = user_phone;
	}
	public String getUser_email() {
		return user_email;
	}
	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}
	public String getUser_date() {
		return user_date;
	}
	public void setUser_date(String user_date) {
		this.user_date = user_date;
	}
	public String getUser_profile() {
		return user_profile;
	}
	public void setUser_profile(String user_profile) {
		this.user_profile = user_profile;
	}
	public String getUser_pictrue_url() {
		return user_pictrue_url;
	}
	public void setUser_pictrue_url(String user_pictrue_url) {
		this.user_pictrue_url = user_pictrue_url;
	}
	public UserInfo(Integer user_id, String user_name, String user_pwd, String user_sex, String user_phone,
			String user_email, String user_date, String user_profile, String user_pictrue_url) {
		super();
		this.user_id = user_id;
		this.user_name = user_name;
		this.user_pwd = user_pwd;
		this.user_sex = user_sex;
		this.user_phone = user_phone;
		this.user_email = user_email;
		this.user_date = user_date;
		this.user_profile = user_profile;
		this.user_pictrue_url = user_pictrue_url;
	}
	public UserInfo() {
		super();
	}
	@Override
	public String toString() {
		return "UserInfo [user_id=" + user_id + ", user_name=" + user_name + ", user_pwd=" + user_pwd + ", user_sex="
				+ user_sex + ", user_phone=" + user_phone + ", user_email=" + user_email + ", user_date=" + user_date
				+ ", user_profile=" + user_profile + ", user_pictrue_url=" + user_pictrue_url + "]";
	}
	
}
