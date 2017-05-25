<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	import="vo.*,dao.*,java.util.*"
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	request.setCharacterEncoding("UTF-8");
	String path = request.getContextPath();
	
	String jspPage ="playerRank.jsp";
%>

<c:set var="jspPage" value="playerRank.jsp" />
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
<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic"
	rel="stylesheet" type="text/css">
<link rel="stylesheet" href="css/jquery-ui.css">
<style type="text/css">
body{
background-color: rgb(150,150,150);
}
</style>
</head>
<script src="<%=path%>/com/jquery-1.10.2.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		
		$("#prBtn").click(function(){
			$("iframe").attr("src","playerRank.jsp");
		})
		$("#hrBtn").click(function(){
			$("iframe").attr("src","playerRank.jsp");
		})
		$("#hlBtn").click(function(){
			$("iframe").attr("src","horseList.jsp");
		})
		$("#prBtn").click(function(){
			$("iframe").attr("src","playerRank.jsp");
		})
	    
		$(".dropdown-menu li a").click(function(){
			$("#searchList").text($(this).text());
		});
	});
	function autoResize(i)
	{
	    var iframeHeight = (i).contentWindow.document.body.scrollHeight;
	    (i).height=iframeHeight+20;
	}
	
</script>
<c:set var="jspPage" value="" />
<body>
	<div class="container-fluid">
		<div class="page-header">
			<div class="row">
				<h1 class="col-md-offset-5 col-sm-offset-4" style="font-size: 3.5em">
					PentAcorn<small style="font-size: 0.5em"> 전적 검색</small>
				</h1>
				<br>
				<form method="post">
				<ul
					class="nav nav-pills col-sm-offset-2 col-md-offset-2 col-xs-offset-4  col-md-6 col-sm-6 col-xs-4">
					<li class="active"><a href="#">home</a></li>
					<li id="prBtn">
						<a href="#">플레이어 순위</a>
					</li>
					<li id="hrBtn">
						<a href="#">경주마 순위</a>
					</li>
					<li id="hlBtn">
						<a href="#">경주마 list</a>
					</li>
				</ul>
				</form>
			</div>
		</div>
		
		<iframe src="" frameborder="0" width="100%" onload="autoResize(this)"
			marginwidth="0" marginheight="0" scrolling="no" ></iframe>

</body>
<script src="http://code.jquery.com/jquery-1.10.2.js?ver=1 "></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js?ver=1"></script>
<!-- Bootstrap Core JavaScript -->
<script src="js/bootstrap.min.js"></script>
</html>