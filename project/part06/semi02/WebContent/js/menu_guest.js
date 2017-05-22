var canvas=document.getElementById("game");
var ctx=canvas.getContext("2d");
var bettingMoney = document.getElementById("betMoney");
var runHorse = document.getElementsByClassName("horseImg");

var player = [
	{
		myMoney:100000000, curMoney:100000000, playerBetMoney:0, horseNum:NaN
	}
	]

// No Drag!!!
$(document).on("dragstart", function(e) {
	return false;
});

// No Select!!
$(document).on("selectstart", function(e) {
	return false;
});
$("#start-menu").on("mousedown", function() {
	$("#start-menu").css({
		"background" : "#202020",
		"border" : "9px solid #505050",
		"color" : "#bbbbbb",
		"height" : "47.5px",
		"width" : "190px",
		"borderRadius":"9px 9px 9px 9px"
	});
})
$("#start-menu").on("mouseup", function() {
	$("#start-menu").css({
		"background" : "gray",
		"border" : "10px solid #505050",
		"color" : "black",
		"height" : "50px",
		"width" : "200px",
		"borderRadius":"10px 10px 10px 10px"
	});
})


$("#betBtn").on("click",function(){
	player[0].playerBetMoney = bettingMoney.value;
	console.log(player[0].playerBetMoney)
	betting();
})
$("#allInBtn").on("click",function(){
	if(Number(player[0].horseNum)){
		bettingMoney.value = player[0].myMoney;
		player[0].playerBetMoney = bettingMoney.value;
		document.getElementById("allInBtn").disabled = true;
		betting();
	}else alert("You must select a horse!");
})

$(".horseImg").each(function(index,item){
		$(this).on("mousedown",function(){
			$(".horseSelect").accordion({
				active : false,
				collapsible : true
			});
			player[0].horseNum = (index+1);
			console.log(player[0].horseNum)
		})
})

$("#start-menu").on("click", function() {
	if(document.getElementById("betBtn").disabled){
		start();
		$("form").submit();
	}
	else alert("Betting first.");
})

$(document).ready(function() {
	loadLevel();
});

curMyMoney();

function start() {
	$("#menus").hide("fade",{direction:"down",},"slow",init);
/*	$("#menus").hide("fade",{direction:"down",},"slow",initView);
	$("#game-ing").show("fade",{direction:"down",},"slow",initView);*/
}

function betting(){
	if((parseInt(player[0].playerBetMoney)%1000)==0){
		player[0].curMoney = player[0].myMoney - player[0].playerBetMoney;
		if(parseInt(player[0].playerBetMoney)+player[0].curMoney <= player[0].myMoney){
			if(Number(player[0].horseNum)){
				document.getElementById("betBtn").disabled = true;
				document.getElementById("betMoney").disabled = true;
				selectFunc(player[0].horseNum);
				curMyMoney();
				console.log(player[0].curMoney);
				console.log(player[0].playerBetMoney);
			}else alert("말을 먼저 선택해주세요.");
		}else{
			alert("Not enough money!");
		}
	}else alert("배팅액의 최소 단위는 1000원 입니다.");
}

function giveBackMoney(winner){
	console.log("Player select : "+player[0].horseNum);
	console.log("winner : "+winner);
	if(player[0].horseNum == winner){
		alert("You Win!");
		switch(winner)
		{
			case 1:
				player[0].myMoney = (player[0].playerBetMoney)*3.5 + player[0].curMoney;
				break;
			case 2:
				player[0].myMoney = (player[0].playerBetMoney)*2 + player[0].curMoney;
				break;
			case 3:
				player[0].myMoney = (player[0].playerBetMoney)*2.5 + player[0].curMoney;
				break;
			case 4:
				player[0].myMoney = (player[0].playerBetMoney)*3 + player[0].curMoney;
				break;
			case 5:
				player[0].myMoney = (player[0].playerBetMoney)*1.1 + player[0].curMoney;
				break;
			
		}
		
	}
	else{
		alert("You Lose!");
		player[0].myMoney = player[0].curMoney;
	}
	console.log("Betting Money : "+player[0].playerBetMoney);
	console.log("Total Money : "+player[0].myMoney);
}

function renew(){
	var betMoney = $('#money', parent.frames["my_iframe"].document).val();   
	$("#curMoney").val(betMoney);
}

function selectFunc(tdNum){
	$(".horseSelcet").eq(tdNum).css("background","pink");
}

function curMyMoney(){
	$("#curMoney").val(player[0].curMoney);
}

/*
function loadLevel(){
	loadImage();
	initView();
	flowView();
}
function initView(){
	   background.image.onload=function(){
	      drawBackground(0);
	   }
	   track.image.onload=function(){
	      drawTrack();
	   }
	   fence.image.onload=function(){
	      drawFenceBack();
	      drawFenceFront(0);
	   }
	   crowd.image.onload=function(){
		   drawCrowd(0);
	   }
}

function flowView(){
	drawBackground(8);
	drawTrack();
	drawCrowd(5);
	drawFenceBack();
	drawFenceFront(2);
	setTimeout(function(){
		window.requestAnimationFrame(flowView);
		}, 1000/40);
}
function loadImage(){
	  // init image

  var trackImage=new Image();
  trackImage.src="img/track1.png";
  var backImage=new Image();
  backImage.src='img/hihi.png';
  var fenceImage=new Image();
  fenceImage.src="img/fence.png";
 var crowdImage=new Image();
 crowdImage.src="img/crowddd.png";

  track.image=trackImage;
  fence.image=fenceImage;
  background.image=backImage;
  crowd.image=crowdImage;
}
function drawBackground(dx){
	   if(background.x >=3072) background.x =0 ;
	   else background.x += dx;
	   ctx.beginPath();
	   ctx.drawImage(
	         background.image,
	         background.x,
	         background.y,
	         background.swidth,
	         background.sheight,
	         background.dx,
	         background.dy,
	         background.dwidth,
	         background.dheight
	         );
	   ctx.closePath();
	}
function drawCrowd(dx,xPos){
	if(xPos!=undefined)
		crowd.x=xPos;
		   if(crowd.x >=2560) crowd.x = -2800 ;
		   else crowd.x += dx;
		   ctx.beginPath();
		   ctx.drawImage(
		         crowd.image,
		         crowd.x,
		         crowd.y,
		         crowd.swidth,
		         crowd.sheight,
		         crowd.dx,
		         crowd.dy,
		         crowd.dwidth,
		         crowd.dheight
		         );
		   ctx.closePath();
}
function drawTrack(){
   ctx.beginPath();
   ctx.drawImage(
         track.image,
         track.x,
         track.y,
         track.swidth,
         track.sheight,
         track.dx,
         track.dy+40,
         track.dwidth,
         track.dheight*1.35
         );
   ctx.closePath();
   
}
function drawFenceBack(){
	   ctx.beginPath();
	   ctx.drawImage(
	         fence.image,
	         fence.x,
	         fence.y,
	         fence.swidth,
	         fence.sheight,
	         fence.dx,
	         fence.dy+33,
	         fence.dwidth*0.25,
	         fence.dheight*0.6
	         );
	   ctx.closePath();
	}

	function drawFenceFront(dx){
		   if(fence.x>=240) fence.x=0;
		   else fence.x+=dx;
		   ctx.beginPath();
		   ctx.drawImage(
		         fence.image,
		         fence.x,
		         fence.y,
		         fence.swidth,
		         fence.sheight,
		         fence.dx,
		         fence.dy+420,
		         fence.dwidth*0.5,
		         fence.dheight*2
		         );
		   ctx.closePath();
		}*/