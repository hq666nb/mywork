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
<link rel="stylesheet" href="main/css/left.css" type="text/css" />
<script type="text/javascript" src="main/js/jquery-1.11.3.min.js" ></script>
<script type="text/javascript" src="main/js/left.js" ></script>
</head>
<body>
	<div id="info_left">
		<div style="height: 130px">
			<c:if test="${name!=null}">
				<div id="imgdiv">
					<img src="">
				</div>
				<h5>欢迎用户：${name}</h5>
				<p><a id="user" onclick="logOut()">退出登录</a></p>
			</c:if>
			<c:if test="${name==null}">
				<div id="imgdiv">
					<img src="">
				</div>
				<c:if test="${error==null}">
					<p><a id="user" onclick="showLoginModal()">用户登录</a></p>
				</c:if>
			</c:if>
		</div>
		<div style="overflow:hidden; width: 100% ;height:calc(100% - 130px);border-radius:6px;">
			<div style="height: 100%;width: calc(100% + 15px);overflow:scroll;overflow-x: hidden;">
				<div class="uldiv">
				<a class="a">我的音乐</a>
				<ul>
					<li><a href="toUserLikeMusicBody.action" target="bodyIframe">დ&nbsp;我喜欢</a></li>
					<li><a href="body/NewFile5.jsp" target="bodyIframe">♬&nbsp;本地音乐</a></li>
				</ul>
			</div>
			<div class="uldiv">
				<a class="a">个人信息</a>
				<ul>
					<li><a href="toUserHomepage.action" target="bodyIframe">⚙&nbsp;主页</a></li>
					<li><a href="toUpdateUserInfo.action" target="bodyIframe">◶&nbsp;编辑资料</a></li>
					<li><a href="toUpdatePwd.action" target="bodyIframe">✂&nbsp;修改密码</a></li>
				</ul>
			</div>
			<div class="uldiv">
				<div style="width: 160px" onclick="showSongSheet()">
					<a class="a">我的歌单</a>
					<a style="vertical-align: middle;font-weight: 600;color:#1ecf9f;font-size: 18px;">≡</a>
				</div>
				<ul class="SongSheet">
					<c:forEach items="${SongSheetList}" var="item" varStatus="index">
						<li><a href="toSongSheet.action?songSheet_id=${item.songSheet_id}" target="bodyIframe">&nbsp;${item.songSheet_name}</a></li>
					</c:forEach>
				</ul>
				<div id="addsongSheet" onclick="showaddsongSheet()">＋&nbsp;创建歌单</div>
			</div>
			<div class="uldiv">
				<a class="a">设置</a>
				<ul>
					<li><a href="body/NewFile3.jsp" target="bodyIframe">✔&nbsp;主题</a></li>
					<li><a href="body/NewFile4.jsp" target="bodyIframe">❁&nbsp;帮助与反馈</a></li>
				</ul>
			</div>
			</div>
		</div>
	</div>
</body>
</html>