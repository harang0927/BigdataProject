<%@page import="java.util.Base64"%>
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
		<c:choose>
			<c:when test="${sessionScope.mvo==null}">
				<%@include file="controllerHead.jsp" %> 
			</c:when>
			<c:otherwise>
				<%@include file="controllerHead.jsp" %> 
			</c:otherwise>
		</c:choose>
	</div>
	<!-- /.navbar -->

	<header id="head" class="secondary"></header>

	<!-- container -->
	<div class="container2"  style="padding: 10px; padding-right: 20px; margin-bottom:250px">
	<div class="col-sm-2 sidenav">
			<!-- 왼쪽 바 시작 -->

			<br>
			<span style="font-size: 20px">
				<b>${mvo.memName}</b>
			</span><span>님</span>
			<br><br>
			<ul class="nav nav-pills nav-stacked">
				<li class="section1"><a href="mypage.html">회원 정보 수정</a></li>
				<li class="section2"><a href="./mydiscResult.do?memId=${mavo.memId}">나의 성향보기</a></li>
			</ul>
			<br>
		</div>
</div>
      <div class="col-sm-5">
	  <div class="section10">
            <h2>&nbsp;&nbsp;나의 성향검사 결과</h2><br><br><br><br><br>		
            <p style="text-align: center;">    
     <%
if(request.getAttribute("mavo") != null) {		
	byte src[] = (byte[])request.getAttribute("mavo");
%>
	<img src="
	   data:image/jpg;base64, 
	   <%= Base64.getEncoder().encodeToString(src) %>"
	   width="600" height="600">
<%
} 
%>	
     
     </div>
	 </div>
	 <div class="col-sm-5">
	 <div class="section11"><br><br><br><br><br><br><br><br><br><br><br>
			<p style="text-align: center;">
    </div>
	</div>
		<!-- /container -->
	

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