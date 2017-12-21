<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="Sergey Pozhilov (GetTemplate.com)">

	<title>All About company</title>

    <link rel="shortcut icon" href="assets/images/top-logo.png">
	
<link rel="stylesheet" media="screen"
	href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,700">
<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/font-awesome.min.css">

<!-- Custom styles for our template -->
<link rel="stylesheet" href="assets/css/bootstrap-theme.css"
	media="screen">
<link rel="stylesheet" href="assets/css/main.css">

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
	<script src="assets/js/html5shiv.js"></script>
	<script src="assets/js/respond.min.js"></script>
	<![endif]-->
</head>

<body>
	<!-- Fixed navbar -->
	<div class="navbar navbar-inverse navbar-fixed-top headroom">
	<c:choose>
			<c:when test="${sessionScope.mvo==null}">
				<%@include file="beforeLogin.jsp" %> 
			</c:when>
			<c:otherwise>
				<%@include file="afterLogin.jsp" %> 
			</c:otherwise>
		</c:choose>	
	</div>
	<!-- /.navbar -->

	<header id="head" class="secondary"></header>

	<!-- container -->
	<div class="container">

		<br><br><br>

		<div class="row">

			<!-- Article main content -->
			<article class="col-xs-50 maincontent">
				

				<div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
					<div class="panel panel-default">
						<div class="panel-body">
							<h3 class="thin text-center">
								Register for <Strong>All About</Strong>
							</h3>
							<p class="text-center text-muted">
								이미 계정이 있으시다면, <a href="login.jsp">로그인</a> 해주세요
							</p>
							<hr>

							<form name="write_form_member" action="../register.do" method="post">
								<label>성별 </label><br>
								<input type="radio" name='memGender' value='1' checked="checked"> 남자 
								<input type="radio" name='memGender' value='2'> 여자
								<br>
								<br> 	
								<label>이름</label>
								<input type="text" name="memName" class="form-control"> <br>
								<label>아이디</label><br> 
								<div>
								<input type="text" name="memId" class="form-control">
								</div>
								<br>
								<label>이메일</label>
								<input type='text' name="memEmail" class="form-control"><br>
								<label>비밀번호</label> 
								<input type="password" name="memPw" class="form-control">
								<br>
								<br>
								<div align="center">
								<input type="submit" value="회원가입" > 
								<input type="reset" value="취소"><a href="home.jsp"></a>
								</div>
							</form>
						</div>
					</div>
				</div>
			</article>
			<!-- /Article -->

		</div>
	</div>
	<!-- /container -->




	<div class="footer2">
		<div class="container">
			<div class="row">

				<div class="col-md-6 widget">
					<div class="widget-body">
							<p class="simplenav">
								<a href="home.html">홈</a> | 
								<a href="personal.html">개인성향분석</a> |
								<a href="list.html">기업목록</a> |
								<a href="faq.html">문의사항</a> |
								<a href="mypage.html">마이페이지</a> 
							</p>
					</div>
				</div>

				<div class="col-md-6 widget">
					<div class="widget-body">
						<p class="text-right">
							Copyright &copy; 2017, Designed by <a
								href="http://gettemplate.com/" rel="designer">All about</a>
						</p>
					</div>
				</div>

			</div>
			<!-- /row of widgets -->
		</div>
	</div>





	<!-- JavaScript libs are placed at the end of the document so the pages load faster -->
	<script
		src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	<script
		src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
	<script src="assets/js/headroom.min.js"></script>
	<script src="assets/js/jQuery.headroom.min.js"></script>
	<script src="assets/js/template.js"></script>
</body>
</html>