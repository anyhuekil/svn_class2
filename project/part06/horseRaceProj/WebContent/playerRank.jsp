<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="vo.*,dao.*,java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	request.setCharacterEncoding("UTF-8");
	String path = request.getContextPath();

	String pid = request.getParameter("pid") != null ? request.getParameter("pid") : "";
	String pname = request.getParameter("pname") != null ? request.getParameter("pname") : "";
	String type = request.getParameter("type") != null ? request.getParameter("type") : "";
	PlayerInfo pi = new PlayerInfo();
	if (type.equals("pid"))
		pi.setPid(pid);
	else
		pi.setPname(pname);
	ArrayList<PlayerInfo> plist = new DAO_PlayerInfo().searchPlayer(pi);
	request.setAttribute("plist", plist);
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>경마 전적 검색</title>
<!-- Bootstrap Core CSS -->

<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="css/stylish-portfolio.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet"
	type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic"
	rel="stylesheet" type="text/css">
<link rel="stylesheet" href="css/jquery-ui.css">
<style type="text/css">
body {
	background-color: rgb(80, 80, 80);
}
li{
cursor:pointer;
}
</style>
</head>
<script src="<%=path%>/com/jquery-1.10.2.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#search").click(function() {
			$("form").submit();
		})

		$("#resett").click(function() {
			$("input[name=pid]").val("");
			$("form").submit();
		})

		$(".dropdown-menu li a").click(function() {
			$("#searchList").text($(this).text());
		});
		$(".dropdown-menu > li").click(function() {
			var searchType = $(this).text();
			$("#inner-text").text(searchType);
			if (searchType == "ID") {
				$("#content").attr("name", "pid");
				$("input[type=hidden]").val("pid");
			} else if (searchType == "이름") {
				$("#content").attr("name", "pname");
				$("input[type=hidden]").val("pname");
			}

		})
	});

	/* $("<iframe scrolling='no' />").attr("src", "iframeTest.jsp").attr("frameborder", 0).attr("width", "100%").attr("height", "0px").appendTo("#iframe-container");
	$('iframe').iframeAutoHeight({heightOffset: 10}); */
</script>
<body>
	<div class="row">
		<br><br>
		<form method="post">
			<input type="hidden" name="type" />
			<div
				class="col-md-4 col-md-offset-4 col-sm-4 col-sm-offset-4 col-xs-4 col-xs-offset-4 form-group">
				<div class="input-group">
					<div class="input-group-btn">
						<button type="button" class="btn btn-default dropdown-toggle"
							data-toggle="dropdown" aria-expanded="false">
							<span id="inner-text">선택하세요 </span><span class="caret"></span>
						</button>
						<ul class="dropdown-menu" role="menu">
							<li>ID</li>
							<li>이름</li>
						</ul>
					</div>
					<!-- /btn-group -->
					<input type="text" class="form-control" id="content"> <span
						class="input-group-btn">
						<button class="btn btn-default" type="button" id="search">Go!</button>
					</span>
				</div>
				<!-- /input-group -->
			</div>
		</form>
		<!-- /.col-lg-6 -->
		<!-- /.col-lg-6 -->
	</div>
	<!-- /.row -->
	<!-- /.row -->
	<br>
	<div class="row col-sm-offset-2 col-sm-8">
		<div class="panel panel-default">
			<!-- Default panel contents -->
			<div class="panel-heading"
				style="font-weight: bold; font-family: HY견고딕" align="center">
				<h4>금액에 따른 Player 순위 정보</h4>
			</div>
			<!-- Table -->
			<table class="table">
				<tr>
					<th>순위</th>
					<th>ID</th>
					<th>이름</th>
					<th>금액</th>
					<th>email</th>
				</tr>
				<c:forEach var="player" items="${plist}" varStatus="sts">
					<tr>
						<td>${player.rank }</td>
						<td>${player.pid }</td>
						<td>${player.pname }</td>
						<td>${player.curMoney }</td>
						<td>${player.email }</td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>
	</div>

</body>
<script src="http://code.jquery.com/jquery-1.10.2.js?ver=1 "></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js?ver=1"></script>
<!-- Bootstrap Core JavaScript -->
<script src="js/bootstrap.min.js"></script>
</html>