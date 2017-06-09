			<div class="game title" id="Game3">Game2 Section</div>
				<button type="button" name="hitstart" id="start"
					class="btn btn-primary btn-block">Bottle Cap Game Start</button>
				<img src="./img/sol.jpg" alt="Image" style="height: 340px; float:left; margin-left:34%;"
					id="iHitEverything">
				<button type="button" name="udstart" id="udstart"
					class="btn btn-primary btn-block">Up and Down Game Start</button>
				<br> <input type="range" name="upDown" id="upDownvalue"
					onchange="giveValue(this)" class="range" onchange="giveValue(this)"
					step="1" onmousemove="rangevalue1.value=value" /><br>
				<output id="rangevalue1"></output>
				<br>
				<button type="button" class="btn btn-primary btn-block"
					id="upDownSend">UP or DOWN</button>
