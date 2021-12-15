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
<link rel="stylesheet" href="css/loginModal.css" type="text/css" />
<script type="text/javascript" src="js/jquery-1.11.3.min.js" ></script>
<script type="text/javascript" src="js/loginModal.js" ></script>
</head>
<body>
	<div id="loginModal">
		<div class="modalContext">
			<a class="col" onclick="closeLoginModal()">╳</a>
			<div class="modalHead">
				<h3>用户登录</h3>
			</div>
			<div class="modalBody">
				<form id="login_form">
					<input type="text" id="userName" name="user_name" onfocus="Focus()" placeholder="请输入用户名"><span id="error"></span><br>
					<input type="password" id="userPwd" name="user_pwd" onfocus="Focus()" placeholder="请输入密码"></span><br>
					<button type="button" onclick="login()">登录</button>
				</form>
			</div>
			<div class="modalFoot">
				<a>没有账号? 立即注册</a>
			</div>
		</div>
	</div>
</body>
</html>