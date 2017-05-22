<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="jquery-1.11.2.min.js"></script>
<meta charset="UTF-8">
<title>Battle Web</title>
<style type="text/css">
html {
	-webkit-background-size: cover;
	-moz-background-size: cover;
	-o-background-size: cover;
	background-size: cover;
	overflow: hidden;
}

@font-face {
	font-family: 'starcraft'; /* 폰트 패밀리 이름 주기*/
	src: url('fonts/Starcraft.ttf'); /*폰트 파일 주소*/
}
@keyframes blink{
	from{
	opacity: 1;
	}
	to{
	opacity: 0.1;
	}
}
body {
	background: url('img/backgnd_space.jpg') top left;
	background-size: cover;
}

#view {
	margin-top: 2%;
	margin-left: 8%;
}

#container {
	width: 1600px;
	height: 1140px;
	background: url('img/chat_bkg.jpg') top no-repeat;
	background-size: contain;
	float: left;
}

#header {
	height: 250px;
	background: url('img/header.jpg') no-repeat;
	width: 1620px;
}

#batLogo {
	float: left;
	margin-top: 7.6%;
	margin-left: 14%;
	width: 1178px;
	height: 118px;
	border-color: rgba(255,255,255,0);
	background-size: 100% 100%;
}
#imgRotator{
border-color: rgba(255,255,255,0);
}

#sidebarLeft {
	width: 16%;
	height: auto;
	float: left;
}

/* section right  */
#sidebarRight {	
	margin-left: 1.8%;
	width: 28%;
	height: auto;
	float: left;
	border-color: red;
}
#messageWindow {
	margin-top: 1.3%;
	width: 99%;
	height: 380px;
	background-color: black;
	color: #1DDB16;
	font-size: 1.3em;
	border-color: rgba(255,255,255,0);

	/*width:446px;  */
}

#rightBtnArea {
	margin-left: 1%;
	margin-top: 7.5%;
}

#inputMessage {
	margin-top: 2%;
	width: 100%;
	height: 38px;
	background-color: black;
	color: #1DDB16;
	font-size: 1.3em;
}

/* Button CSS  */
#sendBtn {
	width: 210px;
	height: 70px;
	background: url('img/ccbut_75x35_1.jpg');
	background-size: 100% 100%;
	border-color: rgba(255, 255, 255, 0);
	color: white;
	font-size: 1.5em;
	margin-right: 10px;
}

#resetBtn {
	width: 210px;
	height: 70px;
	background: url('img/ccbut_75x35_1.jpg');
	background-size: 100% 100%;
	border-color: rgba(255, 255, 255, 0);
	color: white;
	font-size: 1.5em;
}

#toggleBtn {
	margin-top: 11%;
	margin-left: 1.1%;
	float: left;
	width: 90px;
	height: 60px;
	background: url('img/bnbutton3.jpg');
	background-size: 100% 100%;
	font-size: 1.1em;
	color: white;
	border-color: rgba(255, 255, 255, 0);
}

.leftBtn {
	margin-top: 1%;
	margin-left: 5%;
	float: left;
	text-align: center;
	width: 230px;
	height: 116px;
	background-image: url('img/bnbutton1.jpg');
	background-size: 100% 100%;
	border-color: rgba(255, 255, 255, 0);
	color: white;
	font-size: 1.4em;
}
/* Chatting headline */
#welcomeTag{
color:white;
margin-top: 6%;
margin-left: 20%;
animation: blink 1.5s 2s infinite ease-in-out alternate;

}
/* Animation 구현  */
.leftBtn:ACTIVE {
	background-image: url('img/bnbutton3.jpg');
	border-color: white;
}

#sendBtn:ACTIVE {
	background-image: url('img/bnbutton3.jpg');
	border-color: white;
}

#resetBtn:ACTIVE {
	background-image: url('img/bnbutton3.jpg');
	border-color: white;
}

/* 배너 전광판 start */
.intro-wrap {
	position: absolute;
	left: 0px;
	top: 0px;
	width: 100%;
	height: 100%;
	overflow: hidden;
}

.bgwrap {
	position: absolute;
	left: 0px;
	top: 0px;
	width: 100%;
	height: 100%;
}

.intro-wrap>.bgwrap>div {
	position: absolute;
	left: 100px;
	top: 100px;
	width: 168px;
	height: 1222px;
	text-align: center;
}

.intro-wrap>.bgwrap>div>img {
	height: 168px;
	width: 1222px;
	max-width: inherit;
}
/* 배너 전광판 end */

/*화면전환 애니메이션 시작*/
.center {
	margin-top: 1.5%;
	margin-left: 1.1%;
	width: 808px;
	height: 601px;
	float: left;
	border-width: thin;
	border-radius: 6pt 6pt 6pt 6pt;
	border-color: rgba(255, 255, 255, 0);
	background-color: black;
	position: relative;
    perspective: 80000px;
}

#cube {
  width: 100%;
  height: 100%;
  position: absolute;
  transform-style: preserve-3d;
}

#cube iframe {
	 margin: 0;
  margin-left: 20px;
  width: 750px;
  height: 590px;
  display: block;
  position: absolute;
  border: 2px solid black;
  backface-visibility: hidden;
}

#front  {transform: rotateY(0deg ) translateZ( 360px );}
#right  {transform: rotateY(90deg ) translateZ( 360px );}
#back   {transform: rotateY(180deg ) translateZ( 360px );}
#left   {transform: rotateY(270deg ) translateZ( 360px );}

@keyframes cube1{0% { opacity:1;       transform: scale(1,1) rotateY( 0deg ) translateZ( 360px );}
50% { transform: scale(0.75,0.75) rotateY( 45deg ) translateZ( 360px );}
100% { opacity:0;  transform: scale(1,1) rotateY( 90deg ) translateZ( 360px );}}

@keyframes cube2{0% { transform: scale(1,1) rotateY( 90deg ) translateZ( 360px );}
50% { transform: scale(0.75,0.75) rotateY( 135deg ) translateZ( 360px );}
100% {  transform: scale(1,1) rotateY( 180deg ) translateZ( 360px );}}

@keyframes cube3{0% { transform: scale(1,1) rotateY( 180deg ) translateZ( 360px );}
50% { transform: scale(0.75,0.75) rotateY( 225deg ) translateZ( 360px );}
100% {  transform: scale(1,1) rotateY( 270deg ) translateZ( 360px );}}

@keyframes cube4{0% {opacity:0; transform: scale(1,1) rotateY( 270deg ) translateZ( 360px );}
50% { transform: scale(0.75,0.75) rotateY(315deg ) translateZ( 360px );}
100% { opacity:1; transform: scale(1,1) rotateY( 360deg ) translateZ( 360px );}}

</style>
</head>
<body>
	<%
		String pid = request.getParameter("id");
	%>
	<div id="view">
		<div id="header">
        	<div id="batLogo"><iframe src="image_rotator.html" width=100% id="imgRotator"></iframe></div>            
		</div>
		<div id="container">
				<div id="sidebarLeft">
					<table>
						<tr>
							<td><button type="button" class="leftBtn" id="btn01"
									onclick="pushBtn1()">Home</button></td>
						</tr>
						<tr>
							<td><button type="button" class="leftBtn" id="btn02"
									onclick="pushBtn2()">PentA Board</button></td>
						</tr>
						<tr>
							<td><button type="button" class="leftBtn" id="btn03"
									onclick="pushBtn3()">일정관리</button></td>
						</tr>
						<tr>
							<td><button type="button" class="leftBtn" id="btn04"
									onclick="pushBtn4()">가로세로 낱말퍼즐</button></td>
						</tr>
						<tr>
							<td><button type="button" class="leftBtn" id="btn05"
									onclick="pushBtn5()">능력단위평가</button></td>
						</tr>
					</table>
				</div>

				<div class="center">		<!-- center  -->
					<div id="cube">
				<iframe id="front" src="localstorage_ans.html"></iframe>
				<iframe id="left" src="proj_quizKdb.html"></iframe>
				<iframe id="right" src="hwBoard1.html"></iframe>
				<iframe id="back" src="puzzle.html"></iframe>
					</div>
				</div>
				
				<div id="sidebarRight">
				<h1 id="welcomeTag">Welcome! <%=pid%>!!</h1>
					<textarea id="messageWindow" readonly="readonly"></textarea>
					<input type="text" id="inputMessage"
						onkeypress="if(event.keyCode==13)send();" />
					<div id="rightBtnArea">
						<button type="button" onclick="send()" id="sendBtn">Send</button>
						<button type="button" onclick="reset()" id="resetBtn">Reset</button>
					</div>
				</div>
		</div>
	</div>
</body>

<script type="text/javascript">
	/*
	jsp로 받은 pid 정보를 저장한다. webSocket 객체 초기화 및 접속 시도. 리스너를 통해 각 event 발생시 함수 호출.
	*/
	var pid="<%=pid%>";
	var toggleState = false; //content 화면의 크기 조절을 위한 변수
	var textarea = document.getElementById("messageWindow"); //채팅 내용이 기록될 textarea 객체를 id를 통해 받아온다.
	var webSocket = new WebSocket('ws://192.168.0.73:7080/term1/broadcasting'); //broadcast 모드로 webSocket을 접속시킨다.
	var inputMessage = document.getElementById('inputMessage');
	
	//애니메이션변수
	var storage="scheduler.html";
	
	var front = "localstorage_ans.html";
	var left = "proj_quizKdb.html";
	var back = "puzzle.html";
	var right = "hwBoard1.html";
	
	var schedulerSrc="scheduler.html";
	var localSrc="localstorage_ans.html";
	var quizKSrc="proj_quizKdb.html";
	var puzzleSrc="puzzle.html";
	var quizKSrc="proj_quizKdb.html";
	var hwBoardSrc="hwBoard1.html";

	var interval;


	
	webSocket.onerror = function(event) {
		onError(event)
	};
	webSocket.onopen = function(event) {
		onOpen(event)
	};
	webSocket.onmessage = function(event) {
		onMessage(event)
	};

	// client가 websocket으로 부터 message를 수신받을 시 발생. message는 [pid]/[message]의 형태.
	function onMessage(event) {
		// message 종류에 따라 textarea의 전송 내용을 분리한다.
		// 단일 메세지(접속 event)
		if (event.data.split("/")[1] == null) {
			textarea.value += event.data.split("/")[0];
		}
		// 복합 메세지(클라이언트의 메세지 전송 event)
		else {
			textarea.value += event.data.split("/")[0] + " : "
					+ event.data.split("/")[1] + "\n";
		}
	}

	//초기 접속 시 발생하는 event. 모든 client에 접속 message 전송. 
	function onOpen(event) {
		textarea.value += "연결 성공.\n";
		textarea.value += pid + " 님이 입장하였습니다.\n";
		webSocket.send(pid + " 님이 입장하였습니다.\n");
	}

	function onError(event) {
		alert(event.data);
	}
	//	webSocket 상으로 message 전송 및 자신의 textarea에 내용 update
	function send() {
		textarea.value += pid + " : " + inputMessage.value + "\n";
		webSocket.send(pid + "/" + inputMessage.value);
		inputMessage.value = "";
	}
	// textarea, inputMessage의 내용을 초기화
	function reset() {
		textarea.value = "";
		inputMessage.value = "";

	}
	// content(메인 화면)의 크기를 조절 할 수 있음. toggleBtn의 onClick event
	function toggleView(obj) {
		var display = document.getElementById("front"); //content가 front로 수정됨
		var rightView = document.getElementById("sidebarRight");
		if (toggleState == false) {
			display.style.width = "1288px";  //수치값 절대값으로 변경
			toggleState = true;
			rightView.style.visibility = "hidden";
			obj.value = "숨기기";
		} else {
			display.style.width = "750px";//수치값 절대값으로 변경
			toggleState = false;
			rightView.style.visibility = "visible";
			obj.value = "펼치기";

		}
		/* 메인 버튼 5개 onClick event*/
	}
	function pushBtn1() {
		/*var display = document.getElementById("content");
		display.src = "localstorage_ans.html";
		if (toggleState)
			toggleView(document.getElementById("toggleBtn"));
		toggleView(document.getElementById("toggleBtn"));
		rotate("2s forwards", 2001);*/
		document.getElementById("front").src=localSrc;
	}
	function pushBtn2() {
		/*var display = document.getElementById("content");
		display.src = "hwBoard1.html";*/		
		if (toggleState)
			toggleView(document.getElementById("toggleBtn"));
		if(front!=hwBoardSrc)	rotate("1s forwards",1001);		
		interval=setInterval(function search_star(){
			if(front!=hwBoardSrc) rotate("1s forwards",1001);
			else clearInterval(interval);}, 1052);
	}
	function pushBtn3() {
		/*var display = document.getElementById("content");
		display.src = "new.html";*/
		if (toggleState)
			toggleView(document.getElementById("toggleBtn"));
		if(front!=schedulerSrc)	rotate("1s forwards",1001);		
		interval=setInterval(function search_star(){
			if(front!=schedulerSrc) rotate("1s forwards",1001);
			else clearInterval(interval);}, 1052);	
			
	}
	function pushBtn4() {
		/*var display = document.getElementById("content");
		display.src = "puzzle.html";*/
		if (toggleState)
			toggleView(document.getElementById("toggleBtn"));
		if(front!=puzzleSrc)	rotate("1s forwards",1001);		
		interval=setInterval(function search_star(){
			if(front!=puzzleSrc) rotate("1s forwards",1001);
			else clearInterval(interval);}, 1052);	
		
	}
	function pushBtn5() {
		/*var display = document.getElementById("content");
		display.src = "proj_quizKdb.html";*/
		if (toggleState)
			toggleView(document.getElementById("toggleBtn"));
		
		if(front!=quizKSrc)	rotate("1s forwards",1001);		
		interval=setInterval(function search_star(){
			if(front!=quizKSrc) rotate("1s forwards",1001);
			else clearInterval(interval);}, 1052);	
	}

	// 배너 전광판 start
	var $imgList = $('.bgwrap>div'); // bgwrap div 안에 있는 div 자식들을 가져옴
	var nImgCount = $imgList.children().length; // 위에서 가져온 div 자식들의 개수
	var nDuration = 1900; // 이미지를 변경할 시간 (3000 = 3초)
	var bAuto = true; // 자동으로 변경할 지 여부
	var nIndex = 0; // 변경할 이미지의 Index

	if (bAuto == true) {
		setInterval(autoSlide, nDuration); // Javascript setInterval 함수 호출
	}
	function autoSlide() {
		var next = (++nIndex % nImgCount);
		$($imgList.get(next - 1)).fadeOut(1000);
		$($imgList.get(next)).fadeIn(1000);
	}
	// 배너 전광판 end
	
	function rotate(rotate_factor, check_time) {
	//버튼값 disabled
	document.getElementById("btn01").disabled="disabled";
	document.getElementById("btn02").disabled="disabled";
	document.getElementById("btn03").disabled="disabled";
	document.getElementById("btn04").disabled="disabled";
	document.getElementById("btn05").disabled="disabled";
	
	document.getElementById("front").style.animation = "cube1 "+rotate_factor;
	document.getElementById("right").style.animation = "cube2 "+rotate_factor;
	document.getElementById("back").style.animation = "cube3 "+rotate_factor;
	document.getElementById("left").style.animation = "cube4 "+rotate_factor;
	
	storage1 = front;
	front = left;
	document.getElementById("front").src = front;
	
	setTimeout(function move_value(){		
		left = back;
		back= right;
		right = storage;
		storage = storage1;
		
		document.getElementById("right").src = right;
		document.getElementById("back").src = back;
		document.getElementById("left").src = left;	
		
		document.getElementById("btn01").disabled=false;
		document.getElementById("btn02").disabled=false;
		document.getElementById("btn03").disabled=false;
		document.getElementById("btn04").disabled=false;
		document.getElementById("btn05").disabled=false;
		
		document.getElementById("front").style.animation =null;
		document.getElementById("back").style.animation =null;
		document.getElementById("right").style.animation =null;
		document.getElementById("left").style.animation =null;
		
		}, check_time);
		
	}
</script>
</html>
