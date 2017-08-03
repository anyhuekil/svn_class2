<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html >
<% 
 %>
<html>
<head>
<script src="http://code.jquery.com/jquery-3.2.1.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script>
<% 
 %>
$(document).ready(function(){
	$("td").css({"width": "80", "text-align":"center"});
	$(":button").on("click", function(){
		$("form").submit();
		
	});
});
/*

2단계–
Bain Trainning(랜덤)–
1.  5  * 2 =  [     ]
2.  3  + 4 =  [     ]
3.  4  % 2 = [      ]
>> output:
	입력내용		결과
	@@ * @@=@@	O
	@@ + @@=@@	X
	@@ % @@=@@	O
*/

</script>
<title>Insert title here</title>
</head>

<body>
	<% 
	
 %>
	<%
String[] question = new String[3];
String questionKey = new String("question");
String[] userAns = request.getParameterValues("answer");
String[] questAns = {"","",""};
String questAnsKey = new String("questAns");

int rand01;
int rand02;
int randOp;
char[] operators = {'+','-','*','%'};

%>

	<%! 
public int arithCalc(int a, int b, char op){
	int result = 0 ;
	switch(op){
	case '+': result = (a+b);
		break;
	case '-': result = (a-b);
		break;
	case '*': result = (a*b);
		break;
	case '%': 
		if(b != 0)
			result = (a % b);
		else{
			b = (int)(Math.random()*9 +1);
			result = (a % b);
		}
		break;
	}
	return result;
}


%>


	<table border>
		<%  
	String[] questionVal = (String[])session.getAttribute(questionKey);
	String[] questAnsVal = (String[])session.getAttribute(questAnsKey);

	if(userAns != null && userAns.length >0){  %>
		<tr>
			<td>문제</td>
			<td>문제답안</td>
			<td>유저답안</td>
			<td>정답여부</td>
		</tr>
		<% for(int idx =0; idx< 3 ; idx++){ %>
		<tr>
			<td><%= questionVal[idx] %></td>
			<td><%= questAnsVal[idx] %></td>
			<td><%= userAns[idx] %></td>
			<td><%= (userAns[idx]).equals(questAnsVal[idx])? "O" : "X"  %></td>
		</tr>
		<% }
}%>
	</table>

	<form method=post>
		<table border>
			<tr>
				<th colspan=4>Brain Math!</th>
			</tr>
			<%
for(int i = 0; i< 3; i++){
	rand01 = (int)(Math.random()*10);
	rand02 = (int)(Math.random()*10);
	randOp = (int)(Math.random()*4);
	int result = arithCalc(rand01, rand02, operators[randOp]);
	questAns[i] = String.valueOf(result);
	question[i] = rand01 + " " + operators[randOp] + " " + rand02;
	
	%>
			<tr>
				<td><%=rand01 %></td>
				<td><%=operators[randOp] %></td>
				<td><%=rand02 %></td>
				<td><input type=text name=answer /></td>
			</tr>
			<%}
	session.setAttribute(questionKey, question);
	session.setAttribute(questAnsKey, questAns);
%>
			<tr>
				<td colspan=4 align=right><input type=button value=goCheck /></td>
			</tr>
		</table>
	</form>



</body>
</html>
