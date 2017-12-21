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



<style>
table {
	border-collapse: collapse;
	width: 100%;
}

th, td {
	text-align: center;
	padding: 8px;
}

tr:nth-child(even) {
	background-color: #f2f2f2
}

th {
	background-color: #e7708d;
	color: white;
}

table {
	border-collapse: collapse;
}
</style>





</head>


<style>
table.table {
	
}
</style>





<body class="home">
	<!-- Fixed navbar -->
	<div class="navbar navbar-inverse navbar-fixed-top headroom">
		<div class="container">
			<div class="navbar-header">
				<!-- Button for smallest screens -->
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="../html/home.jsp">
				<img src="assets/images/logo.png" width=230px height=40px
					alt="Progressus HTML5 template" ></a>
			</div>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav pull-right">
					<li><a href="../html/home.jsp">홈</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">개인성향분석<b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="../html/disc.html">DISC란?</a></li>
							<li><a href="../html/personal.jsp">검사하기</a></li>
							<li><a href="../html/discresult.jsp">결과보기</a></li>
						</ul></li>
					<li><a href="../html/list.jsp">About 기업</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">문의사항<b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="../html/faq.html">FAQ</a></li>
							<li><a href="../html/table.jsp">질문게시판</a></li>
						</ul></li>
					<c:choose>
					<c:when test="${sessionScope.mvo != null}">
						<li><a href="/html/mypage.jsp">마이페이지</a></li>
						<li class="active"><a class="btn" href="../myapp/logout.do"
							id="sign_in_btn">로그아웃</a></li>
					</c:when>
					<c:otherwise>
							<li class="active"><a class="btn" href="signin.jsp"
							id="sign_in_btn">로그인 / 회원가입</a></li>
					</c:otherwise>
					</c:choose>
				</ul>
			</div>
			<!--/.nav-collapse -->
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
					<li class="section2"><a href="table.html">질문게시판</a></li>
				</ul>
				<br>
			</div>
		</div>

		<div class="col-sm-10">


			<h2>
				<strong>질문게시판</strong>
			</h2>
			<p>무엇이든 물어보세요</p>
			<br> <br>
			<div class="table-responsive">
				<table class="table">
					<thead>
						<tr>
							<th>번호</th>
							<th>분류</th>
							<th>제목</th>
							<th>이름</th>
							<th>날짜</th>
							<th>조회수</th>

						</tr>
					</thead>
					<tbody>
						<tr>
							<td>1</td>
							<td>기업추가</td>
							<td>질문있습니다~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~</td>
							<td>김윤아</td>
							<td>2017/05/15</td>
							<td>29</td>

						</tr>
					</tbody>
				</table>

				<p align="right">
					<a href=contact.html><button type="button" class="btn">글쓰기</button></a>
				</p>
			</div>
		</div>
	</div>

	<footer>
		<div class="footer2">
			<div class="container">
				<div class="row">

					<div class="col-md-6 widget">
						<div class="widget-body">
							<p class="simplenav">
								<a href="home.html">홈</a> | <a href="personal.html">개인성향분석</a> |
								<a href="faq.html">문의사항</a> | <a href="mypage.html">마이페이지</a>
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