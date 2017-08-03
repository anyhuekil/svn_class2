<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="jspexp.z01_database.*,jspexp.z02_vo.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<% 
request.setCharacterEncoding("UTF-8");
String path=request.getContextPath();
%>
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>justification</title>
<style type="text/css">
</style>
<script src="<%=path%>/com/jquery-1.10.2.js"></script>
<script type="text/javascript">
			$(document).ready(function(){

				var colors=["red","orange","yellow","green","blue","navy","purple"];
				var colorIdx="${param.selColor}";
				$("select[name=selColor]").val(colorIdx);
				if(colorIdx==""){
					colorIdx=0;
				}			
				$("body").attr("bgcolor",colors[colorIdx]);
				$("select[name=selColor]").change(function(){
					$("form").submit();
				});	
			});
		</script>
</head>
<body>
	<form method="post">
		<h1>
			배경색상 선택 <select name="selColor"
				style="font-size: 20pt; width: 100pt; height: 25pt;">
				<option value="0">빨강</option>
				<option value="1">주황</option>
				<option value="2">노랑</option>
				<option value="3">초록</option>
				<option value="4">파랑</option>
				<option value="5">남색</option>
				<option value="6">보라</option>
			</select>
		</h1>
	</form>
</body>
</html>
