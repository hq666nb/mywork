window.onload=function(){
	var self;
	var index=null;
	var lrc;
	var musicUrlList= new Array();
	var tableTr=$(parent.window.frames["bodyIframe"].document.getElementsByClassName("MusicTableTr"));
	var modalBody=parent.window.frames["musicListModalIframe"].document.getElementsByClassName("modalBody")[0];
	var audio = parent.window.frames["bottemIframe"].document.getElementById('audio')
	var start = parent.window.frames["bottemIframe"].document.querySelector('.start')
	var end = parent.window.frames["bottemIframe"].document.querySelector('.end')
	var progressBar = parent.window.frames["bottemIframe"].document.querySelector('#progressBar')
	var now = parent.window.frames["bottemIframe"].document.querySelector('.now')
	var left=parent.window.frames["leftIframe"].document.getElementsByTagName("li");
	var top=parent.window.frames["topIframe"].document.getElementsByTagName("li");
	var tableTrPlay=parent.window.frames["bodyIframe"].document.getElementsByClassName("play");
	var stopOrStartBt=parent.window.frames["bottemIframe"].document.getElementById("stopOrStart");
	var lastBt=parent.window.frames["bottemIframe"].document.getElementById("last");
	var nextBt=parent.window.frames["bottemIframe"].document.getElementById("next");
	var musicListitmere=parent.window.frames["musicListModalIframe"].document.getElementsByClassName("itmere");
	var delMusicList=parent.window.frames["musicListModalIframe"].document.getElementsByClassName("modalHead");
	var next=parent.window.frames["bodyIframe"].document.getElementsByClassName("next");
	var playAll=parent.window.frames["bodyIframe"].document.getElementById("playAll");
	var lrcDiv=parent.window.frames["musicPlayViewIframe"].document.getElementById("lrc");
	var lrcHead=parent.window.frames["musicPlayViewIframe"].document.getElementById("lrcHead");

	document.getElementById("bottemIframe").onload = function() {
		nextBt=parent.window.frames["bottemIframe"].document.getElementById("next");
		lastBt=parent.window.frames["bottemIframe"].document.getElementById("last");
		stopOrStartBt=parent.window.frames["bottemIframe"].document.getElementById("stopOrStart");
		now = parent.window.frames["bottemIframe"].document.querySelector('.now');
		progressBar = parent.window.frames["bottemIframe"].document.querySelector('#progressBar');
		end = parent.window.frames["bottemIframe"].document.querySelector('.end');
		start = parent.window.frames["bottemIframe"].document.querySelector('.start');
		audio = parent.window.frames["bottemIframe"].document.getElementById('audio');
		audio.onloadedmetadata=function(){loadedmetadata()}
		stopOrStartBt.onclick = function () {stopOrStart()}
		lastBt.onclick = function () {PlayLast()}
		nextBt.onclick = function () {PlayNext()}
		audio.addEventListener('ended', function () {  
			PlayNext()
	    }, false);
		progressBar.addEventListener('mousedown', function (event) {
			self=true;
		    var coordStart = this.getBoundingClientRect().left
		    var coordEnd = event.pageX
		    var p = (coordEnd - coordStart) / this.offsetWidth
		    now.style.width = p.toFixed(3) * 100 + '%'
		  });
		progressBar.addEventListener('mousemove', function (event) {
			if(self){
				var coordStart = this.getBoundingClientRect().left
			    var coordEnd = event.pageX
			    var p = (coordEnd - coordStart) / this.offsetWidth
			    if(p.toFixed(3) * 100>=100){
			    	now.style.width = "100%";
			    }else{
			    	now.style.width = p.toFixed(3) * 100 + '%'
			    }
			}
		  });
		progressBar.addEventListener("mouseup",function(event){
			var coordStart = this.getBoundingClientRect().left
		    var coordEnd = event.pageX
		    var p = (coordEnd - coordStart) / this.offsetWidth
		    self=false;
			try {
				audio.currentTime = p * audio.duration;
			} catch (e) {}
			});
	}
	document.getElementById("bodyIframe").onload = function() {   
		tableTrPlay=parent.window.frames["bodyIframe"].document.getElementsByClassName("play");
		next=parent.window.frames["bodyIframe"].document.getElementsByClassName("next");
		playAll=parent.window.frames["bodyIframe"].document.getElementById("playAll");
		for(var i=0;i<tableTrPlay.length;i++){
			(function(i){
				tableTrPlay[i].onclick = function(){
					play(i,this)
			       }
			   })(i)  
		}
		for(var i=0;i<tableTrPlay.length;i++){
			(function(i){
				next[i].onclick = function(){
			    	   addNext(i)
			       };
			   })(i)  
		}
		try {
			playAll.onclick = function () {play(0,this)}
			playCss();
		} catch (e) {}
    }
	document.getElementById("leftIframe").onload = function() {   
		left=parent.window.frames["leftIframe"].document.getElementsByTagName("li");
		for(var i=0;i<left.length;i++){
			left[i].getElementsByTagName("a")[0].onclick = function () { TrOnClick(this,0) }
		}
    } 
	document.getElementById("topIframe").onload = function() {   
		top=parent.window.frames["topIframe"].document.getElementsByTagName("li");
		for(var i=0;i<top.length;i++){
			top[i].getElementsByTagName("a")[0].onclick = function () { TrOnClick(this,1) }
		}
    }
	delMusicList[0].getElementsByTagName("p")[0].onclick=function(){delMusic()}
	audio.onloadedmetadata=function(){loadedmetadata()}
	stopOrStartBt.onclick = function () {stopOrStart()}
	playAll.onclick = function () {play(0,this)}
	lastBt.onclick = function () {PlayLast()}
	nextBt.onclick = function () {PlayNext()}
	for(var i=0;i<tableTrPlay.length;i++){
		(function(i){
			tableTrPlay[i].onclick = function(){
				play(i,this)
		       };
		   })(i)  
	}
	for(var i=0;i<tableTrPlay.length;i++){
		(function(i){
			next[i].onclick = function(){
		    	   addNext(i)
		       };
		   })(i)  
	}
	for(var i=0;i<left.length;i++){
		left[i].getElementsByTagName("a")[0].onclick = function () { TrOnClick(this,0) }
	}
	for(var i=0;i<top.length;i++){
		top[i].getElementsByTagName("a")[0].onclick = function () { TrOnClick(this,1) }
	}
	audio.addEventListener('ended', function () {  
		PlayNext()
    }, false);
	progressBar.addEventListener('mousedown', function (event) {
		self=true;
	    var coordStart = this.getBoundingClientRect().left
	    var coordEnd = event.pageX
	    var p = (coordEnd - coordStart) / this.offsetWidth
	    now.style.width = p.toFixed(3) * 100 + '%'
	  });
	progressBar.addEventListener('mousemove', function (event) {
		if(self){
			var coordStart = this.getBoundingClientRect().left
		    var coordEnd = event.pageX
		    var p = (coordEnd - coordStart) / this.offsetWidth
		    if(p.toFixed(3) * 100>=100){
		    	now.style.width = "100%";
		    }else{
		    	now.style.width = p.toFixed(3) * 100 + '%'
		    }
		}
	  });
	progressBar.addEventListener("mouseup",function(event){
		var coordStart = this.getBoundingClientRect().left
	    var coordEnd = event.pageX
	    var p = (coordEnd - coordStart) / this.offsetWidth
	    self=false;
		try {
			audio.currentTime = p * audio.duration;
		} catch (e) {}
		});
	
	function play(a,event) {
		if(index!=null&&event.parentNode.parentNode.getElementsByTagName("td")[3].innerHTML==parent.window.frames["bottemIframe"].document.getElementById("name").innerHTML){
			stopOrStart();
		}else{
			index=a;
			addMusic();
			getLyric(musicUrlList[index]);
		    getMusicFile(musicUrlList[index]);
		    getPictureFile(musicUrlList[index]);
		    audio.play();
		    playCss();
			for(var i=0;i<musicListitmere.length;i++){
				(function(i){
					musicListitmere[i].getElementsByTagName('a')[0].onclick = function(){
					musicListstopOrStart(i)
			       };
			   })(i)  
			}
		}
	}
	
	function PlayLast(){
		if(index<musicUrlList.length){
			if(index>0){
				index=index-1;
			}else{
				index=$(modalBody).children('div').length-1;	
			}
			getLyric(musicUrlList[index]);
			getMusicFile(musicUrlList[index]);
			getPictureFile(musicUrlList[index]);
			audio.play();
			playCss();
		}
	}
	
	function PlayNext(){
		if(index<musicUrlList.length){
			if(index>=$(modalBody).children('div').length-1){
				index=0;
			}else{
				index=index+1;
			}
			getLyric(musicUrlList[index]);
			getMusicFile(musicUrlList[index]);
			getPictureFile(musicUrlList[index]);
			audio.play();
			playCss();
		}
	}
	
	var t1 = window.setInterval(function(){
		var ts=document.getElementById('ts');
		ts.style.display = "none";
		},
		1600);
	
	function addNext(a) {
		var ts=document.getElementById('ts');
		tableTr=$(parent.window.frames["bodyIframe"].document.getElementsByClassName("MusicTableTr"));
		var url=tableTr.eq(a).children('td').eq(4).html();
		if(index!=null){
			for(var i=0;i<musicListitmere.length;i++){
				if($(modalBody).children('div').eq(i).children('div').eq(0).children('p').eq(0).html()==tableTr.eq(a).children('td').eq(3).html()){
					if(i>index){
						$(modalBody).children('div').eq(i).remove();
						musicUrlList.splice(i,1);
					}else if(i==index){
						document.getElementById('tstext').innerText="当前歌曲正在播放";
						ts.style.display = "block";
						t1;
						return false;
					}else{
						$(modalBody).children('div').eq(i).remove();
						musicUrlList.splice(i,1);
						index=index-1;
					}
				}
			}
			$(modalBody).children('div').eq(index).after("<div class='itme'onmouseover='TrOnClick(this)'>" +
					"<div class='itmeLe'>" +
						"<p style='font-size: 14px;'>"+tableTr.eq(a).children('td').eq(3).html()+"</p>" +
						"<p id='singer' style='font-size: 12px'>"+'- '+tableTr.eq(a).children('td').eq(1).html()+"</p>" +
					"</div>" +
					"<div class='itmere'>" +
						"<a style='color: #1ecf9f;'>▶</a>" +
						"<a style='color: red;font-size: 20px'>♡</a>" +
						"<a style='font-size: 16px'>╳</a>" +
					"</div>" +
				"</div>");
			musicUrlList.splice(index+1,0,[url]);
			document.getElementById('tstext').innerText="已添加至下一首";
			ts.style.display = "block";
		}else{
			$(modalBody).append("<div class='itme'onmouseover='TrOnClick(this)'>" +
			"<div class='itmeLe'>" +
				"<p style='font-size: 14px;'>"+tableTr.eq(a).children('td').eq(3).html()+"</p>" +
				"<p id='singer' style='font-size: 12px'>"+'- '+tableTr.eq(a).children('td').eq(1).html()+"</p>" +
			"</div>" +
			"<div class='itmere'>" +
				"<a style='color: #1ecf9f;'>▶</a>" +
				"<a style='color: red;font-size: 20px'>♡</a>" +
				"<a style='font-size: 16px'>╳</a>" +
			"</div>" +
			"</div>");
			musicUrlList.splice(1,0,[url]);
			musicListstopOrStart(0);
		}
		for(var i=0;i<musicListitmere.length;i++){
			(function(i){
				musicListitmere[i].getElementsByTagName('a')[0].onclick = function(){
				musicListstopOrStart(i)
		       };
		   })(i)  
		}
		t1;
		for(var i=0;i<$(modalBody).children('div').length;i++){
			(function(i){
				modalBody.getElementsByClassName("itmere")[i].getElementsByTagName("a")[1].onclick = function(){
					addLike(tableTr.eq(i).children('td').eq(5).html(),tableTr.eq(i).children('td').eq(3).html());
			       }
			   })(i) 
		}
		for(var i=0;i<$(modalBody).children('div').length;i++){
			(function(i){
				modalBody.getElementsByClassName("itmere")[i].getElementsByTagName("a")[2].onclick = function(){
					delByidMusic(i)
			       }
			   })(i) 
		}
		playCss();
	}
	
	function addMusic() {
		tableTr=$(parent.window.frames["bodyIframe"].document.getElementsByClassName("MusicTableTr"));
		musicUrlList = new Array();
		$(modalBody).empty();
		for(var i=0;i<tableTr.length;i++){
			musicUrlList.push(tableTr.eq(i).children('td').eq(4).html());
			$(modalBody).append("<div class='itme'onmouseover='TrOnClick(this)'>" +
					"<div class='itmeLe'>" +
						"<p style='font-size: 14px;'>"+tableTr.eq(i).children('td').eq(3).html()+"</p>" +
						"<p id='singer' style='font-size: 12px'>"+'- '+tableTr.eq(i).children('td').eq(1).html()+"</p>" +
					"</div>" +
					"<div class='itmere'>" +
						"<a style='color: #1ecf9f;'>▶</a>" +
						"<a style='color: red;font-size: 20px'>♡</a>" +
						"<a style='font-size: 16px'>╳</a>" +
					"</div>" +
				"</div>") 
		}
		for(var i=0;i<$(modalBody).children('div').length;i++){
			(function(i){
				modalBody.getElementsByClassName("itmere")[i].getElementsByTagName("a")[1].onclick = function(){
					addLike(tableTr.eq(i).children('td').eq(5).html(),tableTr.eq(i).children('td').eq(3).html());
			       }
			   })(i) 
		}
		for(var i=0;i<$(modalBody).children('div').length;i++){
			(function(i){
				modalBody.getElementsByClassName("itmere")[i].getElementsByTagName("a")[2].onclick = function(){
					delByidMusic(i)
			       }
			   })(i) 
		}
	}
	
	function delByidMusic(a) {
		musicUrlList.splice(a, 1);
		$(modalBody).children('div').eq(a).remove();
		if(a>index){
		}else if(a==index){
			if(a!=musicUrlList.length) {
				getLyric(musicUrlList[index]);
			    getMusicFile(musicUrlList[index]);
			    getPictureFile(musicUrlList[index]);
			}else if(musicUrlList.length==0){
				delMusic();
				return false;
			}else {
				getLyric(musicUrlList[0]);
			    getMusicFile(musicUrlList[0]);
			    getPictureFile(musicUrlList[0]);
			    index=0;
			}
		    audio.play();
		    playCss();
		}else{
			index=index-1;
		}
		for(var i=0;i<$(modalBody).children('div').length;i++){
			(function(i){
				modalBody.getElementsByClassName("itmere")[i].getElementsByTagName("a")[2].onclick = function(){
					delByidMusic(i)
			       }
			   })(i) 
		}
		for(var i=0;i<musicListitmere.length;i++){
			(function(i){
				musicListitmere[i].getElementsByTagName('a')[0].onclick = function(){
				musicListstopOrStart(i)
		       };
		   })(i)  
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
						alert("添加失败");
					}
				});
			   return true;
			}else{
			   return false;
			}
		}
	}
	
	function delMusic() {
		$(modalBody).empty();
		index=null;
		musicUrlList = new Array();
		window.parent.frames["bodyIframe"].document.location.reload();
		window.parent.frames["bottemIframe"].document.location.reload();
		window.parent.frames["musicPlayViewIframe"].document.location.reload();
	}
	
	var t2 = window.setInterval(function() {
		if(!self){
			start.innerHTML = conversion(audio.currentTime)
			now.style.width = audio.currentTime / audio.duration.toFixed(3) * 100 + '%'
		}
		if(!audio.paused){
			lrcCss();
		}
	}, 100)

	function loadedmetadata() {
		t2;
		lrcDiv=parent.window.frames["musicPlayViewIframe"].document.getElementById("lrc");
		$(lrcDiv).scrollTop(0);
		stopOrStartBt.src="../images/stop.png";
		end.innerHTML = conversion(audio.duration)
		start.innerHTML = conversion(audio.currentTime)
		parent.window.frames["bottemIframe"].document.getElementById("name").innerHTML=$(modalBody).children('div').eq(index).children('div').eq(0).children('p').eq(0).html();
	    parent.window.frames["bottemIframe"].document.getElementById("singer").innerHTML=$(modalBody).children('div').eq(index).children('div').eq(0).children('p').eq(1).html();
	}
	
	function stopOrStart() {
		if(musicUrlList.length>0){
			if(audio.paused){
				audio.play();
				stopOrStartBt.src="../images/stop.png";
				playCss();
			}else{
				audio.pause();
				stopOrStartBt.src="../images/start.png";
				playCss();
			}
		}
	} 
	
	function musicListstopOrStart(a) {
		if(a==index){
			stopOrStart();
		}else{
			index=a;
			getLyric(musicUrlList[index]);
			getMusicFile(musicUrlList[index]);
			getPictureFile(musicUrlList[index]);
			audio.play();
			playCss();
		}
	} 
	
	function playCss(){
		musicListitmere=parent.window.frames["musicListModalIframe"].document.getElementsByClassName("itmere");
		modalBody=parent.window.frames["musicListModalIframe"].document.getElementsByClassName("modalBody")[0];
		tableTr=$(parent.window.frames["bodyIframe"].document.getElementsByClassName("MusicTableTr"));
		try{
			var name=parent.window.frames["musicListModalIframe"].document.getElementsByClassName("itmeLe")[index].getElementsByTagName('p')[0].innerHTML;
		}catch(err){}
		for (var i = 0; i < musicUrlList.length; i++) {
			if (i!= index) {
				musicListitmere[i].getElementsByTagName('a')[0].innerHTML="▶";
				$(modalBody).children('div').eq(i).children('div').eq(0).children('p').css({"color":""});
			}else{
				$(modalBody).children('div').eq(index).children('div').eq(0).children('p').css({"color":"#1ecf9f"});
				if(audio.paused){
					musicListitmere[index].getElementsByTagName('a')[0].innerHTML="▶";
				}else{
					musicListitmere[index].getElementsByTagName('a')[0].innerHTML="l l";
				}
			}
		}
		for (var i = 0; i < tableTr.length; i++) {
			if (tableTr.eq(i).children('td').eq(3).html()!= name) {
				try{
					tableTrPlay[i].innerHTML="▶";
					parent.window.frames["bodyIframe"].document.getElementsByClassName("MusicTableTr")[i].style.color="";
				}catch(err){}
			}else{
				if(audio.paused){
					try{
						parent.window.frames["bodyIframe"].document.getElementsByClassName("MusicTableTr")[i].style.color="#1ecf9f";
						tableTrPlay[i].innerHTML="▶";
					}catch(err){}
				}else{
					try{
						parent.window.frames["bodyIframe"].document.getElementsByClassName("MusicTableTr")[i].style.color="#1ecf9f";
						tableTrPlay[i].innerHTML="l l";
					}catch(err){}
				}
			}
		}
	}
	
	function conversion(value) {
		var minute = Math.floor(value / 60)
		minute = minute.toString().length === 1 ? ('0' + minute) : minute
		var second = Math.round(value % 60)
		second = second.toString().length === 1 ? ('0' + second) : second
		return minute + ':' + second
	}
	
	function TrOnClick(event,a) {
		if(a==0){
			for (var i = 0; i < top.length; i++) {
				top[i].getElementsByTagName("a")[0].style.color = "#f5f5f5";
				top[i].getElementsByTagName("a")[0].style.fontWeight="";
			}
			for (var i = 0; i < left.length; i++) {
				if (left[i].getElementsByTagName("a")[0] == event) {
					left[i].style.background = "#1ecf9f";
					left[i].getElementsByTagName("a")[0].style.color = "#ffffff";
				}
				else {
					left[i].style.background = "";
					left[i].getElementsByTagName("a")[0].style.color = "#2e2e2e";
				}
			}
		}else{
			for (var i = 0; i < left.length; i++) {
				left[i].style.background = "";
				left[i].getElementsByTagName("a")[0].style.color = "#2e2e2e";
			}
			for (var i = 0; i < top.length; i++) {
				if (top[i].getElementsByTagName("a")[0] == event) {
					top[i].getElementsByTagName("a")[0].style.color = "#ffdc00";
					top[i].getElementsByTagName("a")[0].style.fontWeight="bold";
				}
				else {
					top[i].getElementsByTagName("a")[0].style.color = "#f5f5f5";
					top[i].getElementsByTagName("a")[0].style.fontWeight="";
				}
			}
		}
	}
	
	function getMusicFile(MusicfileUrl) {
		var xmlResquest = new XMLHttpRequest();
	    xmlResquest.open("POST", "/MUSIC/getFile.action?fileName="+MusicfileUrl, true);
	    xmlResquest.responseType = "blob";
	    xmlResquest.onload = function (oEvent) {
	        var content = xmlResquest.response;
	        var blob = new Blob([content]);
	        var url = URL.createObjectURL(blob);
	        parent.window.frames["bottemIframe"].document.getElementById("audio").src=url;
	    };
	    xmlResquest.send();
	}

	function getPictureFile(MusicfileUrl){
		var xmlResquest = new XMLHttpRequest();
	    xmlResquest.open("POST", "/MUSIC/getPictureFile.action?fileName="+MusicfileUrl, true);
	    xmlResquest.responseType = "blob";
	    xmlResquest.onload = function (oEvent) {
	        var content = xmlResquest.response;
	        var blob = new Blob([content]);
	        var url = URL.createObjectURL(blob);
	        parent.window.frames["bottemIframe"].document.getElementById("picture").src=url;
	        parent.window.frames["musicPlayViewIframe"].document.getElementById("backPictrue").style.backgroundImage="url("+url+")";
	        parent.window.frames["musicPlayViewIframe"].document.getElementById("playViewImg").src=url;
	    };
	    xmlResquest.send();
	}
	
	function getLyric(MusicfileUrl) {
		lrcDiv=parent.window.frames["musicPlayViewIframe"].document.getElementById("lrc");
	    var request = new XMLHttpRequest();
	    request.open('GET',"/MUSIC/getLyric.action?fileName="+MusicfileUrl, true);
	    request.responseType = 'text';
	    request.onload = function() {
	        var lyric = request.response;
	        lrc=parseLyric(lyric);
	        $(lrcDiv).empty();
	        $(lrcHead).children('p').eq(0).text(lyric.split('\n')[0].split(':')[1].split(']')[0]);
	        $(lrcHead).children('p').eq(1).text("歌手："+lyric.split('\n')[1].split(':')[1].split(']')[0]);
	        $(lrcHead).children('p').eq(2).text("专辑："+lyric.split('\n')[2].split(':')[1].split(']')[0]);
	        for(var i=0;i<lrc.length;i++){
	        	$(lrcDiv).append("<p><span>"+lrc[i][0]+"</span>"+lrc[i][1]+"</p>");
			}
	    };
	    request.send();
	}
	
	function parseLyric(text){
		result = [];
		var lrc=text.split('\n');
		for(var i=5;i<lrc.length-1;i++){
			var time=makeDurationToSeconds(lrc[i].split('[')[1].split(']')[0]);
			var value=lrc[i].split(']')[1];
			if(value!=""){
				result.push([time, value]);
			}
		}
		return result;
	}
	
	function makeDurationToSeconds(time){
		var str = time;
		var arr = str.split(':');
		var hs = arr[0]*60*1;
		var ms = arr[1]*1;
		var seconds = hs + ms;
		return seconds;
	}
	
	function lrcCss() {
		try{
			for (var i = 0;i<lrc.length; i++) {
				try {
					if(audio.currentTime>lrc[i][0]&&audio.currentTime.toFixed(2)<lrc[i+1][0]){
						$(lrcDiv).children('p').eq(i).css({"color":"#1ecf9f"});
			        	$(lrcDiv).children('p').eq(i).css({"font-size":"18px"});
			        	if(i>4){
			        		$(lrcDiv).scrollTop((i - 3) * 36);
			        	}
					}else{
						$(lrcDiv).children('p').eq(i).css({"color":"#ffffff"});
		    			$(lrcDiv).children('p').eq(i).css({"font-size":"16px"});
					}
				} catch (e) {
					$(lrcDiv).children('p').eq(i).css({"color":"#1ecf9f"});
		        	$(lrcDiv).children('p').eq(i).css({"font-size":"18px"});
		        	$(lrcDiv).scrollTop((i - 4) * 36);
				}
		    }
		}catch(err){}
	}
	
}
