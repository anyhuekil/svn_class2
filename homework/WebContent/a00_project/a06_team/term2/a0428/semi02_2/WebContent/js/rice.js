var X_array_1 = new Array(3);
X_array_1 = ["","1.jpg",""];
var ran;
var ran_a = new Array;
var buffer;
var k=0;
var myplay;
var answer;
//var webSocket = new WebSocket("ws://localhost:8181/Z_study/server_ws");
var webSocket1 = new WebSocket("ws://localhost:6080/semi02_2/server_ws");
var webSocket2 = new WebSocket("ws://localhost:6080/semi02_2/broadcast");

webSocket1.onopen = function(message){
    messageTextArea.value += "Server connect...\n";
};        
/*webSocket1.onopen = function(message){        	
    messageTextArea.value += "Server1 connect...\n";
};*/        
webSocket2.onopen = function(message){        	
    messageTextArea.value += "Server2 connect...\n";
};

function ready_g1(){	
	webSocket2.send($("h1").text());
	console.log($("h1").text());
	return false;
}



$(document).ready(function(){
	var i=0;	
	do{
		ran = Math.floor(Math.random() * X_array_1.length);
		if(ran != ran_a[i-1]){
			ran_a[i] = ran;
			i++;
			}
	}		
	while(ran_a.length<10)
		webSocket1.onopen = function(message){
        console.log("Server connect\n");
    };
		});



function main_pjt(){
	input_src(X_array_1[0],X_array_1[1],X_array_1[2]);	
	myplay = setInterval(function(){ myTimer() }, 1010);
}

function myTimer() {
	input_src(X_array_1[0],X_array_1[1],X_array_1[2]);
	ani(ran_a[k]);
	swap_val(ran_a[k]);	
	k++;
	if(k==8){
		clearInterval(myplay);
		console.log(X_array_1[0]);
		console.log(X_array_1[1]);
		console.log(X_array_1[2]);
		}
	}
function myStopFunction() {
    clearInterval(myplay);
    }		
function check_val(){	
	for(var i=0;i<ran_a.length;i++)
	console.log(ran_a[i]);
	}	
function ani(i){
	if(i == 0){
		$("#pos0").css("animation","move0_0 1s linear forwards");
		$("#pos1").css("animation","move1_2 1s linear forwards");
		$("#pos2").css("animation","move2_1 1s linear forwards");
		}
	else if(i == 1){
		$("#pos0").css("animation","move0_2 1s linear forwards");
		$("#pos1").css("animation","move1_1 1s linear forwards");
		$("#pos2").css("animation","move2_0 1s linear forwards");
		}
	else if(i == 2){
		$("#pos0").css("animation","move0_1 1s linear forwards");
		$("#pos1").css("animation","move1_0 1s linear forwards");
		$("#pos2").css("animation","move2_2 1s linear forwards");
		}
}
function swap_val(i){
	if(i==0){
		buffer = X_array_1[1];
		X_array_1[1] = X_array_1[2];
		X_array_1[2] = buffer;
		}
	else if(i==1){
		buffer = X_array_1[0];
		X_array_1[0] = X_array_1[2];
		X_array_1[2] = buffer;
		}
	else if(i==2){
		buffer = X_array_1[0];
		X_array_1[0] = X_array_1[1];
		X_array_1[1] = buffer;
		}	
}
function input_src(x,y,z){
	$("#pos0").attr("src", x);
	$("#pos1").attr("src", y);
	$("#pos2").attr("src", z);
}

function send_answer(){
	if(X_array_1[0] == "1.jpg"){
		answer = 0;
		}		
	else if(X_array_1[1] == "1.jpg"){
		answer = 1;
		}
	else if(X_array_1[2] == "1.jpg"){
		answer = 2;
		}
	webSocket1.send(answer);
	console.log(answer);
}

/*function check_client(){
	
	webSocket.send(answer);
	console.log(answer);
}*/

