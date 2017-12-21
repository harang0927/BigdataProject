<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en" height=100%>
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
div{
	font-family:'배달의민족';
}
</style>
</head>
<body>

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
			<div class="navbar-collapse collapse" >
				<ul class="nav navbar-nav pull-right">
					<li><a href="../html/home.jsp">Home</a></li>
					<c:if test="${sessionScope.mvo != null}">
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">개인성향분석<b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="../html/disc.jsp">DISC란?</a></li>
							<li><a href="../html/personal.jsp">검사하기</a></li>
							<li><a href="../resultDISC.do">결과보기</a></li>
						</ul></li>
					</c:if>
					<li><a href="../companyList.do?pageNo=1">About 기업</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">문의사항<b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="../html/faq.jsp">FAQ</a></li>
							<!-- <li><a href="../html/table.jsp">질문게시판</a></li> -->
						</ul></li>
					<c:choose>
					<c:when test="${sessionScope.mvo != null}">
						<li><a href="../showMyInfoById.do">마이페이지</a></li>
						<li class="active"><a class="btn" href="../logout.do"
							id="sign_in_btn">로그아웃</a></li>
					</c:when>
					<c:otherwise>
							<li class="active"><a class="btn" href="login.jsp"
							id="sign_in_btn">로그인 / 회원가입</a></li>
					</c:otherwise>
					</c:choose>
				</ul>
			</div>
			<!--/.nav-collapse -->
		</div>

</body>
</html>