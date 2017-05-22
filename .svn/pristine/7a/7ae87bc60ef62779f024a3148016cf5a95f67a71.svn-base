var canvas=document.getElementById("game");
var ctx=canvas.getContext("2d");
var gameOver=false;
var nearGoalLine=false;
var horseStatus=0;
var elapsedTime=0;
var background = {
      x:0, y:0, image:'img/hihi.png', swidth:1024, sheight:280, dx:0, dy:0, dwidth:canvas.width, dheight:canvas.height/2};
var fence={x:0, y:0, image:{}, swidth:960, sheight:80, dx:0, dy:canvas.height/2-80, dwidth:canvas.width*8, dheight:80};
var track={x:0, y:0, image:{}, swidth:960, sheight:342, dx:0, dy:canvas.height/2-40, dwidth:canvas.width*2, dheight:canvas.height/2};
var players=[];
var horses=[
   {
      number:1,image:{}, pos:{x:0, y:canvas.height/2-10},source_size: {w:128, h:128},
      mini:{arc_x:160,arc_y:60, arc_radius:10, arc_dx:0, arc_dy:0, arc_color:"black",loc:3},
      target_size: {w:128, h:128}, sprite:{sprite_x:0,sprite_y:384}, dx:7, rank:1, win_ratio:1.4,
      possibility:[0.6, 0.2, 0.2], dx_step:[-4,6,10], max_break:5
   },
   {
      number:2,image:{}, pos:{x:0, y:canvas.height/2+30},source_size: {w:128, h:128},
      mini:{arc_x:160,arc_y:60, arc_radius:10, arc_dx:0, arc_dy:0, arc_color:"brown",loc:3},
      target_size: {w:128, h:128}, sprite:{sprite_x:0,sprite_y:384}, dx:7, rank:1, win_ratio:1.9,
      possibility:[0.3, 0.3, 0.4], dx_step:[-3,6,5], max_break:5
   },
   {
      number:3,image:{}, pos:{x:0, y:canvas.height/2+80},source_size: {w:128, h:128},
      mini:{arc_x:160,arc_y:60, arc_radius:10, arc_dx:0, arc_dy:0, arc_color:"golden",loc:3},
      target_size: {w:128, h:128}, sprite:{sprite_x:0,sprite_y:384}, dx:7, rank:1, win_ratio:3.5,
      possibility:[0.6, 0.3, 0.1], dx_step:[-5,2,10], max_break:5
   },
   {
      number:4,image:{}, pos:{x:0, y:canvas.height/2+120},source_size: {w:128, h:128},
      mini:{arc_x:160,arc_y:60, arc_radius:10, arc_dx:0, arc_dy:0, arc_color:"gray",loc:3},
      target_size: {w:128, h:128}, sprite:{sprite_x:0,sprite_y:384}, dx:7, rank:1, win_ratio:2.2,
      possibility:[0.6, 0.2, 0.2], dx_step:[-2,7,9], max_break:5
   },
   {
      number:5,image:{}, pos:{x:0, y:canvas.height/2+200},source_size: {w:128, h:128},
      mini:{arc_x:160,arc_y:60, arc_radius:10, arc_dx:0, arc_dy:0, arc_color:"white",loc:3},
      target_size: {w:128, h:128}, sprite:{sprite_x:0,sprite_y:384}, dx:7, rank:1, win_ratio:10.0,
      possibility:[0.2, 0.5, 0.3], dx_step:[-8,4,5], max_break:5
   }
   ];
var miniMap={appearance:{color:"rgba(100,100,100,0.2)",left_arcX:160, left_arcY:160, arc_radius:100,right_arcX:260,right_arcY:160,anticlock:true,rect_x:160, rect_y:60, rect_width:100, rect_height:200}, distance:1000};
// 160, 60, 100, 200
var scoreBoard={box:{color:"rgba(100,100,100,0.2)",box_x:canvas.width-300, box_y:100, width:200, height:600},text:{text_color:"black",font:"24px Arial", text_x:canvas.width-280,text_y:160, text_maxW:100},n:horses.length};
var timeBoard={x:canvas.width-290,y:80, maxW:100};
var finishLine={image: {},swidth:80, sheight:192, dx:canvas.width, dy:600, dwidth:100, dheight:300 }
var rank=new Array(horses.length);

function collisionDetection() {
   if(!gameOver)
      $.each(horses,function(index,horse){
         if(horse.pos.x>=canvas.width*0.8){
            alert(horse.number+"踰� 留� �슦�듅!");
            gameOver=true;
         }
      });
}

function drawHorse() {                  // Horse Picture
   $.each(horses,function(index,horse){
       ctx.beginPath();
          ctx.drawImage(
                  horse.image,
                  horse.sprite.sprite_x,
                  horse.sprite.sprite_y,
                  horse.source_size.w,
                  horse.source_size.h,
                  horse.pos.x,
                  horse.pos.y-85,
                  horse.target_size.w*(1+(0.28*horse.number)),
                  horse.target_size.h*(1+(0.28*horse.number))
              );
          // console.log("x pos"+horse.pos.x);
          ctx.closePath();
   });
}
function drawMiniMap(){
   ctx.beginPath();
   ctx.fillStyle=miniMap.appearance.color;
   ctx.arc(miniMap.appearance.left_arcX, miniMap.appearance.left_arcY, miniMap.appearance.arc_radius, Math.PI*1.5, Math.PI*0.5,miniMap.appearance.anticlock);
   ctx.fillRect(miniMap.appearance.rect_x, miniMap.appearance.rect_y, miniMap.appearance.rect_width, miniMap.appearance.rect_height);
   ctx.fill();
   ctx.closePath();
   ctx.beginPath();
   ctx.arc(miniMap.appearance.right_arcX, miniMap.appearance.right_arcY, miniMap.appearance.arc_radius, Math.PI*1.5, Math.PI*0.5,!miniMap.appearance.anticlock);
   ctx.fill();
   ctx.closePath();
   
   for(var idx=0; idx<horses.length; idx++){
      ctx.beginPath();
      ctx.fillStyle=horses[idx].mini.arc_color;
      ctx.arc(horses[idx].mini.arc_x, horses[idx].mini.arc_y+2*idx, horses[idx].mini.arc_radius, 0, Math.PI*2);
      ctx.fill();
      ctx.closePath();
   }
}
function drawElapasedTime(){
   ctx.beginPath();
   ctx.font="30px Arial";
   ctx.fillText("�궓�� 嫄곕━:"+(miniMap.distance-elapsedTime)+"M", timeBoard.x, timeBoard.y, timeBoard.maxW);
   ctx.closePath();
}
function drawScoreBoard(){
   ctx.beginPath();
   ctx.fillStyle=scoreBoard.box.color;
   ctx.fillRect(scoreBoard.box.box_x, scoreBoard.box.box_y, scoreBoard.box.width, scoreBoard.box.height);
   ctx.closePath();
   ctx.beginPath();
   ctx.font=scoreBoard.text.font;
   ctx.fillStyle=scoreBoard.text.text_color;
   for(var idx=0; idx<scoreBoard.n; idx++){
      ctx.fillText((idx+1)+"�벑: "+rank[idx].number, scoreBoard.text.text_x, scoreBoard.text.text_y+30*idx, 100);
   }
   ctx.closePath();
}
function drawBackground(){
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
         track.dheight
         );
   ctx.closePath();
   
}

function calDx(horse){
   
   var ranDx=Math.random();
   var disRand=Math.random();
   if(horse.pos.x>canvas.width/3 &&  horse.max_break>0){
      horse.dx-=3.2;
      //console.log(horse.max_break);   
      horse.max_break--;
      }
   else{
      if(ranDx<=horse.possibility[0]){
         horse.dx=disRand*horse.dx_step[0]*0.8;
      }else if(ranDx<=horse.possibility[1]){
         horse.dx=disRand*0.4+horse.dx_step[1]*0.8;
      }else{
         horse.dx=disRand*0.2+horse.dx_step[2]*0.8;
      }
      if(horse.max_break<5)
         horse.max_break++;
   }
   horse.pos.x+=horse.dx;
}
function drawGoalLine(){
   ctx.beginPath();
   ctx.drawImage(
         finishLine.image,
         0,
         0,
         finishLine.swidth,
         finishLine.sheight,
         finishLine.dx,
         finishLine.dy,
         finishLine.dwidth,
         finishLine.dheight
         );
   ctx.closePath();
   console.log("bye");
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
         fence.dy+55,
         fence.dwidth*0.3,
         fence.dheight*0.3
         );
   ctx.closePath();
}

function drawFenceFront(){
   ctx.beginPath();
   ctx.drawImage(
         fence.image,
         fence.x,
         fence.y,
         fence.swidth,
         fence.sheight,
         fence.dx,
         fence.dy+400,
         fence.dwidth*0.4,
         fence.dheight*0.9
         );
   ctx.closePath();
}

// swidth:1536, sheight:1536, dx:0, dy:0, dwidth:1000, dheight:1000
function updateHorse(){
    // horse update(pos, animation frame)..
    $.each(horses,function(idx, horse){
       horse.rank=rank.indexOf(horse);
    /*   var ranDx=Math.random();
       var disRand=Math.random();
       horse.dx+=(ranDx<=horse.possibility[0])?-disRand*0.3:((ranDx<horse.possibility[1])?disRand*0.4+0.3:disRand*0.2+0.7);
       horse.pos.x+=horse.dx;
       if(horse.pos.x<0 || horse.pos.x>canvas.width-300)
          horse.dx*=-1;*/
       calDx(horse);
       horse.sprite.sprite_x=(horse.target_size.w*horseStatus);  
       horse.mini.arc_x+=horse.mini.arc_dx;
       horse.mini.arc_y+=horse.mini.arc_dy;
       if((horse.mini.arc_x>miniMap.appearance.rect_x-30 && horse.mini.arc_x<=miniMap.appearance.rect_x+miniMap.appearance.rect_width+41)
             &&(horse.mini.arc_y<miniMap.appearance.rect_y+30 ||horse.mini.arc_y>miniMap.appearance.rect_y+miniMap.appearance.rect_height-20)){             
          if(horse.mini.loc==3 || horse.mini.loc==0){      // 醫뚯륫 �긽�떒(�삤瑜몄そ 吏곸쭊 肄붿뒪)吏꾩엯
             //console.log("�꽕踰덉㎏ �꽩 x: "+ horse.mini.arc_x);
             horse.mini.arc_dx=Math.abs(3);
             horse.mini.arc_dy=0;
             horse.mini.loc=0;
          }else if(horse.mini.loc==1 || horse.mini.loc==2){
             //console.log("�몢踰덉㎏ �꽩 x: "+ horse.mini.arc_x);
             horse.mini.loc=2;
             horse.mini.arc_dx=-Math.abs(3);
             horse.mini.arc_dy=0;
          }
       }
       else{
          if(horse.mini.loc==0 || horse.mini.loc==1){
             //console.log("泥ル쾲吏� �꽩 x: "+ horse.mini.arc_x);
             horse.mini.loc=1;
             horse.mini.arc_dx=miniMap.appearance.arc_radius*Math.cos(elapsedTime*0.015)*0.018;
             horse.mini.arc_dy=miniMap.appearance.arc_radius*Math.sin(elapsedTime*0.015)*0.018;
          }
          else if(horse.mini.loc==2 || horse.mini.loc==3){
             //console.log("�꽭踰덉㎏ �꽩 x: "+ horse.mini.arc_x);
             horse.mini.loc=3;
             horse.mini.arc_dx=miniMap.appearance.arc_radius*Math.cos(elapsedTime*0.015)*0.015;
             horse.mini.arc_dy=miniMap.appearance.arc_radius*Math.sin(elapsedTime*0.015)*0.015;
          }
           
       }
    });
}
function updateRank(){
    $.each(horses,function(idx,horse){
          rank.push(horse);
       });
       rank.sort(function(a, b) {
          if(a.pos.x>b.pos.x)
             return -1;
          else if(a.pos.x<b.pos.x)
             return 1;
          else
             return 0;
       })
}

function draw() {
   elapsedTime++;

   // canvas
    ctx.clearRect(0, 0, canvas.width, canvas.height);
    // object drawing section
    drawBackground();
    if(miniMap.distance-elapsedTime<200){
      console.log("hi")
      nearGoalLine=true;
      drawGoalLine();
   }
    drawTrack();
    drawFenceBack();
    drawHorse();
    drawElapasedTime();
    drawMiniMap();
    drawFenceFront();
    collisionDetection();
    // object position setting
    horseStatus=(horseStatus<3)?horseStatus+1:0;
    // console.log(horseStatus);
    rank=new Array(horses.length);
    updateRank();
    updateHorse();
    drawScoreBoard();
    if(background.x >=3072) background.x =0 ;
    else background.x += 16;
    if(fence.x>=480) fence.x=0;
    else fence.x+=8;
    if(track.x>=480) track.x=0;
    else track.x+=8;
    // configuration of FPS
    setTimeout(function() {
        requestAnimationFrame(draw);
      }, 1000/40);

}

function init(){
   // init image
   $.each(horses,function(index,horse ){
      var horseImg=new Image();
      horseImg.src="img/horse-"+index+".png";
      horse.image=horseImg;
   })
   var backImage=new Image();
   backImage.src='img/back_city.png';
   var finishLineImage=new Image();
   finishLineImage.src= 'img/finish_line.png';
   var fenceImage=new Image();
   fenceImage.src="img/fence.png";
   var trackImage=new Image();
   trackImage.src="img/track1.png";
   track.image=trackImage;
   fence.image=fenceImage;
   finishLine.image=finishLineImage;
   background.image=backImage;
   // start main loop
   draw();
}

init();
