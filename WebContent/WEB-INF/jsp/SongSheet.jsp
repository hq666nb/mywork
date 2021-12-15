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
<link rel="stylesheet" href="body/css/musicBody.css" type="text/css" />
<script type="text/javascript" src="body/js/jquery-1.11.3.min.js" ></script>
<script type="text/javascript" src="body/js/musicBody.js" ></script>
</head>
<body>
	<div id="select_div">
		<form action="toSongSheet.action" method="post">
				<a>搜索音乐</a>
				<input type="text" name="songSheet_id" value="${SongSheetId}" style="display: none">
				<input type="text" name="music_name" placeholder="歌曲名称">
				<input type="text" name="music_singer" placeholder="歌手名称">
				<button type="submit">查询</button>
		</form>
	</div>
	<div id="playAll">
		<a>播放全部</a>
	</div>
	<div style="overflow:hidden; width: 100% ;height:calc(100% - 80px);border-radius:6px;">
		<table id="th">
			<thead>
				<tr>
					<td style="width: 40%">歌曲名称</td>
					<td style="width: 30%">歌手</td>
					<td style="width: 30%">专辑</td>
				</tr>
			</thead>
		</table>
		<div id="table_div">
			<table>
				<tbody id="td">
					<c:forEach items="${musics}" var="item" varStatus="index">
						<tr class="MusicTableTr" onmouseover="TrOnClick(this)">
							<td style="width: 40%">
								${item.music_name}
								<a class="addLike" onclick="addLike('${item.music_id}','${item.music_name}')" style="color: red;font-size: 20px">♡</a>
								<a class="next" style="font-size: 20px">♪</a>
								<a class="showaddss" onclick="showaddss('${item.music_id}')">＋</a>
								<a class="play">▶</a>
							</td>
							<td style="width: 30%">${item.music_singer}</td>
							<td style="width: 30%">${item.music_album}<a class="delLike" onclick="delss('${item.music_id}','${item.music_name}','${SongSheetId}')">🗑</a></td>
							<td style="display: none">${item.music_name}</td>
							<td style="display: none">${item.music_file_url}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
	
	<div id="addss">
		<div class="modalContext">
			<a class="col" onclick="coladdssModal()">╳</a>
			<div class="modalHead">
				<h3>请选择歌单</h3>
			</div>
			<div style="overflow:hidden; width: 100% ;height:calc(100% - 45px);">
				<div class="modalBody">
					<c:forEach items="${SongSheetList}" var="item" varStatus="index">
						<div onmouseover="addsscss(this)" onclick="addss(${item.songSheet_id})">${item.songSheet_name}</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
</body>
</html>