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
	</div>
	<!-- /.navbar -->

	<header id="head" class="secondary"></header>

	<!-- container -->

	<div class="container2" style="padding: 10px; padding-right: 20px;">
		<div class="col-sm-2 sidenav">
			<div class="section1">
				<br>
				<ul class="nav nav-pills nav-stacked">
					<li class="section1"><a href="faq.html">FAQ</a></li>
					<!-- <li class="section2"><a href="table.html">질문게시판</a></li> -->
				</ul>
				<br>
			</div>
		</div>


		<!-- <ul class="list-group">
		<li class="list-group-item disabled" style="width: 150px;">
		<a href = "#">게시판으로 가기</a>
		</li>
		</ul> -->


		<div class="col-sm-10">
			<h2>
				<strong>FAQ</strong>
			</h2>
			<br>
			<div class="panel-group" id="accordion">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h4 class="panel-title">
							<a data-toggle="collapse" data-parent="#accordion"
								href="#collapse1"><Strong>Q.</Strong>&nbsp;&nbsp;전화번호, 비밀번호 등을 바꾸려면 어떻게 해야하나요?</a>
						</h4>
					</div>
					<div id="collapse1" class="panel-collapse collapse in">
						<div class="panel-body"><Strong>A.</Strong>&nbsp;&nbsp;All About 홈페이지 로그인 후 마이페이지>회원정보수정에서 수정할 수 있습니다.
					수정 후에는 반드시 저장 버튼을 눌러야 변경이 완료됩니다.</div>
					</div>
				</div>
				<div class="panel panel-default">
					<div class="panel-heading">
						<h4 class="panel-title">
							<a data-toggle="collapse" data-parent="#accordion"
								href="#collapse2"><Strong>Q.</Strong>&nbsp;&nbsp;목록에 없는 기업을 추가하고싶으면 어떻게 하나요?</a>
						</h4>
					</div>
					<div id="collapse2" class="panel-collapse collapse">
						<div class="panel-body"><Strong>A.</Strong>&nbsp;&nbsp;문의사항>질문게시판에 글쓰기버튼을 누르시고 원하시는 기업을 관리자에게 요청하시면 됩니다.</div>
					</div>
				</div>
				<div class="panel panel-default">
					<div class="panel-heading">
						<h4 class="panel-title">
							<a data-toggle="collapse" data-parent="#accordion"
								href="#collapse3"><Strong>Q.</Strong>&nbsp;&nbsp;성향분석을 다시 하고싶은데 어떻게 해야 되나요?</a>
						</h4>
					</div>
					<div id="collapse3" class="panel-collapse collapse">
						<div class="panel-body"><Strong>A.</Strong>&nbsp;&nbsp;개인성향분석>검사하기 페이지에서 재검사를 하실 수 있습니다.</div>
					</div>
				</div>
				<div class="panel panel-default">
					<div class="panel-heading">
						<h4 class="panel-title">
							<a data-toggle="collapse" data-parent="#accordion"
								href="#collapse4"><Strong>Q.</Strong>&nbsp;&nbsp;비회원은 어디까지 볼 수 있나요?</a>
						</h4>
					</div>
					<div id="collapse4" class="panel-collapse collapse">
						<div class="panel-body"><Strong>A.</Strong>&nbsp;&nbsp;성향분석을 제외한 모든 정보를 보실 수 있습니다.</div>
					</div>
				</div>
				<div class="panel panel-default">
					<div class="panel-heading">
						<h4 class="panel-title">
							<a data-toggle="collapse" data-parent="#accordion"
								href="#collapse5"><Strong>Q.</Strong>&nbsp;&nbsp;비밀번호를 잊어버렸는데 어떻게 하나요?</a>
						</h4>
					</div>
					<div id="collapse5" class="panel-collapse collapse">
						<div class="panel-body"><Strong>A.</Strong>&nbsp;&nbsp;간단한 개인정보 확인후 비밀번호를 변경하실 수 있습니다.</div>
					</div>
				</div>
			</div>

		</div>
	</div>



	<div class="footer2">
		<div class="container">
			<div class="row">

				<div class="col-md-6 widget">
					<div class="widget-body">
						<p class="simplenav">
							<a href="home.html">홈</a> | <a href="personal.html">개인성향분석</a> |
							<a href="list.html">기업목록</a> | <a href="faq.html">문의사항</a> | <a
								href="mypage.html">마이페이지</a>
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
	</footer>


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