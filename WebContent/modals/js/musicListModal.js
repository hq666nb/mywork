function showMusicListModal() {
	window.parent.document.getElementById("musicListModalIframe").style.display = "block";
}
function closeMusicListModal() {
	window.parent.document.getElementById("musicListModalIframe").style.display = "none";
}
function TrOnClick(event) {
	var itme = document.getElementsByClassName("itme");
	var itmere = document.getElementsByClassName("itmere");
	var itmele = document.getElementsByClassName("itmeLe");
		for (var i = 0; i < itme.length; i++) {
			if (itme[i] == event) {
				itme[i].style.background = "#e9e9e9";
				itmere[i].style.display = "block";
				itmele[i].getElementsByTagName("p")[0].style.whiteSpace="nowrap";
				itmele[i].getElementsByTagName("p")[0].style.width="8em";
				itmele[i].getElementsByTagName("p")[0].style.textOverflow="ellipsis";
				itmele[i].getElementsByTagName("p")[1].style.whiteSpace="nowrap";
				itmele[i].getElementsByTagName("p")[1].style.width="8em";
				itmele[i].getElementsByTagName("p")[1].style.textOverflow="ellipsis";
			}
			else {
				itme[i].style.background = "";
				itmere[i].style.display = "none";
				itmele[i].getElementsByTagName("p")[0].style.whiteSpace="";
				itmele[i].getElementsByTagName("p")[0].style.width="";
				itmele[i].getElementsByTagName("p")[0].style.textoOverflow="";
				itmele[i].getElementsByTagName("p")[1].style.whiteSpace="";
				itmele[i].getElementsByTagName("p")[1].style.width="";
				itmele[i].getElementsByTagName("p")[1].style.textoOverflow="";
			}
		}
}
window.onclick = function(event) {
    if (event.target == parent.window.frames["musicListModalIframe"].document.getElementById('musicListModal') ) {
    	window.parent.document.getElementById("musicListModalIframe").style.display = "none";
    }
}
