<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%	request.setCharacterEncoding("UTF-8"); %>
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
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
table {width:600px; margin: 10px auto; background-color: white; margin: 0 auto;}
th, td{padding:10px 20px; text-align: center;}
.no {background-color: #4697B3;}
.cal{width: 200px;}
.result {width:100px;}
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
input[name=operator], input[name=score] {border: 0; font-weight: bold; font-size:1.1em; text-align: center;}
tr, input[name=operator], input[name=score] {background-color: #B9E0ED;}
input[name=score] {font-size: 0.8em; color:red;}
</style>
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script>
	$(document).ready(function() {
		
	});
	function scoreResult() {
		if(confirm('전송하시겠습니까?'))
			return true;
		else
			return false;
	}
</script>
</head>
<body>
<%! int temp; String[] message = {"","",""};%>
 <%	String[] firstNum = request.getParameterValues("firstNum");
 	String[] operator = request.getParameterValues("operator");
 	String[] secondNum = request.getParameterValues("secondNum");
 	String[] result = request.getParameterValues("result");
 	String[] score = request.getParameterValues("score");
 %>
 	<form action=""  onsubmit="return scoreResult()">
 		<table>
 			<tr><th colspan="2">입력</th><th>결과입력</th><td rowspan="4"><input type="submit" value="채점"></td><th>채점결과</th></tr>
 		<% for(int i=0 ; i<3 ; i++) {%>
 			<tr>
 				<td class="no"><%=(i+1) %></td>
 				<td class="cal"><input type="text" name="firstNum" value="<%=(int)(Math.random()*100)%>" size="1">
 					<input type="text" name="operator" value="<%
 							switch((int)(Math.random()*5)){
 			 				case 0 : out.println("+");break;
 			 				case 1 : out.println("-");break;
 			 				case 2 : out.println("*");break;
 			 				case 3 : out.println('/');break;
 			 				case 4 : out.println("%");break;
 	 					}%>" size="1">
 					<input type="text" name="secondNum" value="<%=(int)(Math.random()*100)%>" size="1">
 				</td>
 				<td><input type="text" name="result" size="1"></td>
 				<td class="result"><input type="text" name="score" size="10" value="<%
 						if(firstNum!=null){
 							switch(operator[i]){
 							case "+" : temp = Integer.parseInt(firstNum[i])+Integer.parseInt(secondNum[i]); break;
 							case "-" : temp = Integer.parseInt(firstNum[i])-Integer.parseInt(secondNum[i]); break;
 							case "*" : temp = Integer.parseInt(firstNum[i])*Integer.parseInt(secondNum[i]); break;
 							case "/" : 
 								try{
 									temp = (int)Math.round(Double.parseDouble(firstNum[i])/Integer.parseInt(secondNum[i]));
 								}catch(ArithmeticException e){
 									message[i] = "0으로는 못 나눠";
 								} 
 								break;
 							case "%" : 
 								try{
 									temp = Integer.parseInt(firstNum[i])%Integer.parseInt(secondNum[i]); 
 								}catch(ArithmeticException e){
 									message[i] = "0으로는 못 나눠";
 								}
 								break;
 							}
 							try{
 							if(temp == Math.round(Double.parseDouble(result[i])) && !message[i].equals("0으로는 못 나눠")){
 								out.println("O");
 							}else if(temp != Double.parseDouble(result[i]) && !message[i].equals("0으로는 못 나눠")){
 								out.println("X");
 							}else{
 								out.println(message[i]);
 							}
 							}catch(Exception e){
 								out.println("문제를 풀어야지");
 							}
 						}
 						%>"></td>
 			</tr>
 		<%	} %>
 		</table>
 	</form>
</body>
</html>
