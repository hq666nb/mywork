function closeAddsongSheetModal() {
	window.parent.document.getElementById("songSheetModalIframe").style.display = "none";
}

window.onclick = function(event) {
    if (event.target == parent.window.frames["songSheetModalIframe"].document.getElementById('addsongSheet') ) {
    	window.parent.document.getElementById("songSheetModalIframe").style.display = "none";
    }
}

function addsongSheet() {
	var songSheetName=document.getElementById("songSheetName");
	if(songSheetName.value==""||songSheetName.value.length>6){
		document.getElementById("error").style.display = "block";
	}else{
		$.post("/MUSIC/addSongSheet.action",$("#AddsongSheet_form").serialize(),function(data){
			if(data =="ok"){
				closeAddsongSheetModal();
				window.parent.frames["leftIframe"].document.location.reload();
				window.parent.frames["bodyIframe"].location.href="../toMusicBody.action";
				window.parent.frames["topIframe"].document.location.reload();
			}else{
				window.location.reload();
				alert("创建失败");
			}
		});
	}
}

function Focus() {
	document.getElementById("error").style.display = "none";
}