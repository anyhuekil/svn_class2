var bettingMoney = document.getElementById("betMoney");
var runHorse = document.getElementsByClassName("horseImg");
var readyFlag=false;
var player = [
	{
		id:"team1",myMoney:1000, curMoney:1000, playerBetMoney:100, horseNum:NaN
	},
	{
		id:"team2", myMoney:10000, curMoney:10000, playerBetMoney:6000, horseNum:NaN
	},
	{
		id:"team3", myMoney:600000, curMoney:600000, playerBetMoney:600000, horseNum:NaN
	},
	{
		id:"team4", myMoney:50000, curMoney:50000, playerBetMoney:1000, horseNum:NaN
	},
	{
		id:"team5", myMoney:6000, curMoney:6000, playerBetMoney:3000, horseNum:NaN
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

$(".horseExplain").on("mouseover",function(){
	$(this).effect("highlight","slow",window.setTimeout(function() {
		
	}, 1000))
})
	

function allocHorse(){
	generate = function(length)
	{
	    var arr = [];
	    var n;
	    for(var i=0; i<length; i++)
	    {
	        do
	            n = Math.floor(Math.random()*5+1);
	        while(arr.indexOf(n) !== -1)
	            
	       arr[i] = n;
	    }
	    
	    return arr;
	}
	var pool=generate(5);
	$.each(player,function(index,item){
		item.horseNum=pool[index];
	})
}


$("#start-menu").on("click", function() {
	$(this).effect("highlight",1000);
	if(readyFlag) start();
	else alert("Not ready.");
})





$(document).ready(function() {

	loadLevel();
	allocHorse();
	readyFlag=checkReady();
		
		
		$.each(player,function(index,player){
			setTimeout(function(){
			if(Number(player.horseNum)){
				$(".status").eq(player.horseNum-1).append("<br>"+player.id+" : "+player.playerBetMoney);
			}
			},1000*(index+1))
		})
			
		
	
});

function checkReady(){
	//TODO 占쎈쐻占쎈윥?됯쐼?앾옙?ο쭛?λ쨬占쎈즲占쎈쳮?좎럥?뺧옙?뽳옙?숋옙??ready 占쎈쐻占쎈윞筌띾??앾옙?↑눧占?癲ル슪??옙?묌뇦猿볦삕. 占쎈쐻占쎈윪?앗껊쐻占쎈윥?됰벩?앾옙猷욑옙??ready占쎌뒙占쎈뙔占쎌굲 占쎈쐻占쎈윞占쎈쭫占쎈쐻占쎈윪占쎌젳
	betting();
	console.log(player);
	return true;
}
function start() {
	$("#menus").hide("puff",1500,init);
}
function callResult(){
	calRank();
	$("#gameResult").hide("fade",1000);
	$("#game").hide("fade",2000,function(){
		$("body").css("background-image","url('img/jackpot_bg.jpg')");
		
		$("#finalResult").html("<img src=\"img/prize.png\"><span>"+player[0].id+" Win!!! Congratulations!!"+"</span>");
		$("#finalResult").append("<table id=\"playerStatus\" align=\"center\"><tbody></tbody></table>");
		$("#finalResult").show("fade",{direction:"down"},1000);
		$.each(player,function(index,item){
				$("#playerStatus > tbody:last").append("<tr><td>"+((index<3)?"<img src=\"img/"+index+".png\" class=\"medal\">":"")+"&nbsp;&nbsp;</td><td>"+item.id+"</td><td>&nbsp;&nbsp;&nbsp;&nbsp;</td><td>"+item.myMoney+"</td></tr>");
		})
		window.setTimeout(function() {
			$("#playerStatus").show("fade",2000);
		}, 2000);
	});
	
	
	

	
	
}
function betting(){
	$.each(player,function(index,item){
		item.curMoney = item.myMoney - item.playerBetMoney;
		if(item.playerBetMoney+item.curMoney <= item.myMoney){
			if(Number(item.horseNum)){
				console.log(item.curMoney);
				console.log(item.playerBetMoney);
			}else alert("You must select a horse.");
		}else{
			alert("Not enough money!");
		}
	})
		
		
}
function calRank(){
	player.sort(function(a,b){
		   if(a.myMoney>b.myMoney)
	             return -1;
	          else if(a.myMoney<b.myMoney)
	             return 1;
	          else
	             return 0;
	})
}

function giveBackMoney(winner){
	console.log("Player select : "+player[0].horseNum);
	console.log("winner : "+winner);
	$.each(player,function(index,item){
		if(item.horseNum==winner){
			item.myMoney = (item.playerBetMoney)*horses[item.horseNum-1].win_ratio+item.curMoney;
		}
		else{
			item.myMoney = item.curMoney;
		}
	})
	console.log(player);
	/*
	console.log("Betting Money : "+player[0].playerBetMoney);
	console.log("Total Money : "+player[0].myMoney);*/
}
