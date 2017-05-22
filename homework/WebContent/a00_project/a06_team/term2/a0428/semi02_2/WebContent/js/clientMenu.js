var myMoney = 1000;
var horseSel = document.getElementsByClassName("horseImg");
var betMoney = document.getElementById("inMoney");
var bettingBtn = document.getElementById("betBtn");


bettingBtn.addEventListener("click",betting,false);

/*for(var i=0; i<horseSel.length; i++){
	horseSel[i].addEventListener("click",clickHorse,false);
}
*/
$(".horseImg").each(function(index,item){
	$(this).on("click",function(){
		console.log(index);
	})
})

function betting(){
	myMoney = myMoney - betMoney.value;
	console.log(myMoney);
}

function clickHorse(){
	for(var i=0; i<5; i++){
		if(horseSel[i].onclick) alert(i+"번째!");
	}
	console.log(horseSel[2].onclick)
}
