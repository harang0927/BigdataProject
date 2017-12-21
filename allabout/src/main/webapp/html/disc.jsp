<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport"    content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author"      content="Sergey Pozhilov (GetTemplate.com)">
	
	<title>All About company</title>

    <link rel="shortcut icon" href="assets/images/top-logo.png">
	
	<link rel="stylesheet" media="screen" href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,700">
	<link rel="stylesheet" href="assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="assets/css/font-awesome.min.css">

	<!-- Custom styles for our template -->
	<link rel="stylesheet" href="assets/css/bootstrap-theme.css" media="screen" >
	<link rel="stylesheet" href="assets/css/main.css">

	<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
	<script src="assets/js/html5shiv.js"></script>
	<script src="assets/js/respond.min.js"></script>
	<![endif]-->


<style>
</style>
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
	<div class="container2">
		<div class="col-sm-2 sidenav">
			<div class="section1">
				<br>
				<ul class="nav nav-pills nav-stacked">
				    <li class="secleft1"><a href="disc.jsp">DISC란?</a></li>
					<li class="secleft1"><a href="personal.jsp">검사하기</a></li>
					<li class="secleft1"><a href="../resultDISC.do">결과보기</a></li>
				</ul>
				<br>
			</div>
		</div>
	</div>
<div class="col-sm-10">
	<div class="section10">
				<h2>&nbsp;&nbsp;DISC란?</h2>
				<p style="text-align: center;">
<img alt="disc" src="assets/images/disc.gif" align="center"></p>
				<p align="center"><font size="4">주도형(Dominance), 사교형(Influence), 안정형(Steadiness), 신중형(Conscientious)<br>
'DISC' 는 사람의 행동 유형을 4가지로 나눈다. 세상 모든 사람을 위 4가지 행동유형으로
딱 나눌 순 없지만,<br>간단한 테스트로 비교적 정확한 결과를 얻을 수 있다.
'DISC' 결과를 통해 자신의 성격을 파악하여 상황대처 능력을 기를 수 있고,<br> 발견된 잠재
성향을 활용해 자기개발에 박차를 가 할 수 있다.</font></p><br>
<p style="text-align: center;">
<a href="./personal.jsp"><input type="button" value="검사하기" class="button"></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="./resultDISC.do"><input type="button" value="결과보기" class="button"></a>
</p>
			
			

    </div>
	</div>	<!-- /container -->
	

	<footer id="footer" class="top-space">
		<div class="footer2">
			<div class="container">
				<div class="row">
					
					<div class="col-md-6 widget">
						<div class="widget-body">
							<p class="simplenav">
								<a href="home.html">홈</a> | 
								<a href="personal.html">기업성향분석</a> |
								<a href="list.html">기업목록</a> |
								<a href="contact.html">문의사항</a> |
								<a href="mypage.html">마이페이지</a> |
							</p>
						</div>
					</div>

					<div class="col-md-6 widget">
						<div class="widget-body">
							<p class="text-right">
Copyright &copy; 2017, Designed by <a href="http://gettemplate.com/" rel="designer">All about</a> 							</p>
						</div>
					</div>

				</div> <!-- /row of widgets -->
			</div>
		</div>
	</footer>	
		




	<!-- JavaScript libs are placed at the end of the document so the pages load faster -->
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
	<script src="assets/js/headroom.min.js"></script>
	<script src="assets/js/jQuery.headroom.min.js"></script>
	<script src="assets/js/template.js"></script>
</body>
</html>