<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="vo.*,dao.*,java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%
	request.setCharacterEncoding("UTF-8");
	String path = request.getContextPath();

	String hname = request.getParameter("hname") != null ? request.getParameter("hname") : "";
	String gender = request.getParameter("gender") != null ? request.getParameter("gender") : "";
	String father = request.getParameter("father") != null ? request.getParameter("father") : "";
	String mother = request.getParameter("mother") != null ? request.getParameter("mother") : "";
	String ownerName = request.getParameter("ownerName") != null ? request.getParameter("ownerName") : "";
	String trainerName = request.getParameter("trainerName") != null ? request.getParameter("trainerName") : "";
	String type = request.getParameter("type") != null ? request.getParameter("type") : "";
	if (request.getParameter("pageIndex") == null || request.getParameter("pageIndex").equals(""))
		request.setAttribute("pageIndex", 0);
	else {
		request.setAttribute("pageIndex", Integer.parseInt(request.getParameter("pageIndex")));
		HorseInfo sch = new HorseInfo();
		sch.setHname(hname);
		sch.setGender(gender);
		sch.setFather(father);
		sch.setMother(mother);
		sch.setOwnerName(ownerName);
		sch.setTrainerName(trainerName);
		ArrayList<HorseInfo> hlist = new DAO_HorseInfo().popNRow(sch, Integer.parseInt(request.getParameter("pageIndex")));
		request.setAttribute("hlist", hlist);
	}
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
<script language="javascript"
	src="jquery.iframe-auto-height.plugin.1.5.0.min.js"></script>
<style type="text/css">
body {
	background-color: rgba(0, 0, 10, 0.3);
}

li {
	cursor: pointer;
}
</style>
</head>
<script src="<%=path%>/com/jquery-1.10.2.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#search").click(function() {
			$("form").submit();
		})

		$(".dropdown-menu li a").click(function() {
			$("#searchList").text($(this).text());
		});
		$(".dropdown-menu > li").click(function() {
			$("#inner-text").text($(this).text());
		})
		$(".dropdown-menu > li").click(function() {
			var searchType = $(this).text();
			$("#inner-text").text(searchType);
			switch (searchType) {
			case "마명":
				$("#content").attr("name", "hname");
				break;
			case "성별":
				$("#content").attr("name", "gender");
				break;
			case "부마명":
				$("#content").attr("name", "father");
				break;
			case "모마명":
				$("#content").attr("name", "mother");
				break;
			case "마주":
				$("#content").attr("name", "ownerName");
				break;
			case "조교사":
				$("#content").attr("name", "trainerName");
				break;
			}
			$("input[type=hidden]").val($("#content").attr("name"));
		})
	});
</script>
<body>
	<div class="row">
		<br> <br>
		<form method="post">
			<input type="hidden" name="type" />
			<div
				class="col-md-4 col-md-offset-4 col-sm-4 col-sm-offset-4 col-xs-4 col-xs-offset-4">
				<div class="input-group">
					<div class="input-group-btn">
						<button type="button" class="btn btn-default dropdown-toggle"
							data-toggle="dropdown" aria-expanded="false">
							<span id="inner-text">선택하세요 </span><span class="caret"></span>
						</button>
						<ul class="dropdown-menu" role="menu">
							<li>마명</li>
							<li>성별</li>
							<li>부마명</li>
							<li>모마명</li>
							<li>마주</li>
							<li>조교사</li>
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
	<!-- <div class="row">
				<br>
				<form method="post">
					<div
						class="col-md-4 col-md-offset-4 col-sm-4 col-sm-offset-4 col-xs-4 col-xs-offset-4 form-group">
						<div class="input-group">
							<div class="input-group-btn" >
								<button type="button" class="btn btn-default" id="searchList">검색 List </button>
								<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown"
									aria-haspopup="true" aria-expanded="false">
									<span class="caret"></span>
									<span class="sr-only">Toggle Dropdown</span>
								</button>
								<ul class="dropdown-menu">
									<li id="hnameL" ><a href="#">마명</a></li>
									<li id="fnameL" ><a href="#">부마명</a></li>
									<li id="mnameL" ><a href="#">모마명</a></li>
									<li id="onameL" ><a href="#">마주</a></li>
								</ul>
							</div>
							/btn-group
							<input type="text" name="pid" class="form-control" placeholder="경주마 정보 검색">
							<span class="input-group-btn">
								<button id="search" class="btn btn-default" type="button">찾아보기</button>
							</span>
						</div>
					</div>
				</form>
			</div> -->
	<!-- /.row -->
	<br>
	<br>
	<div class="row col-sm-offset-2 col-sm-8">
		<div class="panel panel-default">
			<!-- Default panel contents -->
			<div class="panel-heading"
				style="font-weight: bold; font-family: HY견고딕" align="center">
				<h4>경주마 정보</h4>
			</div>
			<!-- Table -->
			<table class="table">
				<tr>
					<th>마명</th>
					<th>마번</th>
					<th>출생일</th>
					<th>성별</th>
					<th>털색</th>
					<th>경주마 등록일</th>
					<th>생산국</th>
					<th>부마명</th>
					<th>모마명</th>
					<th>조교사</th>
					<th>마주</th>
				</tr>
				<c:forEach var="horseList" items="${hlist}" varStatus="sts">
					<tr>
						<td>${horseList.hname }</td>
						<td>${horseList.hnum }</td>
						<td>${horseList.birthdate }</td>
						<td>${horseList.gender }</td>
						<td>${horseList.color }</td>
						<td>${horseList.regdate }</td>
						<td>${horseList.country }</td>
						<td>${horseList.father }</td>
						<td>${horseList.mother }</td>
						<td>${horseList.trainerName}</td>
						<td>${horseList.ownerName }</td>
					</tr>
				</c:forEach>
			</table>
		</div>
	<nav>
		<ul class="pager">
			<c:if test="${pageIndex != 0 && fn:length(hlist) >= 20}">
				<li><a href="horseList.jsp?pageIndex=${pageIndex-1 }">Previous</a></li>
			</c:if>
			<c:if test="${fn:length(hlist) >=20 }">
				<li><a href="horseList.jsp?pageIndex=${pageIndex+1 }">Next</a></li>
			</c:if>
		</ul>
		</nav>
	</div>

</body>
<script src="http://code.jquery.com/jquery-1.10.2.js?ver=1 "></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js?ver=1"></script>
<!-- Bootstrap Core JavaScript -->
<script src="js/bootstrap.min.js"></script>
</html>