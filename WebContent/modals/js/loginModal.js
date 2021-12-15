function closeLoginModal() {
	window.parent.document.getElementById("loginModalIframe").style.display = "none";
}
function login() {
	if(document.getElementById("userName").value==""||document.getElementById("userPwd").value==""){
		document.getElementById("error").innerHTML="账号或密码不能为空";
	}else{
		$.post("/MUSIC/Login.action",$("#login_form").serialize(),function(data){
			if(data =="ok"){
				closeLoginModal();
				window.parent.frames["leftIframe"].document.location.reload();
				window.parent.frames["bodyIframe"].location.href="../toMusicBody.action";
				window.parent.frames["topIframe"].document.location.reload();
			}else{
				window.location.reload();
				alert("账号或密码错误");
			}
		});
	}
}
function Focus() {
	document.getElementById("error").innerHTML="";
}
window.onclick = function(event) {
    if (event.target == parent.window.frames["loginModalIframe"].document.getElementById('loginModal') ) {
    	window.parent.document.getElementById("loginModalIframe").style.display = "none";
    }
}