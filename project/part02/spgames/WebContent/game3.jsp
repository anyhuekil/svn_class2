<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8");%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<body>
	<center>
		<div class="wrapper-game3">
			<div id="gameTable">
				<!-- 뽑기 판 테이블 -->
				<h3>복불복 게임입니다</h3>
				<table border width="400px" height="400px"
					style="table-layout: fixed">
					<tr>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
				</table>
				<input type="button" value="Game Start" onclick="start01()" /> <input
					type="button" value="Reset" onclick="reset01()" /><br>
			</div>
			<br>
			<div id="scoreTable">
				<h2>벌칙 & 벌주!</h2>
				<br>
				<div id="gameExplan">
					<h3>게임 설명</h3>
				</div>
				<div id="drinkNum">
					<h3>벌주</h3>
				</div>
				<h2></h2>
				<input type="button" value="벌칙 수행함" onclick="clearMission()" /> <input
					type="button" value="벌칙 미수행" onclick="failMission()" />
			</div>
		</div>
</body>
</html>
