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
<link rel="stylesheet" href="css/musicPlayView.css" type="text/css" />
<script type="text/javascript" src="js/jquery-1.11.3.min.js" ></script>
<script type="text/javascript" src="js/musicPlayView.js" ></script>
</head>
<body>
	<div id="musicPlayView">
		<div id="backPictrue">
			<div id="back">
			</div>
		</div>
		<img id="playViewImg" onclick="closeMusicPlayView()"/>
		<div id="lrcdiv">
			<div id="lrcHead">
				<p style="font-size:23px ;color:#fff;padding-bottom:15px;">歌曲名称</p>
				<p style="font-size:13px ;color:#ccc;padding-bottom:5px;">歌手</p>
				<p style="font-size:13px ;color:#ccc;padding-bottom:5px;">专辑</p>
			</div>
			<div id="lrc">
			
			</div>
		</div>
	</div>
</body>
</html>