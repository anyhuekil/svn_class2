var readyFlag = false;

function allocHorse() {
    generate = function(length) {
        var arr = [];
        var n;
        for (var i = 0; i < length; i++) {
            do
                n = Math.floor(Math.random() * 5 + 1);
            while (arr.indexOf(n) !== -1)
            arr[i] = n;
        }
        return arr;
    }
    var pool = generate(5);
    pool.splice(pool.indexOf(player[0].hnum), 1);
    for (var idx = 1; idx < player.length; idx++) {
        player[idx].hnum = pool[idx - 1];
        player[idx].hname= horseNames[player[idx].hnum-1];
        player[idx].realHorseNum= horseNums[player[idx].hnum-1];
    }
    $.each(player, function(index, item) {
        console.log(item.id + ": " + item.hnum)
    })
}



$(document).ready(function() {
    loadLevel();
    $("#start-menu").on("click", function() {
        if (!$("#betBtn").prop('checked')) {
            $(this).effect("highlight", 1000);
            $(this).attr("disabled","disabled");
            $("#betBtn").bootstrapToggle('disable');
            start();
        } else
            alert("Not ready.");
    })
    $(".horseExplain").each(function(index, item) {
        $(this).on("mousedown", function() {
            if (!readyFlag) {
                $(this).effect("highlight", "slow", window.setTimeout(function() {}, 1000))
                $(".horseSelect").accordion({
                    active: false,
                    collapsible: true
                });
                player[0].hnum = (index + 1);
                $("#selectedHorse").text(player[0].hnum);
            }
        })
    })

    //No Drag!!!
    $(document).on("dragstart", function(e) {
        return false;
    });

    //No Select!!
    $(document).on("selectstart", function(e) {
        return false;
    });

    $(function() {
        $('#betBtn').change(function() {
            if (!$(this).prop('checked')) {
                if (betting()) {
                    readyFlag = true;
                    $("#slider").slider("disable");
                } else {
                    $('#betBtn').bootstrapToggle('on');
                }
            } else {
                $("#slider").slider("enable");
                readyFlag = false;
            }
        })
    })

});

function start() {
    $("#menus").hide("fade", 1500, init);
    allocHorse();
    $.each(player,function(index,item){
    	console.log("留� �씠由� :"+item.hname);
    })
}

function callResult() {
    calRank();
    $("#gameResult").hide("fade", 1000);
    var players={
    		playersInfo:player
    };
    $.ajax({
        type: "post",
        url : "./raceResult.jsp?ver=1",
        data: {
        	result:JSON.stringify(players)
        },
        success: whenSuccess,
        error: whenError
 	});
   
function whenSuccess(resdata){
	 $("#finalResult").show("fade", 2000, function(){
		 $("#finalResult").html(resdata);
	 });
	 console.log(resdata);
    }
function whenError(){
	alert("error");
}
}

function betting() {
	  console.log("rest money: " + player[0].curMoney);
      console.log("Betting money: " + player[0].playerBetMoney);
      console.log("horse number: " + player[0].hnum);
    if ( player[0].curMoney >= player[0].playerBetMoney) {
        if (Number(player[0].hnum)) {
            return true;
        } else
            alert("You must select a horse.");
    } else {
        alert("Not enough money!");
    }
    return false;
}

function calRank() {
    player.sort(function(a, b) {
        if (a.curMoney > b.curMoney)
            return -1;
        else if (a.curMoney< b.curMoney)
            return 1;
        else
            return 0;
    })
}

function giveBackMoney(winner) {
    console.log("Player select : " + player[0].hnum);
    console.log("winner : " + winner);
    $.each(player, function(index, item) {
        if (item.hnum == winner) {
        	item.benefit=parseInt((item.playerBetMoney) * horses[item.hnum - 1].win_ratio) ;
        } else {
        	item.benefit=-parseInt(item.playerBetMoney);
        }
        item.curMoney = item.benefit + item.curMoney;
    })
}