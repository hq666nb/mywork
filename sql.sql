CREATE DATABASE MUSIC_DB CHARSET utf8;
USE MUSIC_DB;

CREATE TABLE userInfo(
user_id INT AUTO_INCREMENT PRIMARY KEY,
user_name VARCHAR(12) UNIQUE KEY NOT NULL,
user_pwd VARCHAR(16) NOT NULL,
user_sex VARCHAR(2),
user_phone VARCHAR(11),
user_email VARCHAR(20),
user_date VARCHAR(20),
user_profile VARCHAR(300),
user_pictrue_url VARCHAR(100)
);

INSERT userInfo(user_name,user_pwd) VALUES('hq','123');
INSERT userInfo VALUES(0,'黄卿','wasd147852369..','男','13317389391','374489453@qq.ocm','2001-04-02','个人简介','D:/Other/pictrue/LOL1920x1080/锐雯.jpg');

UPDATE userInfo
SET user_name='hq',user_sex='男',user_phone='124563',
	user_email='374489453',user_date='2001',user_profile='个人简介'
WHERE user_id='1'

CREATE TABLE musicInfo(
music_id INT AUTO_INCREMENT PRIMARY KEY,
music_name VARCHAR(50) NOT NULL,
music_singer VARCHAR(50) NOT NULL,
music_album VARCHAR(50) NOT NULL,
music_file_url VARCHAR(100) NOT NULL
);

INSERT musicInfo VALUES (0,'银河与星斗','yihuik苡慧','银河与星斗','D:/Other/music/yihuik苡慧 - 银河与星斗.mp3'),
			(0,'迷失幻境','IN-K/王忻辰','迷失幻境','D:/Other/music/IN-K _ 王忻辰 - 迷失幻境.mp3'),
			(0,'奔赴星空','尹昔眠/小田音乐社','奔赴星空','D:/Other/music/尹昔眠 _ 小田音乐社 - 奔赴星空.mp3'),
			(0,'放空','A1 TRIP/大籽/Lil','放空','D:/Other/music/A1 TRIP _ 大籽 _ Lil E - 放空.mp3'),
			(0,'Ring Ring Ring','不是花火呀','Ring Ring Ring','D:/Other/music/不是花火呀 - Ring Ring Ring.mp3'),
			(0,'热爱105°C的你','阿肆','热爱105°C的你','D:/Other/music/阿肆 - 热爱105°C的你.mp3'),
			(0,'潮汐(Natural)','安苏羽/傅梦彤','潮汐(Natural)','D:/Other/music/安苏羽 _ 傅梦彤 - 潮汐(Natural).mp3'),
			(0,'四季予你','程响','四季予你','D:/Other/music/程响 - 四季予你.mp3'),
			(0,'星辰大海','黄霄雲','星辰大海','D:/Other/music/黄霄雲 - 星辰大海.mp3'),
			(0,'燕无歇','七叔（叶泽浩）','燕无歇','D:/Other/music/七叔（叶泽浩） - 燕无歇.mp3'),
			(0,'沦陷','王靖雯不胖','沦陷','D:/Other/music/王靖雯不胖 - 沦陷.mp3'),
			(0,'执迷不悟','小乐哥','执迷不悟','D:/Other/music/小乐哥 - 执迷不悟.mp3'),
			(0,'静悄悄','曲肖冰','静悄悄','D:/Other/music/曲肖冰 - 静悄悄.mp3'),
			(0,'山楂树の恋','程jiajia','山楂树の恋','D:/Other/music/程jiajia - 山楂树の恋.mp3'),
			(0,'起风了','买辣椒也用券','起风了','D:/Other/music/买辣椒也用券 - 起风了.mp3'),
			(0,'芒种','音阙诗听/赵方婧','芒种','D:/Other/music/音阙诗听 _ 赵方婧 - 芒种.mp3'),
			(0,'如果的事','王梓钰&陈文辉','如果的事','D:/Other/music/王梓钰陈文辉 - 如果的事.mp3'),
			(0,'下山','要不要买菜','下山','D:/Other/music/要不要买菜 - 下山.mp3'),
			(0,'像极了','永彬Ryan.B','像极了','D:/Other/music/永彬Ryan.B - 像极了.mp3'),
			(0,'清空','王忻辰/苏星婕','清空','D:/Other/music/王忻辰 _ 苏星婕 - 清空.mp3'),
			(0,'雅俗共赏 (原唱许嵩)','井胧','雅俗共赏','D:/Other/music/许嵩 - 雅俗共赏.mp3'),
			(0,'可不可以','张紫豪','可不可以','D:/Other/music/张紫豪 - 可不可以.mp3'),
			(0,'十年人间','李常超（Lao乾妈）','盗墓笔记·十年人间','D:/Other/music/李常超（Lao乾妈） - 盗墓笔记·十年人间.mp3'),
			(0,'离人愁','李袁杰','离人愁','D:/Other/music/李袁杰 - 离人愁.mp3'),
			(0,'琵琶行','奇然沈谧仁','琵琶行','D:/Other/music/奇然沈谧仁-琵琶行.mp3'),
			(0,'去年夏天','王大毛','去年夏天','D:/Other/music/王大毛 - 去年夏天.mp3'),
			(0,'红色高跟鞋','西柚','红色高跟鞋','D:/Other/music/西柚 - 红色高跟鞋.mp3'),
			(0,'牵丝戏','银临Aki阿杰','牵丝戏','D:/Other/music/银临 _ Aki阿杰 - 牵丝戏.mp3'),
			(0,'溯 (Reverse) feat. 马吟吟','CORSAK胡梦周马吟吟','溯 (Reverse) feat. 马吟吟','D:/Other/music/CORSAK胡梦周 _ 马吟吟 - 溯 (Reverse) feat_ 马吟吟.mp3'),
			(0,'画(Live Piano Session Ⅱ)','G.E.M.邓紫棋','画(Live Piano Session Ⅱ)','D:/Other/music/G_E_M_ 邓紫棋 - 画 (Live Piano Session Ⅱ).mp3'),
			(0,'夏天的风','Uu','夏天的风','D:/Other/music/Uu - 夏天的风.mp3'),
			(0,'旧梦一场','阿悠悠','旧梦一场','D:/Other/music/阿悠悠 - 旧梦一场.mp3'),
			(0,'一曲相思','半阳','一曲相思','D:/Other/music/半阳 - 一曲相思.mp3'),
			(0,'霜雪千年 (原唱_ 洛天依)','等什么君翻唱','霜雪千年 (原唱_ 洛天依)','D:/Other/music/封茗囧菌 _ 双笙 (陈元汐) - 霜雪千年.mp3'),
			(0,'云烟成雨','海哲明大脸猫','云烟成雨','D:/Other/music/房东的猫 - 云烟成雨.mp3'),
			(0,'春娇与志明','街道办GDC欧阳耀莹','春娇与志明','D:/Other/music/街道办GDC _ 欧阳耀莹 - 春娇与志明.mp3'),
			(0,'记念','RAiNBOW计划 _ 雷雨心','橙','D:/Other/music/RAiNBOW计划 _ 雷雨心 - 记念.mp3'),
			(0,'白月光与朱砂痣','胖虎','白月光与朱砂痣','D:/Other/music/胖虎 - 白月光与朱砂痣.mp3'),
			(0,'我的名字','焦迈奇','我的名字','D:/Other/music/焦迈奇 - 我的名字.mp3');
			
CREATE TABLE user_likeMusic(
user_id INT NOT NULL,
music_id INT NOT NULL,
FOREIGN KEY (user_id) REFERENCES userInfo (user_id),
FOREIGN KEY (music_id) REFERENCES musicInfo (music_id)
);

CREATE UNIQUE INDEX qu_u_m ON user_likeMusic( user_id, music_id );

CREATE TABLE user_SongSheet(
songSheet_id INT AUTO_INCREMENT PRIMARY KEY,
user_id INT NOT NULL,
songSheet_name VARCHAR(12) NOT NULL,
FOREIGN KEY (user_id) REFERENCES userInfo (user_id)
);

INSERT INTO user_SongSheet VALUE(0,'1','test1'),
				(0,'1','test2');

CREATE TABLE music_SongSheet(
songSheet_id INT NOT NULL,
music_id INT NOT NULL,
FOREIGN KEY (music_id) REFERENCES musicInfo (music_id)
);

CREATE UNIQUE INDEX qu_s_m ON music_SongSheet( songSheet_id, music_id );


				