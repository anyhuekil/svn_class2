<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="/jsp_exp/js/jquery-3.2.1.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		<%
		String [] gogo = {"'시간'", "'계획내용'", "'달성여부'", "'기타'", "'아홉시'", "'수업'", "'달성'", "'시작'",
		      "'열두시'", "'또수업'", "'역시달성'", "'졸리다'", "'오후네시'", "'자습'", "'수행중'", "'과제중'"};

		
		for(int idx=0; idx<gogo.length; idx++){
		%>
		   $('.td').eq(<%=idx%>).html(<%=gogo[idx]%>);
		<%
		}
		%>
		
	});

</script>
<style type="text/css">

</style>
</head>
<body>
<%
   String name="홍길동";
   
%>
   <h1>jsp!!!<%=name%></h1>
<%   for(int idx3=0; idx3<4; idx3++){
%>
      <div class="tr">
   <%   for(int idx2=0; idx2<4; idx2++){
   %>
         <div class="td"></div>
   <%   }
   %>
      </div>   
<%   }
%>
</body>
</html>
