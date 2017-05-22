	var canvas = document.getElementById("myCanvas");
	var ctx = canvas.getContext("2d");
	var gameOver=false;
	var horseStatus=0;
	
	
	
	
	
	var img=new Image();
	var horses=[
		{number:1, pos:{x:0, y:canvas.height/2},source_size: {w:128, h:128},
			target_size: {w:128, h:128}, sprite:{sprite_x:0,sprite_y:384}, dx:7, rank:1  },
		{number:2, pos:{x:0, y:canvas.height/2+30},source_size: {w:128, h:128},
			target_size: {w:128, h:128}, sprite:{sprite_x:0,sprite_y:384}, dx:7 ,rank:1 },
		{number:3, pos:{x:0, y:canvas.height/2+60},source_size: {w:128, h:128},
			target_size: {w:128, h:128}, sprite:{sprite_x:0,sprite_y:384}, dx:7 ,rank:1 },
		{number:4, pos:{x:0, y:canvas.height/2+90},source_size: {w:128, h:128},
			target_size: {w:128, h:128}, sprite:{sprite_x:0,sprite_y:384}, dx:7 ,rank:1 },
		{number:5, pos:{x:0, y:canvas.height/2+120},source_size: {w:128, h:128},
			target_size: {w:128, h:128}, sprite:{sprite_x:0,sprite_y:384}, dx:7 ,rank:1 }
			]
	
	img.src='img/horse-black.png';


	function collisionDetection() {
		if(!gameOver)
		for(var idx=0; idx<horses.length; idx++){
			if(horses[idx].pos.x>=canvas.width*0.8){
				alert(horses[idx].number+"말 우승!");
				gameOver=true;
			}
		}
	}
	
	function drawHorse() {						// 말그림
		for(var idx=0; idx<horses.length ;idx++) {
			 ctx.beginPath();
			    ctx.drawImage(
			            img,
			            horses[idx].sprite.sprite_x,
			            horses[idx].sprite.sprite_y,
			            horses[idx].source_size.w,
			            horses[idx].source_size.h,
			            horses[idx].pos.x,
			            horses[idx].pos.y+32*idx,
			            horses[idx].target_size.w,
			            horses[idx].target_size.h
			        );
			    //console.log("x pos"+horses[idx].pos.x);
			    ctx.closePath();
			
		}
	}
	
	function drawBackground(){
		ctx.beginPath();
		ctx.fillRect(0, 0, canvas.width, canvas.height/2);
		ctx.fillStyle='#207720';
		ctx.fill();
		ctx.closePath();
		ctx.beginPath();
		ctx.fillRect(0, canvas.height/2, canvas.width, canvas.height/2);
		ctx.fillStyle='#8d8bb3';
		ctx.fill();
		ctx.closePath();
	}
	
	function draw() {
		
		// canvas
	    ctx.clearRect(0, 0, canvas.width, canvas.height);
	    // object drawing section
	    drawBackground();
	    drawHorse();
	    collisionDetection();
	    // object position setting
	    horseStatus=(horseStatus<3)?horseStatus+1:0;
	    //console.log(horseStatus);
	    var rank=new Array();
	    for(var idx=0; idx<horses.length; idx++){
	    rank.push(horses[idx].pos.x);
	    }
	    for(var idx=0; idx<horses.length; idx++){
	    horses[idx].rank=rank[idx];
	    horses[idx].dx+=Math.random();
	    horses[idx].pos.x+=horses[idx].dx;

	    if(horses[idx].pos.x>canvas.width || horses[idx].pos.x<0)
	    	horses[idx].dx*=-1;
	    horses[idx].sprite.sprite_x=(horses[idx].target_size.w*horseStatus);
	    
	    if(horses[idx].pos.x>canvas.width)
	    horses[idx].sprite.sprite_x=(32*horseStatus);
	    
	    }
	    console.log(rank);
	    // loop
	    setTimeout(function() {
	        requestAnimationFrame(draw);
	      }, 1000 / 10);
	}
	
	
	draw();
