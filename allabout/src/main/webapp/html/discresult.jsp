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
	<div class="container2">
	<div class="col-sm-2 sidenav">
<div class="section1">
				<br>
				<ul class="nav nav-pills nav-stacked">
				    <li class="secleft1"><a href="./html/disc.jsp">DISC란?</a></li>
					<li class="secleft1"><a href="./html/personal.jsp">검사하기</a></li>
					<li class="secleft1"><a href="../resultDISC.do">결과보기</a></li>
				</ul>
				<br>
				</div>
</div>
</div>
      <div class="col-sm-4">
            <h2>&nbsp;&nbsp;나의 성향검사 결과</h2><br><br><br><br><br>		
            <p style="text-align: center;">    
     <%
if(request.getAttribute("mavo") != null) {		
	byte src[] = (byte[])request.getAttribute("mavo");
%>
	<img src="
	   data:image/jpg;base64, 
	   <%= Base64.getEncoder().encodeToString(src) %>"
	   width="500" height="600" style="margin-left:0px; margin-top:0px;">
<%
} 
%>	
     
	 </div>
	 <div class="col-sm-6">
	 <br><br><br><br><br>
	 
		<h3><strong>기업성향 설명</strong></h3>
		<br>
    	<div>    
<strong> ●    D&nbsp;&nbsp; 주도형</strong><br>

결과를 성취하기 위해 장애를 극복함으로써 스스로 환경을 조성한다. 빠르게 결과를 얻는다.
다른 사람의 행동을 유발시킨다. 도전을 받아들인다. 의사결정을 빠르게 내린다.
기존의 상태에 문제를 제기한다. 지도력을 발휘한다. 어려운 문제를 처리한다. 문제를 해결한다.
    	</div>
    	<br>
    	<div>    
<strong> ●    I&nbsp;&nbsp;사교형</strong><br>
다른사람을 설득하거나 영향을 미침으로써 스스로 환경을 조성한다. 열정적이다.
사람들과 접촉한다. 호의적인 인상을 준다. 말솜씨가 있다. 다른 사람을 동기유발 시킨다.
사람들을 즐겁게 한다. 사람과 상황에 대해 낙관적이다. 그룹활동을 좋아한다.
    	</div>
    	<br>
    	<div>    
<strong> ●    S&nbsp;&nbsp;안정형</strong><br>
업무의 품질과 정확성을 높이기 위해 기존의 환경안에서 신중하게 일한다. 중요한 지시나 기준에 관심을 둔다.
세부사항에 신경을 쓴다. 분석적으로 사고하고 찬반, 장단점 등을 고려한다. 외교적 수완이 있다.
갈등에 대해 간접적 혹은 우회적으로 접근한다. 정확성을 점검한다. 업무수행에 대해 비평적으로 분석한다.
    	</div>
    	<br>
    	<div>    
<strong> ●   C&nbsp;&nbsp;신중형</strong><br>
과업을 수행하기 위해서 다른 사람과 협력한다. 예측가능하고 일관성 있게 일을 수행한다. 참을성을 보인다.
전문적인 기술을 개발한다. 다른 사람을 돕고 지원한다. 충성심을 보인다. 남의 말을 잘 듣는다.
흥분한 사람을 진정시킨다. 안정되고, 조화로운 업무 환경을 만든다.
    	</div>
    	<br><br><br>
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