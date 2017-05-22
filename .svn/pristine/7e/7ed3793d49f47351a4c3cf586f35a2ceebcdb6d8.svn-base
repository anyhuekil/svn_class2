<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8"); %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="/jsp_exp/js/jquery-3.2.1.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("input[type=button]").on("click", function(){
			$("input[type=hidden]").val($(this).val());
			$("form").attr("method", "post");
			$("form").attr("action", "a03_homework_red_0509.jsp");
			$("form").submit();
		})
	});
</script>
<style type="text/css">
	input{width:300px; height:300px; font-size:50px; text-align:center;}
</style>
</head>
<body>
<!-- 
 # response 확인예제 0509
 동전이 있는 곳은? [   ](1~3)  - 1단계
 [1번] [2번] [3번] 2단계
 다음 page에서 맞으면 정답 동전 획득
 -->

 <form>
 	<input type="button" value="1번">
 	<input type="button" value="2번">
 	<input type="button" value="3번">
 	<input type="hidden" name="no">
 </form>

</body>
</html>
