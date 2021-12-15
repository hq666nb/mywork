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
<link rel="stylesheet" href="css/main.css" type="text/css" />
<script type="text/javascript" src="js/jquery-1.11.3.min.js" ></script>
<script type="text/javascript" src="js/main.js" ></script>
</head>
<body>
	<div id="main_div">
		<iframe frameborder="0" id="topIframe" name="topIframe" src="top.jsp" height="80px" width="100%" scrolling="no"></iframe>
		<iframe frameborder="0" id="leftIframe" name="leftIframe" src="../toLeft.action" style="height:calc(100% - 80px);" width="14%" scrolling="no"></iframe>
		<div id="info_context">
			<iframe frameborder="0" id="bodyIframe" name="bodyIframe" src="../toMusicBody.action" style="height:calc(100% - 80px);" width="100%" scrolling="no"></iframe>
			<iframe frameborder="0" id="musicPlayViewIframe" name="musicPlayViewIframe" src="../modals/musicPlayView.jsp" height="100%" width="100%" scrolling="no"></iframe>
			<iframe frameborder="0" id="bottemIframe" name="bottemIframe" src="bottem.jsp" height="80px" width="100%" scrolling="no"></iframe>
		</div>
	</div>
	<iframe frameborder="0" id="loginModalIframe" name="loginModalIframe" src="../modals/loginModal.jsp" height="100%" width="100%" scrolling="no"></iframe>
	<iframe frameborder="0" id="musicListModalIframe" name="musicListModalIframe" src="../modals/musicListModal.jsp" height="100%" width="100%" scrolling="no"></iframe>
	<iframe frameborder="0" id="songSheetModalIframe" name="songSheetModalIframe" src="../modals/AddsongSheetModal.jsp" height="100%" width="100%" scrolling="no"></iframe>
	<div id="ts"><a id="tstext"></a></div>
</body>
</html>