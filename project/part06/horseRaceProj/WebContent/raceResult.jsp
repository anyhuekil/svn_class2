<%@page import="java.util.ArrayList"%>
<%@page import="org.json.simple.parser.ParseException"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.parser.JSONParser"%>
<%@page import="vo.*"%>
<%@page import="dao.*"%>
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
	DAO_HorseRecord daoH = new DAO_HorseRecord();

	String result = (request.getParameter("result") != null) ? request.getParameter("result") : "";
	System.out.println("result: " + result);
	try {
		JSONParser jsonParser = new JSONParser();
		//JSON데이터를 넣어 JSON Object 로 만들어 준다.
		JSONObject jsonObject = (JSONObject) jsonParser.parse(result);
		JSONArray playerArray = (JSONArray) jsonObject.get("playersInfo");
%>

<body>
	<%-- <h1><%=playerObject.get("id")%></h1>
	<h1><%=playerObject.get("curMoney")%></h1>
	<h1><%=playerObject.get("playerBetMoney")%></h1>
	<h1><%=playerObject.get("hnum")%></h1> --%>
	<%
		PlayerInfo upt = new PlayerInfo();
			HorseRecord hr = new HorseRecord();
			JSONObject winnerObj = (JSONObject) playerArray.get(0);
	%>
	<br>
	<h1>Game Result</h1>
	<br>

	<table class="table">
		<tr>
			<td></td>
			<td>ID</td>
			<td>Betting money</td>
			<td>수익</td>
			<td>최종 금액</td>
			<td>최종 순위</td>
		</tr>
		<%
			for (int i = 0; i < playerArray.size(); i++) {
					System.out.println("=player " + i + " ===========================================");
					upt = new PlayerInfo();
					//배열 안에 있는것도 JSON형식 이기 때문에 JSON Object 로 추출
					JSONObject playerObject = (JSONObject) playerArray.get(i);
					//JSON name으로 추출
					upt.setPid((String) playerObject.get("id"));
					upt.setCurMoney(Double.parseDouble(playerObject.get("curMoney").toString()));
					dao.updatePlayer(upt, 2);

				}
				for (int i = 0; i < playerArray.size(); i++) {
					JSONObject playerObject = (JSONObject) playerArray.get(i);
					PlayerInfo vo = new PlayerInfo();
					vo.setPid(playerObject.get("id").toString());
		%>
		<tr>
			<td>
				<%
					HorseRecord hrr = new HorseRecord();
					if (i < 3){
								int realNum=Integer.parseInt(playerObject.get("realHorseNum").toString());
								System.out.println("real horse: "+realNum);
								hrr.setHnum(realNum);
								String param = (i == 0) ? "FIRST" : ((i == 1) ? "SECOND" : "THIRD");
								System.out.println("param: "+param);
								daoH.updateHorse(hrr, param);
				%> <img src="img/<%=i%>.png" class="medal hidden-xs"> <%
 					} else {
				 		int realNum=Integer.parseInt(playerObject.get("realHorseNum").toString());
				 		hrr.setHnum(realNum);
				 		daoH.updateHorse(hrr);
				 	}
 %>
			
			<td><%=playerObject.get("id")%></td>
			<td><%=playerObject.get("playerBetMoney")%></td>
			<td><%=playerObject.get("benefit")%></td>
			<td><%=playerObject.get("curMoney")%></td>
			<td><%=dao.getOnePlayer(vo).getRank()%></td>
		</tr>
		<%
			}
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		%>
	</table>
	<button type="button" class="btn btn-primary btn-lg"
		onclick=window.location.reload()>다시 하기</button>
</body>
<script src="http://code.jquery.com/jquery-1.10.2.js?ver=1 "></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js?ver=1"></script>
<!-- Bootstrap Core JavaScript -->
<script src="js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){

	})
</script>
</html>
