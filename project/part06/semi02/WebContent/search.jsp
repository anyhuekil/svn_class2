<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String path = request.getContextPath();
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
body{
background-color: rgba(0,0,10,0.3);
}
</style>
</head>
<script src="<%=path%>/com/jquery-1.10.2.js"></script>
<script type="text/javascript">
	$(document).ready(function() {

	})
</script>
<body>
	<div class="container-fluid">
		<div class="page-header">
			<div class="row">
				<h1 class="col-md-offset-5 col-sm-offset-4" style="font-size: 3.5em">
					PentAcorn<small style="font-size: 0.5em"> 전적 검색</small>
				</h1>
				<br>
				<ul
					class="nav nav-pills col-sm-offset-2 col-md-offset-2 col-xs-offset-4  col-md-6 col-sm-6 col-xs-4">
					<li role="presentation" class="active"><a href="#">home</a></li>
					<li role="presentation"><a href="#">플레이어 순위</a></li>
					<li role="presentation"><a href="#">경주마 순위</a></li>
					<li role="presentation"><a href="#">경주마 list</a></li>
				</ul>
			</div>
		</div>

		<div class="row">
			<br>
			<form>
				<div
					class="col-md-4 col-md-offset-4 col-sm-4 col-sm-offset-4 col-xs-4 col-xs-offset-4 form-group">
					<div class="input-group">
						<div class="input-group-btn">
							<button type="button" class="btn btn-default dropdown-toggle"
								data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false">
								검색 list<span class="caret"></span>
							</button>
							<ul class="dropdown-menu">
								<li><a href="#">ID</a></li>
								<li><a href="#">경주마</a></li>
								 <li role="separator" class="divider"></li> 
								<li><a href="#">조교사</a></li>
								<li><a href="#">마주</a></li>
							</ul>
						</div>
						<!-- /btn-group -->
						<input type="text" class="form-control"
							placeholder="플레이어 ID 또는 경주마 이름"> <span
							class="input-group-btn">
							<button class="btn btn-default" type="button">Search!</button>
						</span>
					</div>
				</div>
				<!-- /input-group -->
				<div class="row col-sm-offset-5 col-sm-3">
					<br> <br>
					<button type="submit" class="btn btn-primary btn-lg ">내 전적
						확인하기</button>
				</div>
				<!-- /.col-lg-6 -->
			</form>
		</div>
		<!-- /.row -->
		<br> <br>
		<div class="row col-sm-offset-2 col-sm-8">
			<div class="panel panel-default">
				<!-- Default panel contents -->
				<div class="panel-heading">Panel heading</div>
				<!-- Table -->
				<table class="table">
					<tr>
						<th>이름</th>
						<th>email</th>
						<th>순위</th>
					</tr>
					<tr>
						<td>김동범</td>
						<td>dbking@gmail.com</td>
						<td>1</td>
					</tr>
					<tr>
						<td>김동범</td>
						<td>dbking@gmail.com</td>
						<td>1</td>
					</tr>
					<tr>
						<td>김동범</td>
						<td>dbking@gmail.com</td>
						<td>1</td>
					</tr>
					<tr>
						<td>김동범</td>
						<td>dbking@gmail.com</td>
						<td>1</td>
					</tr>
					<tr>
						<td>김동범</td>
						<td>dbking@gmail.com</td>
						<td>1</td>
					</tr>
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