<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
#wrap { width:700px; margin: 0 auto; background-color: white; text-align: center;}
</style>
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script>
	$(document).ready(function() {
		$("input[type=text]").keyup(function(){
			var que = $("input[name=que]").val();
			var coransw = $("input[name=coransw]").val();
			var sendData = "que="+que+"&coransw="+coransw;
			$.ajax({
				type:'post',
				url:"quebankResult_homework0530.jsp",
				dataType:"html",
				data:sendData,
				success:function(empList){
					$("#result").html(empList);
				}
			});
		});
	});
</script>
</head>

<body>
<div id="wrap">
	문제 <input type="text" name="que"/>
	정답 <input type="text" name="coransw"/>
	<br><br>
	<div id="result"></div>
</div>
</body>
</html>
