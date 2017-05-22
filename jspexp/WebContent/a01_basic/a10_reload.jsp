<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<%
	// request.getParameter("favFruit") 초기 (X)
	// favFruit ==> null
	String favFruit=request.getParameter("favFruit");
	// 초기 page이거나 name="favFruit" 값을 입력하지 
	// 않을 때는, null이 있기 때문에 이에  처리를 해 주어야 한다.
	if(favFruit==null){
		favFruit="";
	}
%>
<body>
	<form><!-- form에 action의 속성을 지정하지 않으면 현재  page를 호출한다. -->
		좋아하는 과일 :<input type="text" name="favFruit"
						value="<%=favFruit%>"/><br>
		<input type="submit"/><br>		
	</form>
	입력한 과일:<%= favFruit%>
</body>
</html>