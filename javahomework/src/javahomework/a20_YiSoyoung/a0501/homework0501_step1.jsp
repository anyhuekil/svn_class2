<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%	request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
th { 
	border : 1px solid  #4697B3;
	text-align: center; padding:5px;
	/* Permalink - use to edit and share this gradient: http://colorzilla.com/gradient-editor/#feffff+0,ddf1f9+40,ddf1f9+42,a0d8ef+100 */
	background: #feffff; /* Old browsers */
	background: -moz-linear-gradient(top,  #feffff 0%, #ddf1f9 40%, #ddf1f9 42%, #a0d8ef 100%); /* FF3.6-15 */
	background: -webkit-linear-gradient(top,  #feffff 0%,#ddf1f9 40%,#ddf1f9 42%,#a0d8ef 100%); /* Chrome10-25,Safari5.1-6 */
	background: linear-gradient(to bottom,  #feffff 0%,#ddf1f9 40%,#ddf1f9 42%,#a0d8ef 100%); /* W3C, IE10+, FF16+, Chrome26+, Opera12+, Safari7+ */
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#feffff', endColorstr='#a0d8ef',GradientType=0 ); /* IE6-9 */
	margin-bottom: 0;
}
table {width:300px; margin: 10px auto; background-color: white; margin: 0 auto;}
.no {background-color: #4697B3;}
tr:nth-child(2n) {background-color: #B9E0ED;}
tr:nth-child(2n+1) {background-color: #CCE7F0;}
th, td{padding:10px 20px; text-align: center;}
</style>
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script>
	$(document).ready(function() {
		$('input[type=button]').click(function() {
			if(confirm('전송하시겠습니까?'))
				$('form').submit();
		});
	});
</script>
</head>
<body>
<!-- 숙제 : 아래 내용을 form과 jquery를활용하여 처리
	1단계 :  5월에 주요할 일과들
		1. [ ]
		2. [ ]
		3. [ ]
		[리스트등록]
	2단계 : Bain Trainning(랜덤)
	1. 5*2 = [] O
	2. 3+4 = [] X
	3. 4%2 = [] O
 -->
 <%	String[] plans = request.getParameterValues("plans"); %>
 		<form action="">
 			<table>
 				<tr><th colspan="2">May schedule</th></tr>
 				<tr><td class="no">1.</td><td><input type="text" name="plans" size="30" autofocus="autofocus"></td></tr>
 				<tr><td class="no">2.</td><td><input type="text" name="plans" size="30"></td></tr>
 				<tr><td class="no">3.</td><td><input type="text" name="plans" size="30"></td></tr>
 				<tr><td colspan="2"><input type="button" value="전송"></td></tr>
 			</table>
 		</form>
 		<table>
 			<tr><th>방금 입력했던 스케쥴</th></tr>
 			<%	if(plans!=null && plans.length>0){
 					for(String plan : plans)
 						if(!plan.trim().equals(""))
							out.println("<tr><td>"+plan+"</td></tr>");
				}else{
					out.println("<tr><td>입력받은 데이터가 없어요</td></tr>");
				}%>
 		</table>
</body>
</html>
