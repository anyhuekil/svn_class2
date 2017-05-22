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
/*
	숙제 0501
	
	아래 내용을 form과 jquery를 활용하여 처리하세요
	1단계
	- 5월에 주요 할 일과들				May Schedule
	1.[	]						   @@@
	2.[ ]					==>    @@	
	3.[	]						   @@@
	[리스트 등록]
 
*/
	$(document).ready(function(){
		
	});
	
	$("button").on("click",function(){
		if( confirm("계획을 리스트에 등록하시겠습니까?") ){
			$("form").submit();
		}
	})
</script>
<style type="text/css">
</style>
</head>
<%String [] planList=request.getParameterValues("plan"); %>
<body>
	<h1>What to do in May</h1>
	<form>
		1. <input name="plan"><br>
		2. <input name="plan"><br>
		3. <input name="plan"><br>
		<button>Add List!</button>
	</form>
	<table border=1 style="border-collapse:collapse; width:300px; height:300px;">
	<caption>May Schedule</caption>
		<%if(planList!=null && planList.length>0){
			for(String plan : planList){%>
			<tr><th><%=plan %></th></tr>
			<%}
		}%>
	</table>
	
	<table>
		<tr><td></td></tr>
	</table>
</body>

</html>
