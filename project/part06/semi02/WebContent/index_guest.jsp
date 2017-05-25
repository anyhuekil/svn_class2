<%@page import="dao.DAO_PlayerInfo"%>
<%@page import="vo.PlayerInfo"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:requestEncoding value="utf-8" />
<c:set var="path" value="${pageContext.request.contextPath}" />

<%
	DAO_PlayerInfo daoP = new DAO_PlayerInfo();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>PentAcorn</title>

<!-- Bootstrap Core CSS -->

<link href="css/bootstrap.min.css" rel="stylesheet">


<!-- Custom Fonts -->
<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet"
	type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic"
	rel="stylesheet" type="text/css">
<!-- Custom CSS -->
<link href="css/stylish-portfolio.css?ver=3" rel="stylesheet">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->



<style type="text/css">
.guestheader {
	display: table;
	position: relative;
	width: 100%;
	height: 100%;
	background: url(img/bg2.jpg) no-repeat center center scroll;
	-webkit-background-size: cover;
	-moz-background-size: cover;
	background-size: cover;
	-o-background-size: cover;
	color: white;
}
</style>
</head>
<%
	boolean logonState = session.getAttribute("user") != null ? true : false;
	session.setAttribute("logonState", logonState);
	int rank = 5;
	int money = 5000;
%>
<body scroll="no" style="overflow: hidden">

	<!-- login Modal -->
	<div class="modal fade" id="loginModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">Login to pentAcorn</h4>
				</div>
				<div class="modal-body">
					<form method="post" action="login.jsp">
						<input type="hidden" name="proc" value="login" />
						<div class="form-group row">
							<div class="col-md-offset-2 col-md-8">
								<label for="inputId">ID</label> <input type="text"
									class="form-control" id="inputId" name="inputId"
									placeholder="ID">
							</div>
						</div>
						<div class="form-group row">
							<div class="col-md-offset-2 col-md-8">
								<label for="inputPass">Password</label> <input type="password"
									class="form-control" id="inputPass" name="inputPass"
									placeholder="Password">
							</div>
						</div>
						<button type="submit"
							class="btn btn-default btn-lg col-md-offset-5">login</button>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary"
						onclick="$('#regModal').modal('show')">Register</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
	<!-- register Modal -->
	<div class="modal fade" id="regModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">Register to
						pentAcorn</h4>
				</div>
				<div class="modal-body">
					<form action="login.jsp">
						<input type="hidden" name="proc" value="register" />
						<div class="row">
							<div class="col-md-offset-2 col-md-5">
								<label for="idReg">ID</label>
							</div>
							<div>
								<div class="col-md-5 col-md-offset-2">
									<input type="text" class="form-control" id="idReg" name="idReg"
										placeholder="ID">
								</div>
<<<<<<< .mine
								<button class="btn btn-default col-md-2" type="button">중복
									확인</button>
||||||| .r193
								<button class="btn btn-default col-md-2" type="button">�ߺ�
									Ȯ��</button>
=======
								<button class="btn btn-default col-md-2" type="button"
									onclick="">중복 확인</button>
>>>>>>> .r256
							</div>
						</div>
						<div class="row">
							<div class="form-group col-md-offset-2 col-md-7">
								<label for="passReg">Password</label> <input type="password"
									class="form-control" id="passReg" name="passReg"
									placeholder="Password">
							</div>
						</div>
						<div class="row">
							<div class="form-group col-md-offset-2 col-md-7">
<<<<<<< .mine
								<label for="comfirmPassReg">Password 확인</label> <input
									type="password" class="form-control" id="comfirmPassReg" name="comfirmPassReg"
									placeholder="Password 확인">
||||||| .r193
								<label for="comfirmPassReg">Password Ȯ��</label> <input
									type="password" class="form-control" id="comfirmPassReg" name="comfirmPassReg"
									placeholder="Password Ȯ��">
=======
								<label for="comfirmPassReg">Password 확인</label> <input
									type="password" class="form-control" id="confirmPassReg"
									name="confirmPassReg" placeholder="Password 확인">
>>>>>>> .r256
							</div>
						</div>
						<div class="row">
							<div class="form-group col-md-offset-2 col-md-7">
<<<<<<< .mine
								<label for="nameReg">이름</label> <input type="text"
									class="form-control" id="nameReg" name="nameReg" placeholder="이름">
||||||| .r193
								<label for="nameReg">�̸�</label> <input type="text"
									class="form-control" id="nameReg" name="nameReg" placeholder="�̸�">
=======
								<label for="nameReg">이름</label> <input type="text"
									class="form-control" id="nameReg" name="nameReg"
									placeholder="이름">
>>>>>>> .r256
							</div>
						</div>
						<div class="row">
							<div class="form-group col-md-offset-2 col-md-7">
<<<<<<< .mine
								<label for="emailReg">주소</label> <input type="text"
									class="form-control" id="emailReg" name="emailReg" placeholder="주소">
||||||| .r193
								<label for="emailReg">�ּ�</label> <input type="text"
									class="form-control" id="emailReg" name="emailReg" placeholder="�ּ�">
=======
								<label for="emailReg">e-mail</label> <input type="email"
									class="form-control" id="emailReg" name="emailReg"
									placeholder="주소">
>>>>>>> .r256
							</div>
						</div>
						<div class="row">
							<div class="form-group col-md-offset-2 col-md-7">
<<<<<<< .mine
								<label for="telReg">연락처</label> <input type="text"
									class="form-control" id="telReg" name="telReg" placeholder="연락처">
||||||| .r193
								<label for="telReg">����ó</label> <input type="text"
									class="form-control" id="telReg" name="telReg" placeholder="����ó">
=======
								<label for="telReg">연락처</label> <input type="text"
									class="form-control" id="telReg" name="telReg"
									placeholder="연락처">
>>>>>>> .r256
							</div>
						</div>
						<button type="submit" class="btn btn-primary col-md-offset-5">Register</button>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>

	<!-- modify Modal -->
	<div class="modal fade" id="modifyModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">Modify user info</h4>
				</div>
				<div class="modal-body">
					<form action="login.jsp">
						<input type="hidden" name="proc" value="modify" />
						<div class="form-group col-md-offset-2 col-md-7">
							<label for="inputIdMod">ID</label> <input type="text"
								class="form-control" id="idMod" name="idMod"
								value="${user.pid }" disabled="disabled">
						</div>
						<!-- /.col-lg-6 -->
						<div class="form-group col-md-offset-2 col-md-7">
							<label for="prevPassMod">이전 Password</label> <input
								type="password" class="form-control" id="prevPassMod"
								name="prevPassMod" placeholder="이전 Password">
						</div>
						<div class="form-group col-md-offset-2 col-md-7">
							<label for="passMod">새로운 Password</label> <input type="password"
								class="form-control" id="passMod" name="passMod"
								placeholder="Password">
						</div>
						<div class="form-group col-md-offset-2 col-md-7">
<<<<<<< .mine
							<label for="inputConfirmPassMod">Password 확인</label> <input
								type="password" class="form-control" id="inputConfirmPassMod"
								placeholder="Password 확인">
||||||| .r193
							<label for="inputConfirmPassMod">Password Ȯ��</label> <input
								type="password" class="form-control" id="inputConfirmPassMod"
								placeholder="Password Ȯ��">
=======
							<label for="confirmPassMod">Password 확인</label> <input
								type="password" class="form-control" id="confirmPassMod"
								name="confirmPassMod" placeholder="Password 확인">
>>>>>>> .r256
						</div>
						<div class="form-group col-md-offset-2 col-md-7">
<<<<<<< .mine
							<label for="inputNameMod">이름</label> <input type="text"
								class="form-control" id="inputNameMod" placeholder="이름">
||||||| .r193
							<label for="inputNameMod">�̸�</label> <input type="text"
								class="form-control" id="inputNameMod" placeholder="�̸�">
=======
							<label for="nameMod">이름</label> <input type="text"
								class="form-control" id="nameMod" name="nameMod"
								placeholder="이름">
>>>>>>> .r256
						</div>
						<div class="form-group col-md-offset-2 col-md-7">
<<<<<<< .mine
							<label for="inputAddrMod">주소</label> <input type="text"
								class="form-control" id="inputAddrMod" placeholder="주소">
||||||| .r193
							<label for="inputAddrMod">�ּ�</label> <input type="text"
								class="form-control" id="inputAddrMod" placeholder="�ּ�">
=======
							<label for="emailMod">e-mail</label> <input type="text"
								class="form-control" id="emailMod" name="emailMod"
								placeholder="주소">
>>>>>>> .r256
						</div>
						<div class="form-group col-md-offset-2 col-md-7">
<<<<<<< .mine
							<label for="inputTelMod">연락처</label> <input type="text"
								class="form-control" id="inputTelMod" placeholder="연락처">
||||||| .r193
							<label for="inputTelMod">����ó</label> <input type="text"
								class="form-control" id="inputTelMod" placeholder="����ó">
=======
							<label for="telMod">연락처</label> <input type="text"
								class="form-control" id="telMod" name="telMod" placeholder="연락처">
>>>>>>> .r256
						</div>
						<button type="submit" class="btn btn-primary col-md-offset-5">회원정보
							수정</button>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>

	<!-- Navigation -->
	<a id="menu-toggle" href="#" class="btn btn-dark btn-lg toggle"><i
		class="fa fa-bars"></i></a>
	<nav id="sidebar-wrapper">
	<ul class="sidebar-nav">
		<a id="menu-close" href="#"
			class="btn btn-light btn-lg pull-right toggle"><i
			class="fa fa-times"></i></a>
		<!-- TODO: 로그인 시 id출력, 로그아웃 시 '로그인 해주세요' 메세지 출력  -->
		<li class="sidebar-brand"><a href="#top" onclick=$("#menu-close").click();>Wellcome,
<<<<<<< .mine
				${user.pid }</a></li>
		<!-- 로그아웃 상태일 시 hidden -->
		<li><a onclick=$(location).attr("href","login.jsp?proc=logout");>로그아웃</a>
		</li>
		<!-- TODO: 로그인이 되어 있을시 hidden  -->
		<li><a onclick=$("#loginModal").modal("show");>로그인</a></li>
		<!-- TODO: 로그인이 되어 있을시 hidden  -->
		<li><a onclick=$("#regModal").modal("show");>회원가입</a></li>
		<!-- TODO: 로그아웃이 되어 있을시 hidden  -->
		<li><a onclick=$("#modifyModal").modal("show");>회원정보 수정</a></li>
||||||| .r193
				${user.pid }</a></li>
		<!-- �α׾ƿ� ������ �� hidden -->
		<li><a onclick=$(location).attr("href","login.jsp?proc=logout");>�α׾ƿ�</a>
		</li>
		<!-- TODO: �α����� �Ǿ� ������ hidden  -->
		<li><a onclick=$("#loginModal").modal("show");>�α���</a></li>
		<!-- TODO: �α����� �Ǿ� ������ hidden  -->
		<li><a onclick=$("#regModal").modal("show");>ȸ������</a></li>
		<!-- TODO: �α׾ƿ��� �Ǿ� ������ hidden  -->
		<li><a onclick=$("#modifyModal").modal("show");>ȸ������ ����</a></li>
=======
				${user.pid eq null ? "guset" : user.pid } </a></li>
		<!-- 로그아웃 상태일 시 hidden -->
		<li style="display: <c:if test="${!logonState }">none</c:if>"><a
			href="login.jsp?proc=logout">로그아웃</a></li>
		<!-- TODO: 로그인이 되어 있을시 hidden  -->
		<li style="display: <c:if test="${logonState }">none</c:if>"><a
			onclick=$("#loginModal").modal("show");>로그인</a></li>
		<!-- TODO: 로그아웃이 되어 있을시 hidden  -->
		<li style="display: <c:if test="${!logonState }">none</c:if>"><a
			onclick=$("#modifyModal").modal("show");>회원정보 수정</a></li>
		<!-- TODO: 로그인이 되어 있을시 hidden  -->
		<li style="display: <c:if test="${logonState }">none</c:if>"><a
			onclick=$("#regModal").modal("show");>회원가입</a></li>
>>>>>>> .r256
		<li><br> <br></li>
		<li><a href="#top" onclick=$("#menu-close").click();>Home</a></li>
		<li><a href="#search" onclick=$("#menu-close").click();>전적 검색</a>
		</li>
<<<<<<< .mine
		<!-- 로그아웃 상태일 시 먼저 로그인 창을 띄운다. -->
		<li><a href="#game03" onclick=$("#menu-close").click();>경마 시작</a></li>
||||||| .r193
		<!-- �α׾ƿ� ������ �� ���� �α��� â�� ����. -->
		<li><a href="#game03" onclick=$("#menu-close").click();>�渶 ����</a></li>
=======
		<!-- 로그아웃 상태일 시 먼저 로그인 창을 띄운다. -->
		<li style="display: <c:if test="${!logonState }">none</c:if>"><a
			href="#game03" onclick=$("#menu-close").click();>경마 시작</a></li>
>>>>>>> .r256
	</ul>
	</nav>

	<section id="top" class="guestheader">
	<div class="text-vertical-center">
<<<<<<< .mine
		<h1>
			Wellcome,
			${user.pid}</h1>
		<h3>
			현재 순위:
			??</h3>
		<h3>
			현재 소지금:
			${user.curMoney}</h3>
		<br> <a href="#search" class="btn btn-primary btn-lg">내 전적
			확인하기</a> <br>
||||||| .r193
		<h1>
			Wellcome,
			${user.pid}</h1>
		<h3>
			���� ����:
			??</h3>
		<h3>
			���� ������:
			${user.curMoney}</h3>
		<br> <a href="#search" class="btn btn-primary btn-lg">�� ����
			Ȯ���ϱ�</a> <br>
=======
		<h1>Wellcome, ${user.pid eq null ? "guset" : user.pid }</h1>
		<label> <c:if test="${logonState }">
				<h3>현재 순위: ??</h3>
				<h3>현재 소지금: ${user.curMoney}</h3><br>
				<a href="#search" class="btn btn-primary btn-lg">내 전적
			확인하기</a> 
			</c:if>
			<c:if test="${!logonState }"><h2>로그인을 해주세요.</h2></c:if>
		</label>
>>>>>>> .r256
	</div>
	</section>
	<section id="search"> <iframe width="100%" height="1400px"
		frameborder="0" scrolling="no" src="search.jsp"></iframe> </section>
	<!-- Game3 -->
	<section id="game03" class="game03"
		style="display: <c:if test="${!logonState }">none</c:if>"> <iframe
		id="my_iframe02" width="100%" height="100%" frameborder="0"
		scrolling="no" marginheight="0" marginwidth="0" src="horseRace.jsp"></iframe>
	</section>
</body>
<!-- jQuery -->
<script src="js/jquery.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="js/bootstrap.min.js"></script>

<!-- Custom Theme JavaScript -->
<script type="text/javascript">
    // 메뉴 닫기
    $("#menu-close").click(function(e) {
        e.preventDefault();
        $("#sidebar-wrapper").toggleClass("active");
    });
    // 메뉴 열기
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#sidebar-wrapper").toggleClass("active");
    });
    // 싱글페이지 해당 메뉴로 이동
    $(function() {
        $('a[href*=#]:not([href=#],[data-toggle],[data-target],[data-slide])').click(function() {
            if (location.pathname.replace(/^\\/, '') == this.pathname.replace(/^\\/, '') || location.hostname == this.hostname) {
                var target = $(this.hash);
                target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
                if (target.length) {
                    $('html,body').animate({
                        scrollTop: target.offset().top
                    }, 1000);
                    return false;
                }
            }
        });
    });
 
	</script>

</html>
