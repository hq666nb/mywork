<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	*{
		margin: 0px;
		padding: 0px;
	}
	body{
		height:100vh;
		background: #f5f5f5;
	}
	#heandiv{
		width: 100%;
		height: 160px;
		margin:auto;
		margin-bottom:4px;
		box-shadow: 0 2px 2px 0 rgba(0, 0, 0, 0.2), 0 2px 2px 0 rgba(0, 0, 0, 0.19);
	}
	#ba2{
		position: fixed;
		height: 60px;
		width: 100%;
		left: 0;
		top: 100px;
		background: #1cc194;
		opacity:0.75;
	}
	#heandiv #imgdiv{
		position: fixed;
		height: 130px;
		width:130px;
		top: 16px;
		left: 120px;
		border: 1px #fff solid;
		border-radius:15px;
		overflow:hidden;
		box-shadow: 0 2px 2px 0 rgba(0, 0, 0, 0.2), 0 2px 2px 0 rgba(0, 0, 0, 0.19);
	}
	#heandiv #imgdiv img{
		height: 100%;
		width: 100%;
	}
	#heandiv input{
		position:fixed;
		height: 130px;
		width:130px;
		top: 16px;
		left: 120px;
		opacity:0;
	}
	#heandiv #ba{
		position:fixed;
		height: 132px;
		width:130px;
		top: 17px;
		left: 120px;
		background: rgba(0, 0, 0, 0.4);
		color: #eee;
		line-height:130px;
		text-align:center;
		border-radius:15px;
		overflow:hidden;
		display: none;
	}
	#heandiv #name{
		display:block;
		position: fixed;
		top: 50px;
		left: 290px;
		font-size: 26px;
		color:#000;
		font-weight: 100;
	}
	#heandiv #age{
		display:block;
		position: fixed;
		top: 100px;
		left: 290px;
		font-size: 16px;
		color:#eee;
		line-height: 60px;
		font-weight: 600;
	}
	#heandiv #age span{
		margin-left: 10px;
		font-weight: 100;
	}
	#heandiv #sure{
		position: fixed;
		outline: none;
		top:112px;
		right:120px;
		height:36px;
		width:90px;
		background:rgba(0, 0, 0, 0) ;
		color: #ffdc00;
		font-size: 14px;
		border: #ffdc00 3px solid;
		border-radius:20px;
		font-weight:600;
		box-shadow: 0 2px 2px 0 rgba(0, 0, 0, 0.2), 0 2px 2px 0 rgba(0, 0, 0, 0.19);
	}
	#heandiv #cancel{
		position: fixed;
		outline: none;
		top:112px;
		right:240px;
		height:36px;
		width:90px;
		background:rgba(0, 0, 0, 0) ;
		color: #eee;
		font-size: 14px;
		border: #eee 3px solid;
		border-radius:20px;
		font-weight:600;
		box-shadow: 0 2px 2px 0 rgba(0, 0, 0, 0.2), 0 2px 2px 0 rgba(0, 0, 0, 0.19);
	}
	#heandiv #sure:HOVER{
		border: #ffe962 3px solid;
		color: #ffe962;
	}
	#heandiv #cancel:HOVER{
		border: #fff 3px solid;
		color: #fff;
	}
	#bodydiv{
		width:calc(100% + 15px);
		height:100%;
		overflow:scroll;
		overflow-x: hidden;
		background:rgba(255, 255, 255, 0.5);
	}
	#bodydiv table{
		margin-top: 10px;
		margin-left: 100px;
	}
	.tdtext{
		width:130px;
		height: 60px;
		font-weight: 600;
	}
	.tdin{
		width: 800px;
		height: 60px;
	}
	.err{
		color:red;
		font-size: 13px;
		margin-left: 30px;
		display: none;
	}
	#bodydiv table a{
		vertical-align: middle;
		line-height: 60px;
	}
	input[type="text"]{
		outline: none;
		text-indent: 0.6em;
		font-size:16px;
		color: #000000;
		height:40px;
		width:240px;
		border:none;
		border-bottom: solid 1px #555;
		background:rgba(255, 255, 255, 0);
	}
	input[type="text"]:hover{
		border-bottom: solid 2px #1cc194;
	}
	input[type="radio"]{
		margin-right: 20px;
		margin-left: 5px;
		height:18px;
		width:18px;
		vertical-align: middle;
	}
	select{
		text-indent: 1em;
		font-size:14px;
		color: #000000;
		height:40px;
		width:100px;
		border: solid 1px #000;
		background:rgba(255, 255, 255, 0);
		margin-right: 10px;
	}
	select:hover{
		background: #eee;
	}
</style>
<script type="text/javascript" src="body/js/jquery-1.11.3.min.js" ></script>
<script type="text/javascript">
	window.onload=function(){
		xz();
		getimg();
	}
	var a=true;
	function ca() {
		window.location.reload();
	}
	
	function update() {
		if(a){
			$.post("Update.action",$("#update_form").serialize(),function(data){
				if(data =="ok"){
					window.location.reload();
					alert("修改成功");
				}else{
					alert("修改失败");
				}
			});	
		}else{
			alert("请填写正确的信息");
		}
	}
	function showba() {
		document.getElementById('ba').style.display="block";
	}
	function col() {
		document.getElementById('ba').style.display="none";
	}
	function nameerrshow(event) {
		var name=event.value;
		if(name.length>6){
			document.getElementsByClassName("err")[0].style.display="inline";
			a=false;
		}else{
			document.getElementsByClassName("err")[0].style.display="none";
			a=true;
		}
	}
	function phoneerrshow(event) {
		var name=event.value;
		var myReg =/^([\+]?[0]?86)?[1][3,5][0-9]{9}$/;
		if(name.length>11){
			document.getElementsByClassName("err")[1].style.display="inline";
			a=false;
		}else if(name.length==0){
			document.getElementsByClassName("err")[1].style.display="none";
			a=true;
		}else if(!myReg.test(name)){
			document.getElementsByClassName("err")[1].style.display="inline";
			a=false;
		}else{
			document.getElementsByClassName("err")[1].style.display="none";
			a=true;
		}
	}
	function emailerrshow(event) {
		var name=event.value;
		var myReg =/^(?:[a-z\d]+[_\-\+\.]?)*[a-z\d]+@(?:([a-z\d]+\-?)*[a-z\d]+\.)+([a-z]{2,})+$/;
		if(name.length>16){
			document.getElementsByClassName("err")[2].style.display="inline";
			a=false;
		}else if(name.length==0){
			document.getElementsByClassName("err")[2].style.display="none";
			a=true;
		}else if(!myReg.test(name)){
			document.getElementsByClassName("err")[2].style.display="inline";
			a=false;
		}else{
			document.getElementsByClassName("err")[2].style.display="none";
			a=true;
		}
	}
	function xz() {
		var time = new Date();
		var y=document.getElementsByTagName("select")[0].value;
		var m=document.getElementsByTagName("select")[1].value;
		var d=document.getElementsByTagName("select")[2].value;
		document.getElementById('agespan').innerHTML=time.getFullYear()-y;
		var s="魔羯水瓶双鱼白羊金牛双子巨蟹狮子处女天秤天蝎射手魔羯";
		var arr=[20,19,21,21,21,22,23,23,23,23,22,22];
		document.getElementById('xz').innerHTML=s.substr(m*2-(d<arr[m-1]?2:0),2)+"座";
	}
	function getimg() {
		var xmlResquest = new XMLHttpRequest();
	    xmlResquest.open("POST", "getImgFile.action", true);
	    xmlResquest.responseType = "blob";
	    xmlResquest.onload = function (oEvent) {
	        var content = xmlResquest.response;
	        var blob = new Blob([content]);
	        var url = URL.createObjectURL(blob);
	        document.getElementsByTagName("img")[0].src=url;
	    };
	    xmlResquest.send();
	}
	function updateimg() {
		var formData = new FormData($("#formin")[0]);
		$.ajax({
			type : "POST",
					cache: false,
					data : formData,
					processData :  false,//必须是false
					contentType :  false,//必须是false
					url: "UpdateFile.action",
					success:function(data){
						if(data=="ok"){
							window.location.reload();
							parent.window.frames["leftIframe"].document.getElementsByTagName("img")[0].src=URL.createObjectURL(document.getElementById('file').files[0]);
						}else{
							alert("文件格式错误");
						}
					}
			});
	}
</script>
</head>
<body>
	<div id="heandiv">
		<div id="ba2"></div>
		<div id="imgdiv">
			<img>
		</div>
		<a id="ba">上传头像</a>
			<form id="formin" method="post" enctype="multipart/form-data">
				<input type="file" id="file" name="file" accept="image/*" onmouseover="showba()" onmouseout="col()" onchange="updateimg()">
			</form>
		<a id="name">${name}</a>
		<a id="age">年龄 :<span id="agespan"></span></a>
		<button id="sure" onclick="update()">确认修改</button>
		<button id="cancel" onclick="ca()">取消</button>
	</div>
	
	<div style="overflow:hidden; width: 100% ;height:calc(100% - 160px);">
		<div id="bodydiv">
			<form id="update_form">
				<table>
					<tr style="display: none">
						<td class="tdtext">id</td>
						<td class="tdin"><input type="text" name="user_id" value="${id}" style="width:200px "></td>
					</tr>
					<tr>
						<td class="tdtext">用户名 :</td>
						<td class="tdin"><input type="text" name="user_name" value="${name}" onblur="nameerrshow(this)" style="width:160px " placeholder="用户名"><a class="err">用户名长度不允许超过六位 !</a></td>
					</tr>
					<tr>
						<td class="tdtext">性别 :</td>
						<c:if test="${sex=='男'||sex==null}">
							<td class="tdin"><a>男</a><input type="radio" name="user_sex" value="男" checked="checked"><a>女</a><input type="radio" name="user_sex" value="女"></td>
						</c:if>
						<c:if test="${sex=='女'}">
							<td class="tdin"><a>男</a><input type="radio" name="user_sex" value="男"><a>女</a><input type="radio" name="user_sex" value="女" checked="checked"></td>
						</c:if>
					</tr>
					<tr>
						<td class="tdtext">个人简介 :</td>
						<td class="tdin"><textarea maxlength="150" style="padding: 5px 5px;color:#000;width: 100%;height: 80px;resize:none;font-size: 14px" placeholder="个人简介" name="user_profile">${profile}</textarea> </td>
					</tr>
					<tr>
						<td class="tdtext">联系方式 :</td>
						<td class="tdin"><input type="text" name="user_phone" value="${phone}" onblur="phoneerrshow(this)" placeholder="联系方式"><a class="err">请输入正确的联系方式 !</a></td>
					</tr>
					<tr>
						<td class="tdtext">电子邮箱 :</td>
						<td class="tdin"><input type="text" name="user_email" value="${email}" onblur="emailerrshow(this)" placeholder="电子邮箱"><a class="err">请输入正确的电子邮箱 !</a></td>
					</tr>
					<tr>
						<td class="tdtext">出生年月 :</td>
						<td class="tdin">
							<select name="user_date" onchange="xz()">
								<option value="">年</option>
								<c:forEach var="year" begin="1990" end="2030">
                          			 <option ${y==year?'selected':'' }>${year }</option>
                   				</c:forEach>
							</select>
							<select name="user_date" onchange="xz()">
								<option value="">月</option>
								<c:forEach var="month" begin="01" end="12">
                          			 <option ${m==month?'selected':'' }>${month }</option>
                   				</c:forEach>
							</select>
							<select name="user_date" onchange="xz()">
								<option value="">日</option>
								<c:forEach var="date" begin="01" end="31">
                          			 <option ${d==date?'selected':'' }>${date }</option>
                   				</c:forEach>
							</select>
						</td>
					</tr>
					<tr>
						<td class="tdtext">星座 :</td>
						<td id="xz" style="font-weight:500"></td>
					</tr>
				</table>
			</form>
		</div>
	</div>
</body>
</html>