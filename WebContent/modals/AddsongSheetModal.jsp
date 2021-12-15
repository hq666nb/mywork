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
<link rel="stylesheet" href="css/AddsongSheetModal.css" type="text/css" />
<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="js/AddsongSheetModal.js"></script>
</head>
<body>
	<div id="addsongSheet">
		<div class="modalContext">
			<a class="col" onclick="closeAddsongSheetModal()">╳</a>
			<div class="modalHead">
				<h3>创建歌单</h3>
			</div>
			<div class="modalBody">
				<form id="AddsongSheet_form">
					<input type="text" id="songSheetName" name="songSheet_name" onfocus="Focus()" placeholder="请输入歌单名"><br>
					<p id="error">歌单名不能大于6位或为空 ！</p>
					<button type="button" onclick="addsongSheet()">创建</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>