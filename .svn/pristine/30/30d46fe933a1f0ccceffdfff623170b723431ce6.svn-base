<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="vo.HorseRecord"
	import="dao.DAO_HorseRecord"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
	request.setCharacterEncoding("UTF-8");
	String path = request.getContextPath();

	if (request.getParameter("pageIndex") == null || request.getParameter("pageIndex").equals(""))
		request.setAttribute("pageIndex", 0);
	else {
		System.out.println(request.getParameter("pageIndex"));
		request.setAttribute("pageIndex", Integer.parseInt(request.getParameter("pageIndex")));
		HorseRecord sch = new HorseRecord();
		String hname = request.getParameter("hname") != null ? request.getParameter("hname") : "";
		sch.setHname(hname);
		ArrayList<HorseRecord> hrList = new DAO_HorseRecord().popNRow(sch,
				Integer.parseInt(request.getParameter("pageIndex")));
		request.setAttribute("hrList", hrList);
	}
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
	background-color: rgba(0, 0, 10, 0.3);
}
</style>
<script src="<%=path%>/com/jquery-1.10.2.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#search").click(function() {
			$("form").submit();
		})
		$(".dropdown-menu > li").click(function() {
			var searchType = $(this).text();
			$("#inner-text").text(searchType);
		})
	})
</script>
</head>
<body>
	<!-- /.row -->
	<div class="row">
		<br> <br>
		<form method="post">
			<input type="hidden" name="type" />
			<div
				class="col-md-4 col-md-offset-4 col-sm-4 col-sm-offset-4 col-xs-4 col-xs-offset-4 form-group">
				<div class="input-group">
					<!-- /btn-group -->
					<input type="text" class="form-control" id="content" name="hname"
						placeholder="마명 입력"> <span class="input-group-btn">
						<button class="btn btn-default" type="button" id="search">Go!</button>
					</span>
				</div>
				<!-- /input-group -->
			</div>
		</form>
		<!-- /.col-lg-6 -->
		<!-- /.col-lg-6 -->
	</div>
	<br>
	<div class="row col-sm-offset-2 col-sm-8">
		<div class="panel panel-default">
			<!-- Default panel contents -->
			<div class="panel-heading"
				style="font-weight: bold; font-family: HY견고딕" align="center">
				<h4>경주마 순위</h4>
			</div>
			<!-- Table -->
			<table class="table">
				<tr>
					<th>순위</th>
					<th>마번</th>
					<th>마명</th>
					<th>총 경기 횟수</th>
					<th>1등 횟수</th>
					<th>2등 횟수</th>
					<th>3등 횟수</th>
				</tr>
				<c:forEach var="horseList" items="${hrList}" varStatus="sts">
					<tr>
						<td>${horseList.rank }</td>
						<td>${horseList.hnum }</td>
						<td>${horseList.hname }</td>
						<td>${horseList.totrace }</td>
						<td>${horseList.first }</td>
						<td>${horseList.second }</td>
						<td>${horseList.third }</td>
					</tr>
				</c:forEach>
			</table>
		</div>

		<nav>
		<ul class="pager">
			<c:if test="${pageIndex != 0 && fn:length(hrList) >= 20}">
				<li><a href="horseRank.jsp?pageIndex=${pageIndex-1 }">Previous</a></li>
			</c:if>
			<c:if test="${fn:length(hrList) >=20 }">
				<li><a href="horseRank.jsp?pageIndex=${pageIndex+1 }">Next</a></li>
			</c:if>
		</ul>
		</nav>

	</div>
</body>
</html>