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
	$("input[type=button]").on("click",function(){
		// 데이터 validate check..
		if( confirm("전송하시겠습니까?") ){
			$("form").submit();
		}
	});
});
</script>
</head>
<body>
<%  // .getParameterValues("name값이 다수")
	String []revFruits=request.getParameterValues("fruits");
%>
<form method="post">
좋아하는 과일을 입력하세요!!<br>
1.<input type="text" name="fruits"/><br>
2.<input type="text" name="fruits"/><br>
3.<input type="text" name="fruits"/><br>
4.<input type="text" name="fruits"/><br>
	<input type="button" value="입력"/>
</form>
<h3>전송된 값</h3>
<%if(revFruits!=null && revFruits.length>0){
  	for(String fruit:revFruits){ %>
  		<%=fruit%>,
<%	}
  }%>
</body>
</html>