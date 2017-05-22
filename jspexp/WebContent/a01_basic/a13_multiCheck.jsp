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
	
});
</script>
</head>
<body>
<%
// checkbox인 경우, check된 데이터만 입력 됨.
String favFruits[]=request.getParameterValues("favFruit");
String choFruits="";
if(favFruits!=null&&favFruits.length>0){
	for(String fruit:favFruits){
		choFruits+=fruit+",";
	}
}
%>
<form method="post">
<h1>좋아하는 과일</h1>
<input type="checkbox" name="favFruit" value="사과"/>사과<br>
<input type="checkbox" name="favFruit" value="바나나"/>바나나<br>
<input type="checkbox" name="favFruit" value="딸기"/>딸기<br>
<input type="checkbox" name="favFruit" value="오렌지"/>오렌지<br>
<input type="submit" value="과일 등록"/>
</form>
<h2>선택한 과일은 <%=choFruits%> 입니다.</h2>
</body>
</html>