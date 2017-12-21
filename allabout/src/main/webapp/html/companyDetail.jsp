<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.Base64"%>
<%@page import="vo.CompanyTotalVO"%>
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
	<script src='resources/highcharts/js/jquery-1.9.1.min.js' type='text/javascript'></script>
    <script src='resources/highcharts/js/highcharts.js' type='text/javascript'></script>
    <script src='resources/highcharts/js/highcharts-more.js' type='text/javascript'></script>
    <script src='resources/highcharts/js/exporting.js' type='text/javascript'></script>
    
    <link rel='stylesheet' href='resources/morris/css/morris.css'>
    
   	<script src='resources/morris/js/jquery-1.8.2.min.js' type='text/javascript'></script>
    <script src='resources/morris/js/morris.min.js' type='text/javascript'></script>
    <script src='resources/morris/js/raphael-2.1.0.min.js' type='text/javascript'></script>
    
    <link rel='stylesheet' href='resources/css/nv.d3.css'>
   	<link rel='stylesheet' href='resources/css/rNVD3.css'>
   	<link rel='stylesheet' href='assets/css/interview1.css'>
    
	<script src='resources/js/jquery-1.8.2.min.js' type='text/javascript'></script>
	<script src='resources/js/d3.v3.min.js' type='text/javascript'></script>
    <script src='resources/js/nv.d3.min-new.js' type='text/javascript'></script>
    <script src='resources/js/fisheye.js' type='text/javascript'></script>   



<style type="text/css">
p{
text-align:center;
}

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

	<div class="container2" style="padding: 10px; padding-right: 20px;  margin-bottom:250px;">
		<div class="col-sm-2 sidenav">
			<div class="section1">

				<img src="./html/logoImage/${ctvo.companyVO.comLogo}" width=200px height=100px
					alt="Progressus HTML5 template">

			</div>
		</div>

	

	
	<div>
	<br>
  <span><strong style="font-size: 45px;">${ctvo.companyVO.comName}</strong>&nbsp;&nbsp;&nbsp;
  <span><strong style="font-size: 20px;">${ctvo.companyVO.comIndustry}</strong></span>
  </span>
	</div><hr>
	<div>
		<ul class="nav nav-pills" style=padding-left:50px;>
			<li class="active"><a href="#1" data-toggle='tab'>일반정보</a></li>
			<li><a href="#2" data-toggle='tab'>고용형태</a></li>
			<li><a href="#3" data-toggle='tab'>직원현황</a></li>
			<li><a href="#4" data-toggle='tab'>기업성향</a></li>
			<li><a href="#5" data-toggle='tab'>면접후기</a></li>
		</ul>
	</div>
	
	<div class="tab-content">
	<div class="tab-pane active" id="1" >
	<div class="col-sm-6" style=padding-left:60px;>
	<h4><strong>개요</strong></h4>
    ${ctvo.companyVO.comDescript}
    <br>
	 <h4><strong>위치</strong></h4>
	${ctvo.companyVO.comAddr}
	</div>
	<div class="col-sm-6">
	${ctvo.line}
	<h5 style="text-align:right;">최근 3년 매출액 및 당기순이익 (단위 : 백만원)</h5>
	</div>
	
	</div>
	
	<div class="tab-pane" id="2" >
	<div class="col-sm-4" style=padding-left:60px;>
	<br><br><br>
	<h4><strong>연봉 : ${ctvo.companyEmployeeVO.annualSalary}만원</strong></h4>
	<br><br><br>
    <h4><strong>퇴사율 : ${ctvo.companyEmployeeVO.resignationRate}% </strong></h4>
	</div>
	
	
	<div class="col-sm-8" style=padding-left:60px;>
	<h2><strong>고용형태</strong></h2>
	${ctvo.stick}

	
	</div>
	</div>
	
	<div class="tab-pane" id="3" >
	<div class="col-sm-4" style=padding-left:60px;>
	<br><br><br>
    <h4><strong>남자근속연수 : ${ctvo.companyEmployeeVO.mworkYears}년</strong></h4>
    <br><br><br>
    <h4><strong>여자근속연수 : ${ctvo.companyEmployeeVO.fworkYears}년</strong></h4>
	</div>
	
	<div class="col-sm-8" style="width:300px; height: 300px; padding-left: 0px; padding-top: 0px; margin-left: 0px;">
		<h2><strong>성비</strong></h2>
		<div style="width:300px; height: 300px; padding-left: 0px; padding-top: 0px; margin-left: 0px;">
		${ctvo.pie}
		</div>
	</div>
	</div>
	
	<div class="tab-pane" id="4" >
	<c:choose>
	<c:when test="${sessionScope.mvo!=null}">
	<div class="col-sm-6" style=padding-left:60px;>
	
		<h4><strong>기업 성향</strong></h4>
		

<%
if(request.getAttribute("ctvo") != null) {		
	CompanyTotalVO obj = (CompanyTotalVO)request.getAttribute("ctvo");
	byte[] src = obj.getCompanyDISC();
%>
	<img src="
	   data:image/jpg;base64, <%= Base64.getEncoder().encodeToString(src) %>"
	   width="600" height="600">
<%
} 
%>	
		
 	</div>
	<div class="col-sm-6">
		<h4><strong>기업성향 설명</strong></h4>
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
    	
    	<input type="button" class="btn btn-primary" onclick="mydiscResult()" value="나의  성향  보기">
	</div>
	</c:when>
	<c:otherwise>
	<br>
	<br><br><br>
		<h2 align="center">로그인이 필요한 서비스 입니다.</h2>
	</c:otherwise>
	</c:choose>
	</div>
	
	
	<div class="tab-pane " id="5" >
	<div class="col-sm-1">
	</div>
	<div class="col-sm-10" style="padding-left:60px;">
	<br>
	<br>
	<c:forEach var="ctvo" items="${requestScope.ctvo.companyInterviewVO}">
	<section class="content_ty4 content_ty4_1 video_ad_content" data-content_type="interview" data-content_id="346017" data-company_id="30139">
        <div class="content_wrap">
            <div class="content_top_ty2">
                <span class="ico_pers"><img src="assets/images/icon.png"></span>
                <span class="txt1">
                 ${ctvo.interviewRole}
                        <span class="vbar">|</span>
                        <span class="txt2">
                             ${ctvo.interviewDate}
                        </span>
                </span>
            </div>

            <div class="ctbody_col2">
                <dl class="ctbody_lft">
                    <dt class="df_tit">면접난이도</dt>
                    <dd class="blo_box2">
                      <span class="blo_txt2 us_txt_mr lev_2"> ${ctvo.interviewLevel}</span>
                    </dd>
                        
                </dl>
                <div class="content_body_ty1">
                    <div class="us_label_wrap">
                        <h2 class="us_label ">
                         ${ctvo.interviewTopic}
                        </h2>
                    </div>
                            <dl class="tc_list">
                                <dt class="df_tit">면접질문</dt>
                                <dd class="df1">
                                    <span class='notranslate'>
                                     ${ctvo.interviewQuestion}
                                    </span>
                                </dd>
                                <dt class="df_tit">면접답변</dt>
                                <dd class="df1">
                                    <span id="mobile_full_interview_answer_346017" class="answer mobile_full_content notranslate">
									 ${ctvo.interviewAnswer}
                                    </span>
                                </dd>
                            </dl>
                       
                </div>
            </div>
        </div>
    </section>
    </c:forEach>
	</div>
	<div class="col-sm-1">
	</div>
	
	
	
	</div>
	</div>
</div>

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
	<script
		src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	<script
		src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
	<script src="assets/js/headroom.min.js"></script>
	<script src="assets/js/jQuery.headroom.min.js"></script>
	<script src="assets/js/template.js"></script>
	<script>
	function mydiscResult() {
		var myWindow = window.open("../myapp/mydiscResult.do", "MsgWindow", "width=700,height=800");
	}
	</script>
</body>
</html>