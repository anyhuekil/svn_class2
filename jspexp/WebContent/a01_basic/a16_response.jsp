<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
/*

*/

/**/
</style>
<script src="/jspexp/com/jquery-1.10.2.js">
</script>
<script type="text/javascript">
$(document).ready(function(){
	$("#loginBtn").on("click",function(){
		//alert($(this).val());
		if( $("input[name=id]").val()==""){
			alert("id값을 입력하세요!!");
			// focus() 처리.
			$("input[name=id]").focus();
			return; // 프로세스 중단 처리
		}
		if( $("input[name=pwd]").val()==""){
			alert("password값을 입력하세요!!");
			$("input[name=pwd]").focus();
			return; // 프로세스 중단 처리		
		}
		// form객체에 특정 페이지 이동 처리..
		$("form").attr("action","a17_response_red.jsp");
		$("form").attr("method","post");
		// 해당페이지로 데이터 전송 처리..
		$("form").submit();
		
	});
	// action="a17_response_red.jsp" 
});
</script>
</head>
<body>
	<!-- 
login해서 다음 page(a17_response_red.jsp)에 요청값을 전달하여.
해당 page에서 인증된 데이터가 있으면, 로그인 성공, id를 화면에 보여주고,
아니면 다시 login page로 이동 처리(response.sendRedirect)
-->
	<form>
		ID:<input type='text' name="id" /><br> PASS:<input
			type="password" name="pwd" /><br> <input type="button"
			id="loginBtn" value="로그인" />
	</form>

</body>
</html>
