<%@page import="java.util.ArrayList"%>
<%@page import="org.json.simple.parser.ParseException"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.parser.JSONParser"%>
<%@page import="vo.PlayerInfo"%>
<%@page import="dao.DAO_PlayerInfo"%>
<%@page import="org.json.simple.JSONArray"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:requestEncoding value="EUC-KR" />
<c:set var="path" value="${pageContext.request.contextPath}" />
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrap-toggle.min.css" rel="stylesheet">


<!-- Custom Fonts -->
<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet"
	type="text/css">
<link href="css/game.css?ver=2" rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic"
	rel="stylesheet" type="text/css">
<link rel="stylesheet" href="css/jquery-ui.css">
<title>justification</title>

</head>
<style type="text/css">
body {
	background: url('img/jackpot_bg.jpg');
	background-size: cover;
}
</style>
<%
	DAO_PlayerInfo dao = new DAO_PlayerInfo();

	String result = (request.getParameter("result") != null) ? request.getParameter("result") : "";
	System.out.println("result: " + result);
	String winner = "";
	try {
		JSONParser jsonParser = new JSONParser();
		//JSON데이터를 넣어 JSON Object 로 만들어 준다.
		JSONObject jsonObject = (JSONObject) jsonParser.parse(result);
		//books의 배열을 추출
		JSONArray playerArray = (JSONArray) jsonObject.get("playersInfo");
%>


<body>
	<%-- <h1><%=playerObject.get("id")%></h1>
	<h1><%=playerObject.get("curMoney")%></h1>
	<h1><%=playerObject.get("playerBetMoney")%></h1>
	<h1><%=playerObject.get("hnum")%></h1> --%>
	<table class="table table-bordered">
		<tr>
			<th>ID</th>
			<th>금액</th>
			<th>내가 건 돈</th>
			<th>선택한 말</th>
		</tr>
		<%
			for (int i = 0; i < playerArray.size(); i++) {
					System.out.println("=player " + i + " ===========================================");
					PlayerInfo upt = new PlayerInfo();
					//배열 안에 있는것도 JSON형식 이기 때문에 JSON Object 로 추출
					JSONObject playerObject = (JSONObject) playerArray.get(i);
					if (i == 0)
						winner = (String) playerObject.get("id");
					//JSON name으로 추출
					upt.setPid((String) playerObject.get("id"));
					upt.setcurMoney(Double.parseDouble(playerObject.get("curMoney").toString()));
					dao.updatePlayer(upt, 2);
		%>
		<tr>
			<td>
				<%
					if (i < 3) {
				%> <img src="img/<%=i%>.png" class="medal">
				<%
					}
				%><%=playerObject.get("id")%></td>
			<td><%=playerObject.get("curMoney")%></td>
			<td><%=playerObject.get("playerBetMoney")%></td>
			<td><%=playerObject.get("hnum")%></td>
		</tr>
		<%
			}

			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		%>
	</table>
	<span><%=winner%>Win!!! Congratulations!! </span>


</body>
<script src="http://code.jquery.com/jquery-1.10.2.js?ver=1 "></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js?ver=1"></script>
<!-- Bootstrap Core JavaScript -->
<script src="js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {

		/* 
			 $("body").css("background-image",
			 "url('img/jackpot_bg.jpg')");

			 $("#finalResult").html(
			 "<img src=\"img/prize.png\"><span>"
			 + player[0].id
			 + " Win!!! Congratulations!!"
			 + "</span>");
			 $("#finalResult")
			 .append(
			 "<table class=\"table table-condesed\"id=\"playerStatus\" align=\"center\"><tbody></tbody></table>");
			 $("#finalResult").show("fade", {
			 direction : "down"
			 }, 1000);
			 var idx = 0;
			 window.setTimeout(function() {
			 }, 2000);
			 var showList = window
			 .setInterval(
			 function() {
			 if (idx > 4) {
			 $("#playerStatus > tbody:last")
			 .append(
			 "<br><button type=\"button\" "
			 + "class=\"col-md-4 col-md-offset-8 col-sm-offset-8 col-sm-5 btn btn-primary btn-lg\" "
			 + "id=\"restartBtn\" "
			 + "onclick=\"window.location.reload()\">"
			 + "다시하기"
			 + "</button>");
			 clearInterval(showList);
			 } else {
			 $("#playerStatus > tbody:last")
			 .append(
			 "<tr><td>"
			 + ((idx < 3) ? "<img src=\"img/" +
                            idx +
                            ".png\" class=\"medal\">&nbsp;&nbsp;"
			 : "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;")
			 + player[idx].id
			 + "</td><td>"
			 + player[idx].curMoney
			 + "</td></tr>");
			 $("#playerStatus").show("fade",
			 1000);
			 idx++;
			 }
			 }, 1200); */

	})
</script>
</html>