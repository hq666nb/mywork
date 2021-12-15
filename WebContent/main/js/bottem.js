function showMusicListModal() {
	window.parent.document.getElementById("musicListModalIframe").style.display = "block";
}

function showMusicPlayView() {
	var audioDiv=window.parent.document.getElementById("bottemIframe");
	window.parent.document.getElementById("musicPlayViewIframe").style.display = "block";
	$(audioDiv).css({"width":"98%"});
	$('.start,.end,#name,#musicList p').css({"color":"#ddd"});
	$('#singer').css({"color":"#ccc"});
	$(audioDiv).css({"left":"1%","right":"10","bottom":"0","position":"fixed"});
	$('.progress-bar').css({"background":"rgba(255,255,255,0.16)"});
	$('#last')[0].src="../images/last.png";
	$('#next')[0].src="../images/next.png";
}