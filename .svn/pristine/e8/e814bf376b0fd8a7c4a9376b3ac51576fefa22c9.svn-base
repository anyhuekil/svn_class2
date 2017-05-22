<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>Bootstrap 101 Template</title>

<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
	<!-- Button trigger modal -->
	<button type="button" class="btn btn-primary btn-lg"
		data-toggle="modal" data-target="#loginModal">Launch login
		modal</button>
	<button type="button" class="btn btn-primary btn-lg"
		data-toggle="modal" data-target="#regModal">Launch register
		modal</button>

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
					<form>
						<div class="form-group">
							<label for="inputId">ID</label> <input type="email"
								class="form-control" id="inputId" placeholder="ID">
						</div>
						<div class="form-group">
							<label for="exampleInputPassword1">Password</label> <input
								type="password" class="form-control" id="exampleInputPassword1"
								placeholder="Password">
						</div>

						<button type="submit" class="btn btn-default col-md-offset-5">login</button>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary">Register</button>
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
					<h4 class="modal-title" id="myModalLabel">Login to pentAcorn</h4>
				</div>
				<div class="modal-body">
					<form>
						<div class="form-group col-md-offset-2 col-md-7">
							<label for="exampleInputPassword1">ID</label>
						</div>
						<div class="row">
							<div class="col-md-offset-2 col-md-7">
								<input type="text" class="form-control" id="inputIdReg"
									placeholder="ID">
							</div>
							<div class="form-group col-md-2">
								<button class="btn btn-default" type="submit">중복 확인</button>
							</div>
						</div>
						<!-- /.col-lg-6 -->
						<div class="form-group col-md-offset-2 col-md-7">
							<label for="exampleInputPassword1">Password</label> <input
								type="password" class="form-control" id="inputPasswordReg"
								placeholder="Password">
						</div>
						<div class="form-group col-md-offset-2 col-md-7">
							<label for="exampleInputPassword1">Password 확인</label> <input
								type="password" class="form-control" id="inputConfirmPassReg"
								placeholder="Password 확인">
						</div>
						<div class="form-group col-md-offset-2 col-md-7">
							<label for="exampleInputPassword1">이름</label> <input type="text"
								class="form-control" id="inputName" placeholder="이름">
						</div>
						<div class="form-group col-md-offset-2 col-md-7">
							<label for="exampleInputPassword1">주소</label> <input type="text"
								class="form-control" id="inputAddr" placeholder="주소">
						</div>
						<div class="form-group col-md-offset-2 col-md-7">
							<label for="exampleInputPassword1">연락처</label> <input type="text"
								class="form-control" id="inputTel" placeholder="연락처">
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

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script type="text/javascript">
		$('#myModal').on('shown.bs.modal', function() {
			$('#myInput').focus()
		})
	</script>
</body>
</html>