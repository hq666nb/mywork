<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() 
	                   + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bottem.css" type="text/css" />
<script type="text/javascript" src="js/jquery-1.11.3.min.js" ></script>
<script type="text/javascript" src="js/bottem.js" ></script>
</head>
<body>
	<div id="audio_div">
		<audio id="audio" autoplay="autoplay"></audio>
		<div class="progress" style="margin-top: 5px">
			<span class="start">00:00</span>
			<div id="progressBar" style="width: 100%;position: relative;height:10px;">
				<div class="progress-bar">
					<div class="now"></div>
				</div>
			</div>
			<span class="end">99:99</span>
		</div>
		<div id="musicPicture">
			<img id="picture" onclick="showMusicPlayView()"/>
			<p id="name" style="font-size: 14px;margin: 5px 3px 3px 3px;">歌曲名称</p>
			<p id="singer" style="font-size: 12px;color: #888">歌手</p>
		</div>
		<div id="btImg">
			<img id="last" src="../images/last2.png" />
			<img id="stopOrStart" src="../images/start.png" />
			<img id="next" src="../images/next2.png" />
		</div>
		<div id="musicList">
			<p onclick="showMusicListModal()">♬ 歌曲列表</p>
		</div>
	</div>
</body>
</html>