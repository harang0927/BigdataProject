<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang=en height=100%>
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
<link rel="stylesheet" href="assets/css/bootstrap-theme.css" media="screen">
<link rel="stylesheet" href="assets/css/main.css">

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
	<script src="assets/js/html5shiv.js"></script>
	<script src="assets/js/respond.min.js"></script>
	<![endif]-->
</head>

<body class="home">
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

	<!-- Header -->
	<header id="head" >
	<div class="col-sm-6" style="padding-left:100px;">
		<div class="container">
			<div class="row">
				<font size="10">ALL About Company</font>
				<font size="5"><p>
					빅데이터 기반의 기업성향분석 서비스  
				</p></font>
				<p></p>
	
			</div>
		</div>
		</div>
		<div class="col-sm-6">
		</div>
	</header>
	<!-- /Header -->


<div class="footer2">
		<div class="container">
			<div class="row">

				<div class="col-md-6 widget">
					<div class="widget-body">
						<p class="simplenav">
							<a href="../html/home.jsp">홈</a> | <a href="../html/personal.jsp">개인성향분석</a> |
							<a href="../html/list.jsp">기업목록</a> | <a href="../html/faq.html">문의사항</a> | <a
								href="../html/mypage.jsp">마이페이지</a>
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