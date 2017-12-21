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
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
<style>
table.type10 {
	border-collapse: collapse;
	text-align: left;
	line-height: 1.5;
	border-top: 1px solid #ccc;
	border-bottom: 1px solid #ccc;
	margin: 20px 10px;
	width: 90%
}

table.type10 thead th {
	width: 150px;
	padding: 10px;
	font-weight: bold;
	vertical-align: top;
	color: #fff;
	background: #e7708d;
	margin: 20px 10px;
}

table.type10 tbody th {
	width: 100px;
	padding: 10px;
}

table.type10 td {
	width: 350px;
	padding: 10px;
	vertical-align: top;
}

table.type10 .even {
	background: #fdf3f5;
}

</style>
</head>

<body>
<script>
$(document).ready(function(){
	$('#submitBtn').click( function(event){
			//$("form").submit();
			var dominance = $(':radio[value="D"]:checked').length;
			var influence = $(':radio[value="I"]:checked').length;
			var steadiness = $(':radio[value="S"]:checked').length;
			var conscientious = $(':radio[value="C"]:checked').length;
			location.href="/myapp/insertDISC.do?dominance="+dominance
					+"&influence=" + influence+"&steadiness=" + steadiness
					+"&conscientious=" + conscientious;
	});
});

</script>
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
	</div><!-- sidenav -->

<div class="col-sm-10">
<div class="section10">
	<div class="row" style="margin-top:30px;">
		<div id="exTab2" class="container3">	
		<ul class="nav nav-tabs">
			<li class="active">
       		<a href="#1" data-toggle="tab">page1</a>
			</li>
			<li>
			<a href="#2" data-toggle="tab">page2</a>
			</li>
		</ul>
		<form id="personalValue" name="personalValue" method="get" action="../insertDISC.do">
		<div class="tab-content ">
		  <div class="tab-pane active" id="1">
      		<table class="type10">
    			<thead>
				    <tr>
				        <th scope="col"></th>
				        <th scope="col"></th>
				        <th scope="col"></th>
				        <th scope="col"></th>
				        <th scope="col"></th>
				    </tr>
				    </thead>
				    <tbody>
				    <tr>
				        <th scope="row">1</th>
				        <td><input type="radio" name="1" value="S" required="required" checked="checked">&nbsp;&nbsp;만족스러운</td>
				        <td><input type="radio" name="1" value="D">&nbsp;&nbsp;도전적인</td>
				        <td><input type="radio" name="1" value="C">&nbsp;&nbsp;꼼꼼한</td>
				        <td><input type="radio" name="1" value="I">&nbsp;&nbsp;표현력있는</td>
				    </tr>
				    <tr>
				        <th scope="row" class="even">2</th>
				        <td class="even"><input type="radio" name="2" value="D" required="required">&nbsp;&nbsp;개척적인</td>
				        <td class="even"><input type="radio" name="2" value="C" checked="checked">&nbsp;&nbsp;정확한</td>
				        <td class="even"><input type="radio" name="2" value="I">&nbsp;&nbsp;흥미진진한</td>
				        <td class="even"><input type="radio" name="2" value="S">&nbsp;&nbsp;기꺼이하는</td>
				    </tr>
				    <tr>
				        <th scope="row" >3</th>
				        <td><input type="radio" name="3" value="S" required="required" checked="checked">&nbsp;&nbsp;주저하는</td>
				        <td><input type="radio" name="3" value="I">&nbsp;&nbsp;활기있는</td>
				        <td><input type="radio" name="3" value="D">&nbsp;&nbsp;대담한</td>
				        <td><input type="radio" name="3" value="C">&nbsp;&nbsp;정교한</td>
				    </tr>
				    <tr>
				        <th scope="row" class="even">4</th>
				        <td class="even"><input type="radio" name="4" value="D" required="required">&nbsp;&nbsp;논쟁을 좋아하는</td>
				        <td class="even"><input type="radio" name="4" value="C" checked="checked">&nbsp;&nbsp;회의적인</td>
				        <td class="even"><input type="radio" name="4" value="S">&nbsp;&nbsp;표용력 있는</td>
				        <td class="even"><input type="radio" name="4" value="I">&nbsp;&nbsp;예측할 수 없는 </td>
				    </tr>
				    <tr>
				        <th scope="row" >5</th>
				        <td><input type="radio" name="5" value="C" required="required">&nbsp;&nbsp;고지식한</td>
				        <td><input type="radio" name="5" value="S" checked="checked">&nbsp;&nbsp;온화한</td>
				        <td><input type="radio" name="5" value="I">&nbsp;&nbsp;참을성이 있는</td>
				        <td><input type="radio" name="5" value="D">&nbsp;&nbsp;자신감있는</td>
				    </tr>
				    <tr>
				        <th scope="row" class="even">6</th>
				        <td class="even"><input type="radio" name="6" value="I" required="required">&nbsp;&nbsp;설득력 있는</td>
				        <td class="even"><input type="radio" name="6" value="D" checked="checked">&nbsp;&nbsp;독립심이 강한</td>
				        <td class="even"><input type="radio" name="6" value="C">&nbsp;&nbsp;논리적인</td>
				        <td class="even"><input type="radio" name="6" value="S">&nbsp;&nbsp;차분한</td>
				    </tr>
				    <tr>
				        <th scope="row" >7</th>
				        <td><input type="radio" name="7" value="C" required="required">&nbsp;&nbsp;신중한</td>
				        <td><input type="radio" name="7" value="S" checked="checked">&nbsp;&nbsp;인심 좋은</td>
				        <td><input type="radio" name="7" value="D">&nbsp;&nbsp;과단성 있는</td>
				        <td><input type="radio" name="7" value="I">&nbsp;&nbsp;관계를 중시하는</td>
				    </tr>
				    <tr>
				        <th scope="row" class="even">8</th>
				        <td class="even"><input type="radio" name="8" value="I" required="required">&nbsp;&nbsp;인기있는</td>
				        <td class="even"><input type="radio" name="8" value="D" checked="checked">&nbsp;&nbsp;고집이 있는</td>
				        <td class="even"><input type="radio" name="8" value="C">&nbsp;&nbsp;완벽주의자</td>
				        <td class="even"><input type="radio" name="8" value="S">&nbsp;&nbsp;느긋한</td>
				    </tr>
				    <tr>
				        <th scope="row" >9</th>
				        <td><input type="radio" name="9" value="I" required="required">&nbsp;&nbsp;변화가 많은</td>
				        <td><input type="radio" name="9" value="C" checked="checked">&nbsp;&nbsp;수줍음을 타는</td>
				        <td><input type="radio" name="9" value="S">&nbsp;&nbsp;친절한</td>
				        <td><input type="radio" name="9" value="D">&nbsp;&nbsp;완고한</td>
				    </tr>
				    <tr>
				        <th scope="row" class="even">10</th>
				        <td class="even"><input type="radio" name="10" value="C" required="required">&nbsp;&nbsp;체계적인</td>
				        <td class="even"><input type="radio" name="10" value="I" checked="checked">&nbsp;&nbsp;낙관적인</td>
				        <td class="even"><input type="radio" name="10" value="D">&nbsp;&nbsp;의지가 강한</td>
				        <td class="even"><input type="radio" name="10" value="S">&nbsp;&nbsp;상냥한</td>
				    </tr>
				    <tr>
				        <th scope="row">11</th>
				        <td><input type="radio" name="11" value="D" required="required">&nbsp;&nbsp;엄격한</td>
				        <td><input type="radio" name="11" value="C" checked="checked">&nbsp;&nbsp;겸손한</td>
				        <td><input type="radio" name="11" value="S">&nbsp;&nbsp;호의적인</td>
				        <td><input type="radio" name="11" value="I">&nbsp;&nbsp;말주변이 좋은</td>
				    </tr>
				    <tr>
				        <th scope="row" class="even">12</th>
				        <td class="even"><input type="radio" name="12" value="S" required="required">&nbsp;&nbsp;성실한</td>
				        <td class="even"><input type="radio" name="12" value="C" checked="checked">&nbsp;&nbsp;빈틈없는</td>
				        <td class="even"><input type="radio" name="12" value="I">&nbsp;&nbsp;놀기 좋아하는</td>
				        <td class="even"><input type="radio" name="12" value="D">&nbsp;&nbsp;성과주의적</td>
				    </tr>
				      <tr>
				        <th scope="row" >13</th>
				        <td><input type="radio" name="13" value="I" required="required">&nbsp;&nbsp;참신한</td>
				        <td><input type="radio" name="13" value="D" checked="checked">&nbsp;&nbsp;모험적인</td>
				        <td><input type="radio" name="13" value="C">&nbsp;&nbsp;보수적인</td>
				        <td><input type="radio" name="13" value="S">&nbsp;&nbsp;동정심이 많은</td>
				    </tr>
   				 </tbody>
			</table>
			<br>
			<br>
		</div><!-- tab1 -->
				
		<div class="tab-pane" id="2">
    		<table class="type10">
    			<thead>
				    <tr>
				        <th scope="col"></th>
				        <th scope="col"></th>
				        <th scope="col"></th>
				        <th scope="col"></th>
				        <th scope="col"></th>
				    </tr>
				    </thead>
				    <tr>
				        <th scope="row" class="even">14</th>
				        <td class="even"><input type="radio" name="14" value="C" required="required">&nbsp;&nbsp;분석적인</td>
				        <td class="even"><input type="radio" name="14" value="S" checked="checked">&nbsp;&nbsp;변화를 싫어하는</td>
				        <td class="even"><input type="radio" name="14" value="D">&nbsp;&nbsp;공격적인</td>
				        <td class="even"><input type="radio" name="14" value="I">&nbsp;&nbsp;매력있는</td>
				    </tr>
				        <tr>
				        <th scope="row" >15</th>
				        <td><input type="radio" name="15" value="I" required="required">&nbsp;&nbsp;열정적인</td>
				        <td><input type="radio" name="15" value="C" checked="checked">&nbsp;&nbsp;비판적인</td>
				        <td><input type="radio" name="15" value="S">&nbsp;&nbsp;화합하는</td>
				        <td><input type="radio" name="15" value="D">&nbsp;&nbsp;단호한</td>
				    </tr>
				    <tr>
				        <th scope="row" class="even">16</th>
				        <td class="even"><input type="radio" name="16" value="D" required="required">&nbsp;&nbsp;지도력 있는</td>
				        <td class="even"><input type="radio" name="16" value="I" checked="checked">&nbsp;&nbsp;충동적인</td>
				        <td class="even"><input type="radio" name="16" value="S">&nbsp;&nbsp;평판이 좋은</td>
				        <td class="even"><input type="radio" name="16" value="C">&nbsp;&nbsp;일관성 있는</td>
				    </tr>
				    <tr>
				        <th scope="row" >17</th>
				        <td><input type="radio" name="17" value="C" required="required">&nbsp;&nbsp;정돈된</td>
				        <td><input type="radio" name="17" value="D" checked="checked">&nbsp;&nbsp;영향력 있는</td>
				        <td><input type="radio" name="17" value="I">&nbsp;&nbsp;생기있는</td>
				        <td><input type="radio" name="17" value="S">&nbsp;&nbsp;미루는</td>
				    </tr>
				    <tr>
				        <th scope="row" class="even">18</th>
				        <td class="even"><input type="radio" name="18" value="I" required="required">&nbsp;&nbsp;쾌활한</td>
				        <td class="even"><input type="radio" name="18" value="S" checked="checked">&nbsp;&nbsp;충성스러운</td>
				        <td class="even"><input type="radio" name="18" value="D">&nbsp;&nbsp;성취적인</td>
				        <td class="even"><input type="radio" name="18" value="C">&nbsp;&nbsp;이상주의적인</td>
				    </tr>
				        <tr>
				        <th scope="row" >19</th>
				        <td><input type="radio" name="19" value="C" required="required">&nbsp;&nbsp;진지한</td>
				        <td><input type="radio" name="19" value="S" checked="checked">&nbsp;&nbsp;이해심 많은</td>
				        <td><input type="radio" name="19" value="I">&nbsp;&nbsp;감성적인</td>
				        <td><input type="radio" name="19" value="D">&nbsp;&nbsp;솔직한</td>
				    </tr>
				    <tr>
				        <th scope="row" class="even">20</th>
				        <td class="even"><input type="radio" name="20" value="D" required="required">&nbsp;&nbsp;주도적인</td>
				        <td class="even"><input type="radio" name="20" value="C" checked="checked">&nbsp;&nbsp;사려깊은</td>
				        <td class="even"><input type="radio" name="20" value="S">&nbsp;&nbsp;의존적인</td>
				        <td class="even"><input type="radio" name="20" value="I">&nbsp;&nbsp;자발적인</td>
				    </tr>
				        <tr>
				        <th scope="row" >21</th>
				        <td><input type="radio" name="21" value="D" required="required">&nbsp;&nbsp;경쟁심이 있는</td>
				        <td><input type="radio" name="21" value="I" checked="checked">&nbsp;&nbsp;변덕스러운</td>
				        <td><input type="radio" name="21" value="S">&nbsp;&nbsp;배려하는</td>
				        <td><input type="radio" name="21" value="C">&nbsp;&nbsp;희생적인</td>
				    </tr>
				    <tr>
				        <th scope="row" class="even">22</th>
				        <td class="even"><input type="radio" name="22" value="C" required="required">&nbsp;&nbsp;전통적인</td>
				        <td class="even"><input type="radio" name="22" value="S" checked="checked">&nbsp;&nbsp;협력하는</td>
				        <td class="even"><input type="radio" name="22" value="I">&nbsp;&nbsp;사람을 부추기는</td>
				        <td class="even"><input type="radio" name="22" value="D">&nbsp;&nbsp;용기있는</td>
				    </tr>
				        <tr>
				        <th scope="row" >23</th>
				        <td><input type="radio" name="23" value="S" required="required">&nbsp;&nbsp;안정된</td>
				        <td><input type="radio" name="23" value="I" checked="checked">&nbsp;&nbsp;창의적인</td>
				        <td><input type="radio" name="23" value="C">&nbsp;&nbsp;계획적인</td>
				        <td><input type="radio" name="23" value="D">&nbsp;&nbsp;밀어붙이는</td>
				    </tr>
				    <tr>
				        <th scope="row" class="even">24</th>
				        <td class="even"><input type="radio" name="24" value="S" required="required">&nbsp;&nbsp;조화로운</td>
				        <td class="even"><input type="radio" name="24" value="C" checked="checked">&nbsp;&nbsp;철저한</td>
				        <td class="even"><input type="radio" name="24" value="I">&nbsp;&nbsp;자유로운</td>
				        <td class="even"><input type="radio" name="24" value="D">&nbsp;&nbsp;이끌어가는</td>
				    </tr>
				    <tr>
				        <th scope="row">25</th>
				        <td><input type="radio" name="25" value="D" required="required">&nbsp;&nbsp;주도적인</td>
				        <td><input type="radio" name="25" value="I" checked="checked">&nbsp;&nbsp;유연한</td>
				        <td><input type="radio" name="25" value="C">&nbsp;&nbsp;원리원칙인</td>
				        <td><input type="radio" name="25" value="S">&nbsp;&nbsp;평화적인</td>
				    </tr>
    			</tbody>
   			 </table>
   			<!--  <input type="hidden" name="dominance" value=0>
   			 <input type="hidden" name="influence" value=0>
   			 <input type="hidden" name="steadiness" value=0>
   			 <input type="hidden" name="conscientious" value=0> -->
   			 
   			 <br>
   			 <br>
   			 <input type="button" value="제출하기" id="submitBtn" class="button">
			</div><!-- tab2 -->
			
        </div><!-- tab content -->
        </form>
	</div><!-- container3 -->
	</div><!-- row -->
  </div><!-- section10 -->
</div><!-- col10 -->
</div>	<!-- /container2 -->
	

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