<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
#wrap {width:600px; margin: 10px auto;}
h1 { 
	border : 1px solid  #4697B3;
	text-align: center; padding:5px;
	/* Permalink - use to edit and share this gradient: http://colorzilla.com/gradient-editor/#feffff+0,ddf1f9+40,ddf1f9+42,a0d8ef+100 */
	background: #feffff; /* Old browsers */
	background: -moz-linear-gradient(top,  #feffff 0%, #ddf1f9 40%, #ddf1f9 42%, #a0d8ef 100%); /* FF3.6-15 */
	background: -webkit-linear-gradient(top,  #feffff 0%,#ddf1f9 40%,#ddf1f9 42%,#a0d8ef 100%); /* Chrome10-25,Safari5.1-6 */
	background: linear-gradient(to bottom,  #feffff 0%,#ddf1f9 40%,#ddf1f9 42%,#a0d8ef 100%); /* W3C, IE10+, FF16+, Chrome26+, Opera12+, Safari7+ */
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#feffff', endColorstr='#a0d8ef',GradientType=0 ); /* IE6-9 */
	
}
table {width:100%; background-color: white;}
th {background-color: #4697B3;}
tr:nth-child(2n) {background-color: #B9E0ED;}
tr:nth-child(2n+1) {background-color: #CCE7F0;}
th, td{padding:10px 20px;}
</style>
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script>
	$(document).ready(function() {
		
	});
</script>
</head>
<body>
<!-- 데이터가 나오는 곳은 java 변수로 출력 -->
<%!	
	class Content { 		// src폴더에 넣는게 정상이나 파일 하나로 하려다 보니 여기다 함
		private String time;
		private String plan;
		private boolean passNfail;
		private String etc;
		public Content(String time, String plan, boolean passNfail, String etc){
			this.time = time;
			this.plan = plan;
			this.passNfail = passNfail;
			this.etc = etc;
		}
		public String getTime() {return time;}
		public String getPlan() {return plan;}
		public boolean isPassNfail() {return passNfail;}
		public String getEtc() {return etc;}
	}
	Content[] contents = {new Content("9:30","수업시작",true,"기분좋은시작"),
			new Content("13:20","점심시간메뉴",false,"오늘은?"),
			new Content("16:30","프로젝트",false,"이틀?")};
%>
<div id="wrap">
 	<h1> Daily Schedule!! </h1>
 	<table>
 		<tr><th>시간</th><th>계획내용</th><th>달성여부</th><th>기타</th></tr>
<%		for(Content c : contents) {%>
		<tr><td><%=c.getTime() %></td><td><%=c.getPlan() %></td><td><%=(c.isPassNfail()==true)?"달성":"미달성" %></td><td><%=c.getEtc()%></td></tr>
<%		} %>
 	</table>
</div>
</body>
</html>
