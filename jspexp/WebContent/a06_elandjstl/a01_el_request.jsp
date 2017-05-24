<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	import ="jspexp.z01_database.*,jspexp.z02_vo.*"
%>
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
				
			})
		</script>
	</head>
	<body>
	<form method="post">
		좋아하는 단어:<input type="text" name="favWord"/><br>
		<input name="num01" size="2"/>+
		<input name="num02" size="2"/>
		<input type="submit" value="확인"/>
	</form>
		입력된 단어:${param.favWord}<br>
		연산값:${param.num01} + ${param.num02} = 
		${param.num01+param.num02}

	</body>
</html>
