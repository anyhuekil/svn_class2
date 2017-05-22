var rotationsTime = 8;
var wheelSpinTime = 6;
var ballSpinTime = 5;
var numorder = [0,1,2,3];
var numred = [1,3];
var numblack =[0,2];
var numbg = $('.pieContainer');
var ballbg = $('.ball');
var btnSpin = $('#btnSpin');

var toppart = $("#toppart");
var pfx = $.keyframe.getVendorPrefix();
var transform = pfx + 'transform';
var rinner = $("#rcircle");
var numberLoc = [];
var rndNum;

var webSocket1 = new WebSocket("ws://192.168.0.76:6080/semi02_2/server_ws");
var webSocket2 = new WebSocket("ws://192.168.0.76:6080/semi02_2/broadcast");

createWheel();
$(document).ready(function(){
	webSocket1.onopen = function(message){
		console.log("Server connect\n");
		};
	});
    
function createWheel() {
	var temparc = 360 / numorder.length;
	for (var i = 0; i < numorder.length; i++) {
		numberLoc[numorder[i]] = [];
		numberLoc[numorder[i]][0] = i * temparc;
		numberLoc[numorder[i]][1] = (i * temparc) + temparc;
		
		newSlice = document.createElement("div");
		$(newSlice).addClass("hold");
		newHold = document.createElement("div");
		$(newHold).addClass("pie");
		newNumber = document.createElement("div");
		$(newNumber).addClass("num");
		$(newNumber).css('transform', 'rotate(45deg)');
		$(newHold).css('transform', 'rotate(45deg)');
		newNumber.innerHTML = numorder[i];
		$(newSlice).attr('id', 'rSlice' + i);
		$(newSlice).css('transform', 'rotate(' + numberLoc[numorder[i]][0] + 'deg)');
		$(newHold).css('transform', 'rotate(90deg)');
		if ($.inArray(numorder[i], numred) > -1) {
			$(newHold).addClass("redbg");
			} else if ($.inArray(numorder[i], numblack) > -1) {
				$(newHold).addClass("greybg");
				}
		$(newNumber).appendTo(newSlice);
		$(newHold).appendTo(newSlice);
		$(newSlice).appendTo(rinner);
		}
	}

	
	$("#btnSpin").click(function () {
		
		spinTo(rndNum);
		
		});
	
	$("#readyG").click(function(){
    	console.log($("#readyG").text());
    	webSocket2.send($("#readyG").text()+"\n");
    	rndNum = Math.floor((Math.random() * 4) + 0);
    	var answer=rndNum;
    	webSocket1.send(answer);
    	console.log(answer);
    	return false;
		});
	
    $("#finishG").click(function(){
    	console.log($("#finishG").text());
    	webSocket2.send($("#finishG").text()+"\n");    	
    	return false;
		});
		
	
    $("#btnb").click(function(){
      $(".spinner").css("font-size","+=.3em");
    });
    $("#btns").click(function(){
    	 
      $(".spinner").css("font-size","-=.3em");
     
    });    

function resetAni() {

        animationPlayState = "animation-play-state";
        playStateRunning = "running";

        $(ballbg).css(pfx + animationPlayState, playStateRunning).css(pfx + "animation", "none");

        $(numbg).css(pfx + animationPlayState, playStateRunning).css(pfx + "animation", "none");
        $(toppart).css(pfx + animationPlayState, playStateRunning).css(pfx + "animation", "none");

        $("#rotate2").html("");
        $("#rotate").html("");

    }

    function spinTo(num) {
        //get location
        var temp = numberLoc[num][0] + 4;

        //randomize
        var rndSpace = Math.floor((Math.random() * 360) + 1);

        resetAni();
        setTimeout(function () {
            bgrotateTo(rndSpace);
            ballrotateTo(rndSpace + temp);
        }, 500);

    }

    function ballrotateTo(deg) {
        var temptime = (rotationsTime * 1000);
        var dest = (-360 * ballSpinTime) - (360 - deg);

        $.keyframe.define({
            name: 'rotate2',
            from: {
                transform: 'rotate(0deg)'
            },
            to: {
                transform: 'rotate(' + dest + 'deg);'
                

            }
        });

        $(ballbg).playKeyframe({
            name: 'rotate2', // name of the keyframe you want to bind to the selected element
            duration: temptime, // [optional, default: 0, in ms] how long you want it to last in milliseconds
            timingFunction: 'ease-in-out', // [optional, default: ease] specifies the speed curve of the animation
            complete: function () {
                //finishSpin();
            } //[optional]  Function fired after the animation is complete. If repeat is infinite, the function will be fired every time the animation is restarted.
        });

    }

    function bgrotateTo(deg) {
        var dest = 360 * wheelSpinTime + deg;
        var temptime = (rotationsTime * 1000) - 1000;



        $.keyframe.define({
            name: 'rotate',
            from: {
                transform: 'rotate(0deg)'
            },
            to: {
                transform: 'rotate(' + dest + 'deg)'
            }
        });
        

        $(numbg).playKeyframe({
            name: 'rotate', // name of the keyframe you want to bind to the selected element
            duration: temptime, // [optional, default: 0, in ms] how long you want it to last in milliseconds
            timingFunction: 'ease-in-out', // [optional, default: ease] specifies the speed curve of the animation
            complete: function () {

            } //[optional]  Function fired after the animation is complete. If repeat is infinite, the function will be fired every time the animation is restarted.
        });

        $(toppart).playKeyframe({
            name: 'rotate', // name of the keyframe you want to bind to the selected element
            duration: temptime, // [optional, default: 0, in ms] how long you want it to last in milliseconds
            timingFunction: 'ease-in-out', // [optional, default: ease] specifies the speed curve of the animation
            complete: function () {

            } //[optional]  Function fired after the animation is complete. If repeat is infinite, the function will be fired every time the animation is restarted.
        });


    }
