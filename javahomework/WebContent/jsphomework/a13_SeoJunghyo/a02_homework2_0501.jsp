<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8"); %>    

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="/client_jsp/js/jquery-3.2.1.js"></script>

<style type="text/css">
	input{width:50px;}
	table{margin:auto; border-collapse:collapse; width:300px; height:300px;}
</style>
<script type="text/javascript">

/*
 	2단계
	-Brain Training(랜덤)
	1. 5*2 = []			입력내용		결과
	2. 3+4 = []			@@*@@=@@	O
	3. 4%2 = []			@@+@@=@@	X
						@@%@@=@@	O 
*/



	
</script>
</head>
<%int [] ranNum01= new int[4]; 
	for(int i=0; i<4; i++){
		ranNum01[i]=(int)(Math.random()*9+1);
	}

int [] ranNum02= new int[4]; 
	for(int i=0; i<4; i++){
		ranNum02[i]=(int)(Math.random()*9+1);
	}

String [] cal={"+","-","*","/"};
int ranIdx1=(int)(Math.random()*4);
int ranIdx2=(int)(Math.random()*4);
int ranIdx3=(int)(Math.random()*4);
int ranIdx4=(int)(Math.random()*4);

String [] num01List=request.getParameterValues("num01"); 
String [] num02List=request.getParameterValues("num02"); 
String [] calList=request.getParameterValues("cal"); 
String [] sumList=request.getParameterValues("sum"); 


%>

<body>
	<form>
	<!--  
	<input name="num01" value=< %=ranNum01[0] %>><input name="cal" value=< %=cal[ranIdx1] %>><input name="num02" value=< %=ranNum02[0] %>>=<input name="sum"><br>
	<input name="num01" value=< %=ranNum01[1] %>><input name="cal" value=< %=cal[ranIdx2] %>><input name="num02" value=< %=ranNum02[1] %>>=<input name="sum"><br>
	<input name="num01" value=< %=ranNum01[2] %>><input name="cal" value=< %=cal[ranIdx3] %>><input name="num02" value=< %=ranNum02[2] %>>=<input name="sum"><br>
	-->
	<input name="num01" value=<%=ranNum01[0] %>><input name="cal" value="+"><input name="num02" value=<%=ranNum02[0] %>>=<input name="sum"><br>
	<input name="num01" value=<%=ranNum01[1] %>><input name="cal" value="-"><input name="num02" value=<%=ranNum02[1] %>>=<input name="sum"><br>
	<input name="num01" value=<%=ranNum01[2] %>><input name="cal" value="*"><input name="num02" value=<%=ranNum02[2] %>>=<input name="sum"><br>
	<input name="num01" value=<%=ranNum01[3] %>><input name="cal" value="%"><input name="num02" value=<%=ranNum02[3] %>>=<input name="sum"><br>
	<input type="submit" value="전송">
	</form>
	<table border=1;>
		<%if(num01List!=null && calList!=null && num02List!=null && sumList!=null){%>
			<tr><th><%=num01List[0]+calList[0]+num02List[0]%>=<%=sumList[0] %></th>
			<%if( sumList[0].equals(Integer.toString(Integer.parseInt(num01List[0])+Integer.parseInt(num02List[0]))) ){%>
					<th>O</th>
			<%}else{ %>	
				 	<th>X 정답은 <%=Integer.parseInt(num01List[0])+Integer.parseInt(num02List[0]) %></th>
			<%} %>
			</tr>
			<tr><th><%=num01List[1]+calList[1]+num02List[1]%>=<%=sumList[1] %></th>
			<%if( Integer.parseInt(sumList[1])==(Integer.parseInt(num01List[1])-Integer.parseInt(num02List[1])) ){%>
					<th>O</th>
			<%}else{ %>	
				 	<th>X 정답은 <%=Integer.parseInt(num01List[1])-Integer.parseInt(num02List[1]) %></th>
			<%} %>
			</tr>
			<tr><th><%=num01List[2]+calList[2]+num02List[2]%>=<%=sumList[2]  %></th>
			<%if( Integer.parseInt(sumList[2])==(Integer.parseInt(num01List[2])*Integer.parseInt(num02List[2])) ){%>
					<th>O</th>
			<%}else{ %>	
				 	<th>X 정답은 <%=Integer.parseInt(num01List[2])*Integer.parseInt(num02List[2]) %></th>
			<%} %>			
			</tr>
			<tr><th><%=num01List[3]+calList[3]+num02List[3]%>=<%=sumList[3]  %></th>
			<%if( Integer.parseInt(sumList[3])==(Integer.parseInt(num01List[3])%Integer.parseInt(num02List[3])) ){%>
					<th>O</th>
			<%}else{ %>	
				 	<th>X 정답은 <%=Integer.parseInt(num01List[3])%Integer.parseInt(num02List[3]) %></th>
			<%} %>			
			</tr>
		<%}%>	
	</table>


</body>


</html>
