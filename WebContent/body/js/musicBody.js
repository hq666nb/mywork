function TrOnClick(event) {
	var tbl = document.getElementById("td");
	var trs = tbl.getElementsByTagName("tr");
		for (var i = 0; i < trs.length; i++) {
			if (trs[i] == event) {
				trs[i].style.background = "#eee";
				document.getElementsByClassName("play")[i].style.display = "block";
				document.getElementsByClassName("next")[i].style.display = "block";
				document.getElementsByClassName("showaddss")[i].style.display = "block";
				try {
					document.getElementsByClassName("addLike")[i].style.display = "block";
				} catch (e) {
					// TODO: handle exception
				}
				try {
					document.getElementsByClassName("delLike")[i].style.display = "block";
				} catch (e) {
					// TODO: handle exception
				}
			}
			else {
				trs[i].style.background = "";
				document.getElementsByClassName("play")[i].style.display = "none";
				document.getElementsByClassName("next")[i].style.display = "none";
				document.getElementsByClassName("showaddss")[i].style.display = "none";
				try {
					document.getElementsByClassName("addLike")[i].style.display = "none";
				} catch (e) {
					// TODO: handle exception
				}
				try {
					document.getElementsByClassName("delLike")[i].style.display = "none";
				} catch (e) {
					// TODO: handle exception
				}
			}
		}
}

function addsscss(event) {
	var body = document.getElementsByClassName("modalBody")[0];
	var trs = body.getElementsByTagName("div");
		for (var i = 0; i < trs.length; i++) {
			if (trs[i] == event) {
				trs[i].style.background = "#eee";
			}
			else {
				trs[i].style.background = "";
			}
		}
}

function addLike(musicId,musicName) {
	var top=parent.window.frames["leftIframe"].document.getElementById("user").innerHTML;
	if(top=="用户登录"){
		alert("您还未登入，请先登入");
	}else{
		if(confirm("确认将歌曲 - "+musicName+" 添加至喜欢歌单吗？")==true){
			$.post("/MUSIC/insertUserLikeMusic.action?music_id="+musicId,function(data){
				if(data =="ok"){
					alert("已将歌曲 "+musicName+" 添加至喜欢歌单");
				}else{
					alert("该歌曲已在喜欢歌单");
				}
			});
		   return true;
		}else{
		   return false;
		}
	}
}

function delLike(musicId,musicName) {
	if(confirm("确认将歌曲 - "+musicName+" 从喜欢歌单中删除吗？")==true){
		$.post("/MUSIC/deleteUserLikeMusic.action?music_id="+musicId,function(data){
			if(data =="ok"){
				alert("已将歌曲 - "+musicName+" 从喜欢歌单中删除");
				window.location.reload();
			}else{
				alert("删除失败");
				window.location.reload();
			}
		});
	   return true;
	}else{
	   return false;
	}
}

function delss(musicId,musicName,ssId) {
	if(confirm("确认将歌曲 - "+musicName+" 从歌单中删除吗？")==true){
		$.post("/MUSIC/delMusicSongSheet.action",
		{songSheet_id:ssId,music_id:musicId},
		function(data){
			if(data =="ok"){
				alert("已将歌曲 - "+musicName+" 从歌单中删除");
				window.location.reload();
			}else{
				alert("删除失败");
				window.location.reload();
			}
		});
	   return true;
	}else{
	   return false;
	}
}

var musicId;
function showaddss(id) {
	var top=parent.window.frames["leftIframe"].document.getElementById("user").innerHTML;
	if(top=="用户登录"){
		alert("您还未登入，请先登入");
	}else{
		musicId=id;
		var addss=document.getElementById("addss");
		addss.style.display = "block";
	}
}

function addss(songSheetId) {
	$.post("/MUSIC/addMusicSongSheet.action",
		{songSheet_id:songSheetId,music_id:musicId},
		function(data){
			if(data =="ok"){
				alert("添加成功");
				coladdssModal();
			}else{
				alert("该歌单已有");
			}
		});
}

function coladdssModal() {
	var addss=document.getElementById("addss");
	addss.style.display = "none";
}

window.onclick = function(event) {
    if (event.target == document.getElementById('addss') ) {
    	document.getElementById("addss").style.display = "none";
    }
}