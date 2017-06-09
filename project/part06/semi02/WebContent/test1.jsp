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
<title>justification</title>
<style type="text/css">
</style>
<script src="${path}/com/jquery-1.10.2.js"></script>
<script type="text/javascript">
	$(document).ready(function() {

		$("#button").click(function() {
			callAjax();
		});
	});

	function callAjax() {
		$.ajax({
			type : "post",
			url : "./test2.jsp",
			data : {
				number : $('#number').val(),
				id : $('#id').val(),
				comment : $('#comment').val()
			},
			success : whenSuccess,
			error : whenError
		});
	}
	function whenSuccess(resdata) {
		$("#ajaxReturn").html(resdata);
		console.log(resdata);
	}
	function whenError() {
		alert("Error");
	}
</script>



</head>
<body>
	<div style="width: 500px; margin: auto; margin-top: 200px;">
		<form id="frm">
			<div>
				<label>글번호</label><input name="number" id="number">
			</div>
			<div style="margin-top: 20px;">
				<label>아이디</label><input name="id" id="id">
			</div>
			<div style="margin-top: 20px;">
				<label>코멘트</label><input name="comment" id="comment">
			</div>
			<div style="margin-top: 20px;">
				<input id="button" type="button" value="버튼">
			</div>
		</form>
		<div id="ajaxReturn">ajaxReturnOutput</div>
	</div>

</body>
</html>
