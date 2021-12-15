window.onload=function(){
	var xmlResquest = new XMLHttpRequest();
    xmlResquest.open("POST", "/MUSIC/getImgFile.action", true);
    xmlResquest.responseType = "blob";
    xmlResquest.onload = function (oEvent) {
        var content = xmlResquest.response;
        var blob = new Blob([content]);
        var url = URL.createObjectURL(blob);
        document.getElementsByTagName("img")[0].src=url;
    };
    xmlResquest.send();
}
function showLoginModal() {
	window.parent.frames["loginModalIframe"].document.location.reload();
	window.parent.document.getElementById("loginModalIframe").style.display = "block";
}
function logOut(){
	$.post("/MUSIC/LogOut.action",function(data){
		window.parent.frames["bodyIframe"].location.href="toMusicBody.action";
		window.parent.frames["topIframe"].document.location.reload();
		window.location.reload();
	});
}
function showSongSheet() {
	var SongSheet=document.getElementsByClassName("SongSheet")[0];
	var style = document.defaultView.getComputedStyle(SongSheet, null);
	if(style.display=="none"){
		SongSheet.style.display = "block";
	}else{
		SongSheet.style.display = "none";
	}
}
function showaddsongSheet() {
	var top=parent.window.frames["leftIframe"].document.getElementById("user").innerHTML;
	if(top=="用户登录"){
		alert("您还未登入，请先登入");
		return false;
	}
	window.parent.frames["songSheetModalIframe"].document.location.reload();
	window.parent.document.getElementById("songSheetModalIframe").style.display = "block";
}