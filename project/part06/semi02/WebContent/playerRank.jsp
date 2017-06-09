<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	import="vo.*,dao.*,java.util.*"
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	request.setCharacterEncoding("UTF-8");
	String path = request.getContextPath();
	
	String pid = request.getParameter("pid")!=null?request.getParameter("pid"):"";
	PlayerInfo pi = new PlayerInfo();
	pi.setPid(pid);
	
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
body{
background-color: rgb(80,80,80);
}
</style>
</head>
<script src="<%=path%>/com/jquery-1.10.2.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#search").click(function(){
			$("form").submit();
		})
		
		$("#resett").click(function(){
			$("input[name=pid]").val("");
			$("form").submit();
		})

		$(".dropdown-menu li a").click(function(){
			$("#searchList").text($(this).text());
		});
	});
	
	/* $("<iframe scrolling='no' />").attr("src", "iframeTest.jsp").attr("frameborder", 0).attr("width", "100%").attr("height", "0px").appendTo("#iframe-container");
    $('iframe').iframeAutoHeight({heightOffset: 10}); */

</script>
<body>
			<div class="row" width="100%" height="100%">
				<br>
				<form method="post">
					<div
						class="col-md-4 col-md-offset-4 col-sm-4 col-sm-offset-4 col-xs-4 col-xs-offset-4 form-group">
						<div class="input-group">
							<div class="input-group-btn" >
								<button type="button" class="btn btn-default" id="searchList">ID 검색 </button>
							</div>
							<!-- /btn-group -->
							<input type="text" name="pid" class="form-control"
								placeholder="플레이어 ID 또는 경주마 이름"> <span
								class="input-group-btn">
								<button id="search" class="btn btn-default" type="button">Search!</button>
							</span>
						</div>
					</div>
					<!-- /input-group -->
					<div class="row col-sm-offset-5 col-sm-3">
						<br><br>
						<button type="button" id="resett" class="btn btn-primary btn-lg ">모든 Player 보기</button>
					</div>
					<!-- /.col-lg-6 -->
				</form>
			</div>
			<!-- /.row -->
			<br> <br>
			<div class="row col-sm-offset-2 col-sm-8">
				<div class="panel panel-default">
					<!-- Default panel contents -->
					<div class="panel-heading" style="font-weight:bold;font-family:HY견고딕"
					align="center"><h4>금액에 따른 Player 순위 정보</h4></div>
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
