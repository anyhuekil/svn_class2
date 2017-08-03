<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>justification</title>
<link rel="stylesheet" href="${path}/a00_com/a00_com.css">
<style type="text/css">
</style>
<script src="${path}/com/jquery-1.10.2.js"></script>
<script type="text/javascript">
			$(document).ready(function(){
				
			})
			function download(fname){
				$(location).attr("href","down.do?fname="+fname);
			}
		</script>
</head>
<body>
	<center>
		<h3>파일 업로드 합니다!</h3>
		<form method="post" enctype="multipart/form-data">
			파일 첨부:<input type="file" name="report" /><br> <input
				type="submit" value="업로드" />
		</form>
		<a href="javascript:download('${fname}');">${fname}</a>
</body>
</html>