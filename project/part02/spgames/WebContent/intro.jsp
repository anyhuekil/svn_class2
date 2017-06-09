<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script src="./js/javascript.js"></script>
<script src="./js/variable.js"></script>
<link href="./css/css.css" rel="stylesheet" type="text/css">
<title>Insert title here</title>
<style type="text/css">
</style>
<script type="text/javascript">
</script>
</head>
<body>
<% session.invalidate(); %>
	<img src="./img/intro.jpg" class="introImg"
		style="width: 100%; height: 100%;" />
	 <form action="gameProc.jsp" method="post"> 
	 	<input type="hidden" name="hdPageChoice" value="first"/>
		<div class="modal-container">
			<div class="modal-wrapper">
				<div class="ui-modal-content" onclick="javascript:playerNameCall(1);"></div>
				<div class="ui-modal-content" onclick="javascript:playerNameCall(2);"></div>
				<div class="ui-modal-content" onclick="javascript:playerNameCall(3);"></div>
				<div class="ui-modal-content" onclick="javascript:playerNameCall(4);"></div>
			</div>
		</div>
	 </form> 
</body>
</html>
