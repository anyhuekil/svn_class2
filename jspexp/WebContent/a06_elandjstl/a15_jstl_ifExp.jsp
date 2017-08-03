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
				// 다음 page 입력 data를 나타나게..
				$("select[name=cornum]").val("${param.cornum}");
				$("select[name=cornum]").change(function(){
					$("form").submit();
				});
			})
		</script>
</head>
<body>
	<form method="post">
		<h1>
			4 + 5 = <select name="cornum"
				style="font-size: 20pt; width: 50pt; height: 25pt;">
				<option>0</option>
				<option>1</option>
				<option>2</option>
				<option>3</option>
				<option>4</option>
				<option>5</option>
				<option>6</option>
				<option>7</option>
				<option>8</option>
				<option>9</option>
			</select>
		</h1>
	</form>
	<c:if test="${not empty param.cornum }">
		<c:if test="${param.cornum == 9 }">
			<h2>정답 입니다.</h2>
		</c:if>
		<c:if test="${param.cornum != 9 }">
			<h2>오답 입니다.</h2>
		</c:if>
	</c:if>

</body>
</html>
