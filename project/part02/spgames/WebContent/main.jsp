<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<% request.setCharacterEncoding("EUC-KR");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="./js/javascript.js"></script>
<script src="./js/variable.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="./css/css.css" rel="stylesheet" type="text/css">
<title>Insert title here</title>
<style>
</style>
<script type="text/javascript">
var widthArr = [];
var playerName = [];
var playerNum = 0;
var loserName = "";
<%
int pos = 0;
int posTest = 0;
String playerName[] = (String[])session.getAttribute("pn");
String widthArr[] = (String[])session.getAttribute("widthArr");
int playerNameLength = playerName.length;
String loserName = (String)session.getAttribute("loserName");
System.out.println("main page loserName : " +loserName);

if(loserName != null && loserName != ""){
	for(int i=0; i<playerName.length; i++){
		if(playerName[i].equals(loserName)){
			posTest = 1;
			System.out.println("test");
			pos = i;
		}
	}
	if(posTest == 1){
		for(int i=pos; i<playerName.length-1; i++){
				playerName[i] = playerName[i+1];
		}
		playerNameLength --;
	}
}
for(int i=0; i<playerNameLength; i++){
%>	playerName.push("<%=playerName[i]%>"); <%
}

if(widthArr!=null){
	for(int i=0; i<widthArr.length; i++){
		%>
		widthArr.push("<%=widthArr[i]%>"); 
		<%
	}
}else {
	System.out.println("main page, widthArr = null");
}

String[] playerNameReal = new String[playerNameLength];
for(int i=0; i<playerNameLength; i++){
	playerNameReal[i] = playerName[i];
	System.out.println(playerName[i]);
}

session.setAttribute("pn", playerNameReal);
System.out.println(((String[])session.getAttribute("pn")).length);

%>
playerNum = "<%=playerNameLength%>";
$(function(){
	playerInfoSetting();
	gameSetting(playerNum);
	alcoholBarSetting();
});
</script>
</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active">
        <a href = "intro.jsp" style="background:#222">HOME</a>
        </li>
      </ul>
      
      <ul class="nav navbar-nav navbar-right">
      	<li style="margin:12px; color:white;">
      	    	<c:choose>
      		<c:when test="${member.memid!=null}">
      			${member.memid} 님 환영합니다.
      			<form method="post" action="gameProcLogin.jsp">
      			<input type="hidden" name="hdPageChoice" value="logout"/>
      			<button id="logout" style="background:#222; border:none;">로그아웃</button>
      			<button id="gameInfo" style="background:#222; border:none;">정보보기</button>
      			</form>
      		</c:when>
      		<c:otherwise>
      			로그인이 되어있지 않습니다.  
      		</c:otherwise>
      	</c:choose>  	
      	</li>
      	<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"> 
      	<b>Login</b> <span class="caret"></span></a>
						<ul id="login-dp" class="dropdown-menu">
							<li>
								<div class="row">
									<div class="col-md-12">
										<form class="form" role="form" method="post" action="gameProcLogin.jsp"
											accept-charset="UTF-8" id="login-nav">
											<input type="hidden" id="hdLogin" name="hdPageChoice" value="login"/>
											<div class="form-group">
												<label class="sr-only" for="memid">ID</label> <input
													type="text" name="memid" class="form-control" id="memid" placeholder="ID"
													required>
											</div>
											<div class="form-group">
												<label class="sr-only" for="pwd">Password</label> <input
													type="password" name="pass" class="form-control" id="pass"
													placeholder="Password" required>
												<div class="help-block text-right">
													<a href="">비밀번호 찾기</a>
												</div>
											</div>
											<div class="form-group">
												<button id="loginBtn">로그인</button>
											</div>
											<div class="checkbox">
												<label> <input type="checkbox"> 로그인 유지하기
												</label>
											</div>
										</form>
									</div>
									<div class="bottom text-center"><button id="regBtn">회원 가입</button></div>
								</div>
							</li>
						</ul>
				</li>
			</ul>
    </div>
  </div>
  </nav>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>
    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
    <form id = "mainForm" method="post" action="gameProc.jsp">
    <input type="hidden" name="hdPageChoice" value="second"/>
   	 <input type="hidden" id="hdGameChoice" name="hdGameChoice"/>
   	 <input type="hidden" id = "loserName" name="loserName"/>
   	 </form>
      <div class="item active" >
        <img src="./img/game1.png"  alt="Image" id="GameImg1">
      </div>
      <div class="item" id="GameImg2">
        <img src="./img/game2.png"  alt="Image" id="GameImg2">
      </div>
      <div class="item" id="GameImg3">
        <img src="./img/game3.png"  alt="Image" id="GameImg3">
      </div>
    </div>
    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
</div> 
<div class="row-container">
	<div class="ui-playerInfo">Player Info</div>
	<!-- GAEME ONE -->
	<div class="ui-gameSection">
	<jsp:include page="${hdGameChoice}"></jsp:include>
	</div>
	<div class="ui-alcoholBar">Alcohol Bar</div>
</div>	

</body>
</html>