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
	<h2>수학 게임</h2>	<form method="post">
		<input type="text" name="num01" value="${(int)(Math.random()*9+1)}" size="1"/>*
		<input type="text" name="num02" value="${(int)(Math.random()*9+1)}"  size="1"/>
		=<input type="text" name="inputRs" value=""  size="1"/><br>
		<input type="submit" value="확인"/>
	</form>
	정답여부:${param.num01*param.num02 eq param.inputRs}
	
	

	</body>
</html>