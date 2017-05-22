var bettingMoney = document.getElementById("betMoney");
var runHorse = document.getElementsByClassName("horseImg");
var player = [
	{
		myMoney:100000000, playerBetMoney:0, horseNum:0
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
	betting();
})

$(".horseImg").each(function(index,item){
	$(this).on("click",function(){
		$(".horseSelect").accordion({
			active : false,
			collapsible : true
		});
		player[0].horseNum = index;
		console.log(player[0].horseNum);
		console.log(index);
	})
})

$("#start-menu").on("click", function() {
	if(document.getElementById("betBtn").disabled) start();
	else alert("베팅을 먼저 해주세요.");
})

$(document).ready(function() {
	loadLevel();
});

function start() {
	$("#menus").hide("fade",{direction:"down",},"slow",init);
}

function betting(){
	player[0].playerBetMoney = bettingMoney.value;
	if((parseInt(player[0].playerBetMoney)%1000)==0){
		if(parseInt(player[0].playerBetMoney) <= player[0].myMoney){
			if(player[0].horseNum){
				document.getElementById("betBtn").disabled = true;
				document.getElementById("betMoney").disabled = true;
				selectFunc(player[0].horseNum);
				player[0].myMoney = player[0].myMoney - player[0].playerBetMoney;
				console.log(player[0].myMoney);
			}else alert("말을 선택해 주세요.");
		}else{
			alert("Not enough money!");
		}
	}else alert("베팅 최소 단위는 1000원 입니다.");
}

function giveBackMoney(winner){
	
	console.log("Player select : "+player[0].horseNum);
	console.log("winner : "+winner);
	
	if(player[0].horseNum == (winner-1)){
		alert("You Win!");
		switch(winner)
		{
			case 1:
				player[0].myMoney += (player[0].playerBetMoney)*3.5;
				break;
			case 2:
				player[0].myMoney += (player[0].playerBetMoney)*2;
				break;
			case 3:
				player[0].myMoney += (player[0].playerBetMoney)*2.5;
				break;
			case 4:
				player[0].myMoney += (player[0].playerBetMoney)*3;
				break;
			case 5:
				player[0].myMoney += (player[0].playerBetMoney)*1.1;
				break;
			
		}
		
	}
	else alert("You Lose!");
	console.log("Betting Money : "+player[0].playerBetMoney);
	console.log("Total Money : "+player[0].myMoney);
}

function selectFunc(tdNum){
	$(".horseSelcet").eq(tdNum).css("background","pink");
}
