function closeMusicPlayView() {
	var audioDiv=window.parent.document.getElementById("bottemIframe");
	window.parent.document.getElementById("musicPlayViewIframe").style.display = "none";
	$(audioDiv).css({"position":"static"});
	$(audioDiv).css({"width":"100%"});
	parent.window.frames["bottemIframe"].document.getElementsByTagName("p")[0].style.color="#555555";
	parent.window.frames["bottemIframe"].document.getElementsByTagName("p")[1].style.color="#555555";
	parent.window.frames["bottemIframe"].document.getElementsByTagName("p")[2].style.color="#555555";
	parent.window.frames["bottemIframe"].document.getElementsByTagName("span")[0].style.color="#555555";
	parent.window.frames["bottemIframe"].document.getElementsByTagName("span")[1].style.color="#555555";
	parent.window.frames["bottemIframe"].document.getElementsByClassName("progress-bar")[0].style.background="#dddddd";
	parent.window.frames["bottemIframe"].document.getElementById("last").src="../images/last2.png";
	parent.window.frames["bottemIframe"].document.getElementById("next").src="../images/next2.png";
}