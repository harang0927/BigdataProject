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

<style>
	table.type10 {
	border-collapse: collapse;
	text-align: left;
	line-height: 1.5;
	border-top: 1px solid #ccc;
	border-bottom: 1px solid #ccc;
	margin: 20px 10px;
	width: 85%
	
}

table.type10 thead td {
	padding: 10px;
	font-weight: bold;
	vertical-align: top;
	color: #fff;
	background: #000000;
	margin: 20px 10px;
	text-align: center;
}

table.type10 tbody th {
	width: 100px;
	padding: 10px;
}

table.type10 td {
	padding: 8px;
	vertical-align: top;
	margin-top: 15px;	
}

table.type10 .even {
	background: #fdf3f5;
}
a:link{
 	color: black;
 	font-weight: bold;
}
tr:HOVER {
	background-color: #d9d9d9;
}

</style>

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

	<!-- container -->
	
	
<div align="center" style= "margin-bottom:70px; margin-top:100px;">
<div align="center" style="padding:30px;" >
<form name=searchform action="./companySearchList.do" method=get>
	<input type="text" name="searchBox" placeholder="     기업명을 입력하세요" style="width:600px; height:35px;">
	<input type="submit" value="Search" style="width:80px;height:35px;">
</form>
</div>
<div align="center">
    <table class="type10">
    <thead>
		<tr>
		<td style="width:100px;">Company</td>
		<td style="width:100px;">Industry</td>
		</tr>
	</thead>
    <tbody>
    <tr>
     
   	 	<c:forEach var="clvo" items="${requestScope.clvo.company}">
			<tr>
			<td style="width:100px;  padding-left: 200px;"><span onclick="showCompany('${clvo.comName}');">${clvo.comName}</span></td>
			<td style="text-align:center; width:80px;">${clvo.comIndustry}</td>
			</tr>
		</c:forEach>
    </tr>
    
    </tbody>
</table>
				</div>
<!--  
	<font size="3">
	<div>
	<div class="col-sm-2" >
<ul>

	</div>
	</div>
	</font>
	-->
	
</div>
	
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
	<script>
		function showCompany(comName) {
			location.href="/myapp/showCompany.do?comName="+encodeURIComponent(comName);
		}
	</script>
</body>
</html>