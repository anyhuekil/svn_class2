$(function(){
	
	initIcon();
	
	// LOGIN
	$("#logout").click(function(){
		$("#hdLogin").val("logout");
		$("form").submit();
	});
	$("#loginBtn").click(function(){
		$("#hdLogin").val("login");
		$("form").submit();
	});
	
	$("#regBtn").click(function(){
		$("body").append("<form action='gameProcLogin.jsp' method='post'><div class='ui-reg'>" +
				"<input type='hidden' id='hdLogin' name='hdPageChoice' value='reg'/>" +
				"<input type='text' class='ui-inner-reg-detail' placeholder='insert id' name='id'/>" +	
				"<input type='password' class='ui-inner-reg-detail' placeholder='insert password' name='pwd'/>" +
				"<input type='text' class='ui-inner-reg-detail' placeholder='insert name' name='name'/>" +
				"<input type='submit' value='confirm'/>" +
		"</div></form>");
	});
	
	$(".ui-inner-reg-detail-btn").click(function(){
		alert("1");
		$("form").submit();
	});
	
	$("#gameInfo").click(function(){
		$(".modal.fade").css("display","block");
	});
	
	//GAME1
	
	$(".btn.start").click(function(){
		beskinStart();
	});
	
	$("#GameImg1").click(function(){
		$("#hdGameChoice").val("game1.jsp");
		$("#loserName").val(pissed);
		getWidth();
		$("form").submit();
		
	});
	$("#GameImg2").click(function(){
		$("#hdGameChoice").val("game2.jsp");
		$("#loserName").val(pissed);
		getWidth();
		$("form").submit();
	});
	$("#GameImg3").click(function(){
		$("#hdGameChoice").val("game3.jsp");
		$("#loserName").val(pissed);
		getWidth();
		$("form").submit();

	});
	$("button#homeBtn").click(function(){
		$("#homeType").val("third");
		$("form").submit();
	});
	
	//GAME2
	
	$("button#start").click(function() {
		capDurabilityMax = 130;
		capDurabilityMin = 80;
		capDurability = parseInt((Math.random() * (capDurabilityMax- capDurabilityMin + 1)) + capDurabilityMin);
		alert("Start : " + capDurability);
	});

	$("#iHitEverything").click(function() {
		if(turnGameOne == playerNum) turnGameOne = 0;
		capHitValue = parseInt((Math.random() * 30 + 1));
		capDurability -= capHitValue;
		alert(playerName[turnGameOne]+"님 HIT!! - " + "파워 : "+capHitValue + ",  남은 강도: " + capDurability);
		if (capDurability <= 0) {
			alert(playerName[turnGameOne]+"님 걸렸습니다. 원 샷 !");
			operateAlcoholBar(playerName[turnGameOne]);
		}
		turnGameOne ++ ;
	});
	
	$("#udstart").click(function() {
		upDownValue = parseInt((Math.random() * 50 + 1));
		document.getElementById("upDownvalue").max = 50;
		document.getElementById("upDownvalue").min = 1;
		count = 1;
	})
	$("#rangevalue1").val($("#upDownvalue").val());
	$("#upDownSend").click(function() {
		if(turnGameTwo == playerNum) turnGameTwo = 0;
			var CpValue = document.getElementById("rangevalue1").value;
			if (upDownValue == CpValue) {
				alert(playerName[turnGameTwo]+"님 걸렸습니다. 원 샷!");
				operateAlcoholBar(playerName[turnGameTwo]);
			}
			if (upDownValue > CpValue) {
				alert(playerName[turnGameTwo]+"님 UP 입니다.");
				document
						.getElementById("upDownvalue").min = CpValue;
			}
			if (upDownValue < CpValue) {
				alert(playerName[turnGameTwo]+"님 DOWN 입니다.");
				document.getElementById("upDownvalue").max = CpValue;
			}
			if (count == 5) {
				alert("5번의 기회를 모두 사용하셨습니다. "+playerName[turnGameTwo]+"님 원 샷 !");
				operateAlcoholBar(playerName[turnGameTwo]);
			}
			if (count < 5) {
				alert(count + "th");
				count++;
			}
			turnGameTwo ++ ;
		});
	//GAME3
	$("td").each(function(i){
		$(this).on("click",function(){
			if(turnGameThree == playerNum) turnGameThree = 0;
			if($(this).hasClass("gray") || $(this).hasClass("green") == true){
				alert("이미 선택한 것입니다\n 다른거 선택하세요.");
			} else if($(this).hasClass("blue") || $(this).hasClass("orange")|| $(this).hasClass("white") == true){
				$("#gameExplan").html("<h3>"+playerName[turnGameThree] +"차례 입니다. "+playGame[ranIdx]+"</h3>");
				turnGameThree2 = turnGameThree;
				$("#drinkNum").html("<h3> 술잔 : 1 </h3>");
				$(this).addClass("gray");
				ranIdx = parseInt(Math.random()*16); 
				turnGameThree ++ ;
			} 
		});
	});
});

function getWidth(){
	for(var i=0; i<playerNum; i++){
		$(".width").eq(i).val($(".ui-playerName").eq(i).next().width());
	}
}
function initIcon(){
	$(".modal-container").append("<img src='./img/logo.png' class='logoImg'/>");
	$(".ui-modal-content").each(function(idx,item){
		for(var i=0; i<idx+1; i++) $(item).append("<img src='./img/person.png' class='personImg'/>");
		if(idx >= 2) $(item).children().addClass("height");
	});
}
function playerNameCall(n){
	var num = 0;
	var text="";
	if(n==1) {
		num=1;
		text="20%";
	}
	if(n==2) {
		num=2;
		text="15%";
	}
	if(n==3) {
		num=3;
		text="10%";
	}
	if(n==4) {
		num=4;
	}
	$(".modal-wrapper").css("display","none");
	$(".modal-container").append("<div class='modal-wrapper-playerName'></div>");
	$(".modal-wrapper-playerName").append("<div class='ui-modal-title2'><h1 class='playerName'>Add players<h1></div>");

	for(var i=0; i<num; i++){
		$(".modal-wrapper-playerName").append("<div class='modal-content-playerName'><span id='playerStyle'>PLAYER"+(i+1)+
				"</span><input type='text' class='ui-modal-playerName' name='players' placeholder='Enter Name Here'/></div>");
	}
	$(".modal-wrapper-playerName").append("<div class='modal-content-playerName'><button class='btn next'>MOVE</button></div>");
	$(".modal-content-playerName").css("top",text);
	$("form").append(".modal-wrapper-playerName");
	
	$(".btn.next").click(function(){
		$(".ui-modal-playerName").each(function(index, item){
			//playerName[i] = $(item).val();
		});
		//$(location).attr("href","main.jsp");
		$("form").submit();
	});
}
// main.jsp
function playerInfoSetting(){
	for(var i=0; i<playerNum; i++ ){
		$(".ui-playerInfo").append("<div class='players-content "+playerName[i]+"'><span id='main-playerStyle'>Player"+(i+1) + " : "+playerName[i]  + "</span></div>");	
		$(".modal-content-playerName").addClass(" "+playerName[i]);
		$("#mainForm").append("<input type='hidden' class = 'width' name='width'/>");
	}
	$(".ui-playerInfo").append("<button class='btn back'>Go back to the first page</button>");
	$(".btn.back").click(function(){
		$(location).attr("href","intro.jsp");
	});	
}
// main.jsp
function gameSetting(playerNum){
	for(var i=0; i<playerNum; i++){
		$(".wrapper-userIcon").append("<li class='ui-user "+playerName[i]+"' id='"+playerName[i]+"'><img src='./img/user.png'></li>");
		$(".game.yell.real").append("<div class='ui-yell real "+playerName[i]+"' id='"+playerName[i]+"'><img src='./img/yell.jpg'></div>");
		$(".game.yell.fake").append("<div class='ui-yell fake "+playerName[i]+"' id='"+playerName[i]+"'><h2 id='yellNum'></h2></div>");
	}
}
// main.jsp
//var totNum = 0;
function callRandom(isSuccess){
	var countNum = (parseInt)(Math.random() * 3 )+1;
	var isSuccess = isSuccess;
	var show = "";
	
	if(!isSuccess){
		var lossKind = (parseInt)(Math.random() * 2 );
		if(lossKind == 0){
			for(var i = (totNum+2); i<(totNum + countNum + 2); i++){
				show += i +" ";
			}	
			lossMsg = (totNum+2)+"가 아니라 "+(totNum+1)+"를 불렀어야지요";
		}
		if(lossKind == 1){
			for(var i = totNum; i<(totNum + countNum); i++){
				show += i +" ";
			}	
			lossMsg = (totNum)+"가 아니라 "+(totNum+1)+"를 불렀어야지요";
		}
	}
	if(isSuccess){
		for(var i = (totNum+1); i<(totNum + countNum + 1); i++){
			show += i +" ";
		}
	}
	
	totNum += countNum;
	$(".ui-yell.fake > h2").append(show);

	return isSuccess;
}
	
// main.jsp
function beskinStart(){
	var isSuccess = true; 
	var pos = 0;
	totNum = 0;
	var intervalObj = "";
	var sucIdenNum = 0; 
	
	$(".msg").remove();
	if(playerNum >= 2){
		setTimeout(function(){
			intervalObj = setInterval(function(){
					$(".ui-yell").css("visibility","hidden"); 
					$(".ui-yell.fake > h2 ").html(""); 
					
					isSuccess = callRandom(isSuccess); // 0, 1, 2
					
					$(".ui-yell.real").eq(pos).css("visibility","visible");
					$(".ui-yell.fake").eq(pos).css("visibility","visible");
					
					if(!isSuccess) {
						$(".ui-gameSection").append("<div class='msg'><h2>"+ $(".ui-yell.real").eq(pos).attr("id") + "님 틀렸습니다. 원 샷!! " +
								"<br>"+lossMsg+"</h2></div>");
						loserName = $(".ui-yell.real").eq(pos).attr("id");// var loserName
						clearInterval(intervalObj);
						operateAlcoholBar(loserName);
					}
					pos++;
					if(pos == playerNum) pos = 0;
					sucIdenNum = (parseInt)(Math.random() * 2 );
					if(sucIdenNum == 0) isSuccess = false;
					else isSuccess = true;
				},1200);
		}, 1000);
	} else {
		alert("not many enough players");
	}
}
// Alcohol Bar Setting
function alcoholBarSetting(){
	var color = "";
	for(var i=0; i<playerNum; i++) {
		$(".ui-alcoholBar").append("<div class='alcohol-wrapper "+playerName[i]+"'>" +
				" <div class='ui-playerName' id='"+playerName[i]+"'>Player"+(i+1) +" : "+playerName[i]+"</div>" +
				" <div class='ui-alcohol' style='width:"+widthArr[i]+"px'></div>" +
				"</div>");
	}
	for(var i=0; i<widthArr.length; i++){
		if($(".ui-alcohol").eq(i).width() == ($(".alcohol-wrapper").width() * 0.25)) {color = "green"; }
		if($(".ui-alcohol").eq(i).width() == ($(".alcohol-wrapper").width() * 0.5)) {color = "pink"; }
		if($(".ui-alcohol").eq(i).width() == ($(".alcohol-wrapper").width() * 0.75)) {color = "red"; }
		$(".ui-alcohol").eq(i).css("backgroundColor",color);
	}
}
//var pissed = "";
function operateAlcoholBar(loserName){
	var $loser = "";
	var color = "";
	var isDrunk = false;
	$(".ui-playerName").each(function(index,item){
		if( $(".ui-playerName").eq(index).attr("id") == loserName ) 
			$loser = $(".ui-playerName").eq(index).next();
	});
	var size = $(".alcohol-wrapper").width() / 4;
	$loser.animate({width: '+=70px'}, "slow");
	if($loser.width() + size == ($(".alcohol-wrapper").width() * 0.25)) {color = "green"; }
	if($loser.width() + size == ($(".alcohol-wrapper").width() * 0.5)) {color = "pink"; }
	if($loser.width() + size == ($(".alcohol-wrapper").width() * 0.75)) {color = "red"; }
	if($loser.width() + size == $(".alcohol-wrapper").width()) {color = "black"; isDrunk = true;}
	$loser.css("backgroundColor",color);
	
	if(isDrunk) {
		$("body").append("<div class='playerOut'><h1 class='lossMsg'>"+loserName+"님 만취했습니다. </h1></div></div>");
		pissed = loserName;
	}	
	$(".playerOut").on("click",function(){
		$(this).remove();
		$(".ui-yell.real").each(function(index,item){
			if( $(".ui-yell.real").eq(index).hasClass(loserName) == true )
				$(".ui-yell.real").eq(index).remove();
		});
		$(".ui-yell.fake").each(function(index,item){
			if( $(".ui-yell.fake").eq(index).hasClass(loserName) == true )
				$(".ui-yell.fake").eq(index).remove();
		});
		$(".ui-user").each(function(index,item){
			if( $(".ui-user").eq(index).hasClass(loserName) == true )
				$(".ui-user").eq(index).remove();
		});	
		$(".players-content").each(function(index,item){
			if( $(".players-content").eq(index).hasClass(loserName) == true )
				$(".players-content").eq(index).remove();
		});	
		$(".alcohol-wrapper").each(function(index,item){
			if( $(".alcohol-wrapper").eq(index).hasClass(loserName) == true )
				$(".alcohol-wrapper").eq(index).remove();
		});	
		$(".modal-content-playerName").each(function(index,item){
			if( $(".modal-content-playerName").eq(index).hasClass(loserName) == true )
				$(".modal-content-playerName").eq(index).remove();
		});	
		playerNum -- ; 
	});
}

function start01(){
	resetTD();
	var ranColor;
	var tdColor;
	
	for(var i=0; i<16;i++){ 
		ranColor = parseInt(Math.random()*3);
		if(ranColor==0){
			tdColor="blue";
		}else if(ranColor==1){
			tdColor="orange";
		}else{
			tdColor="white";
		}
		$("td").eq(i).addClass(tdColor);
	}
	
 	ranIdx = parseInt(Math.random()*16);
			
}

//game3

function resetTD(){
	$("td").each(function(){
		$(this).removeClass("blue orange green gray");
	});
}

function reset01(){ 
	$("#drinkNum").html("술잔 : 0");
	resetTD();
	alert("술잔 초기화");
}

function clearMission(){ //占쎈쐻占쎈윞占쎈렰�뜝�뜦維�甕곕뵃�삕筌묕옙 占쎈쐻占쎈윥占쎈뼁占쎈쐻占쎈윪占쎄턂 �뜝�럥竊뤷뜝�럥�맃占쎈뎨�ⓦ끉�굲�뜝�럥瑗� 占쎈탶�⑤슣維볟뜝�럥愿� 
	$("#gameExplan").html("<h3>수행완료 다음분 뽑으세요</h3>")
	$("#drinkNum").html("<h3>술잔 : 0 </h3>");
}

function failMission(){ //雅�猿뗪섬筌�琉꾩삕�뜝占� 占쎈쐻占쎈윥占쎈묄占쎈쐻占쎈윥筌묕옙 X 占쎈쐻占쎈윥占쎈꺔占쎈쐻占쎈윥占쎈염 占쎈쐻占쎈윪�굢�뀘�쐻占쎈윥獒뺧옙 占쎈쐻占쎈윥占쎈뼁占쎈쐻占쎈윪占쎄턂 占쎈눇�뙼�봿�뮝�뜝�럥�꼧癲ル슣�돸占쎌굲占쎌뒙占쎈뙔占쎌굲 占쎈쐻占쎈윪�얠±�쐻占쎈윥筌욑옙
	$("#drinkNum").html("<h3>술잔 : 0 </h3>");
	$("#gameExplan").html("<h3>"+playerName[turnGameThree2]+"님 원샷 ! 다음분 뽑으세요!</h3>");
	operateAlcoholBar(playerName[turnGameThree2]);
}
