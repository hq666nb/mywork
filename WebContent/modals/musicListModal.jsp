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
<link rel="stylesheet" href="css/musicListModal.css" type="text/css" />
<script type="text/javascript" src="js/jquery-1.11.3.min.js" ></script>
<script type="text/javascript" src="js/musicListModal.js" ></script>
</head>
<body>
	<div id="musicListModal">
		<div class="modalContext">
			<div class="modalHead">
				<h3>ζ­ζΎιε</h3>
				<p><span style="font-size: 20px">π</span>ζΈη©Ίεθ‘¨</p>
			</div>
			<div style="overflow:hidden; width: 100% ;height: calc(100% - 120px - 61px);">
				<div class="modalBody">
					<!-- <div class="itme" onmouseover="TrOnClick(this)">
						<div class="itmeLe">
							<p style="font-size: 14px;">ζ­ε</p>
							<p style="font-size: 12px;color: #555">ζ­ζ</p>
						</div>
						<div class="itmere">
							<a style="color: #1ecf9f;" onclick="stopOrStart()">βΆ</a><a style="color: red;font-size: 20px">β‘</a><a style="font-size: 20px">π</a>
						</div>
					</div>
					<div class="itme" onmouseover="TrOnClick(this)">
						<div class="itmeLe">
							<p style="font-size: 14px;">ζ­ε</p>
							<p style="font-size: 12px;color: #555">ζ­ζ</p>
						</div>
						<div class="itmere">
							<a style="color: #1ecf9f;" onclick="stopOrStart()">βΆ</a><a style="color: red;font-size: 20px">β‘</a><a style="font-size: 20px">π</a>
						</div>
					</div>
					<div class="itme" onmouseover="TrOnClick(this)">
						<div class="itmeLe">
							<p style="font-size: 14px;">ζ­ε</p>
							<p style="font-size: 12px;color: #555">ζ­ζ</p>
						</div>
						<div class="itmere">
							<a style="color: #1ecf9f;" onclick="stopOrStart(this)">βΆ</a><a style="color: red;font-size: 20px">β‘</a><a style="font-size: 20px">π</a>
						</div>
					</div> -->
				</div>
			</div>
			<div class="modalFoot">
				<p onclick="closeMusicListModal()">ζΆθ΅·εθ‘¨>></p>
			</div>
		</div>
	</div>
</body>
</html>