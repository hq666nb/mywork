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
<link rel="stylesheet" href="css/top.css" type="text/css" />
<script type="text/javascript" src="js/jquery-1.11.3.min.js" ></script>
</head>
<body>
	<div id="info_head">
		<img src="../images/未标题-1.png">
		<ul>
			<li><a href="../body/NewFile2.jsp" target="bodyIframe">关于我们</a></li>
			<li><a href="../body/NewFile1.jsp" target="bodyIframe">网站信息</a></li>
			<li><a href="../body/NewFile.jsp" target="bodyIframe">歌曲排行</a></li>
			<li><a href="../toMusicBody.action" target="bodyIframe" style="color: #ffdc00;font-weight: bold;">在线音乐</a></li>
		</ul>
	</div>
</body>
</html>