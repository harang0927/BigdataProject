<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="rtest.RChart"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
   	<title>Rserve</title>
   	<script src='../myapp/resources/highcharts/js/jquery-1.9.1.min.js' type='text/javascript'></script>
    <script src='../myapp/resources/highcharts/js/highcharts.js' type='text/javascript'></script>
    <script src='../myapp/resources/highcharts/js/highcharts-more.js' type='text/javascript'></script>
    <script src='../myapp/resources/highcharts/js/exporting.js' type='text/javascript'></script>
    
    <link rel='stylesheet' href='../myapp/resources/morris/css/morris.css'>
    
   	<script src='../myapp/resources/morris/js/jquery-1.8.2.min.js' type='text/javascript'></script>
    <script src='../myapp/resources/morris/js/morris.min.js' type='text/javascript'></script>
    <script src='../myapp/resources/morris/js/raphael-2.1.0.min.js' type='text/javascript'></script>
    
    <link rel='stylesheet' href='../myapp/resources/css/nv.d3.css'>
   	<link rel='stylesheet' href='../myapp/resources/css/rNVD3.css'>
    
	<script src='../myapp/resources/js/jquery-1.8.2.min.js' type='text/javascript'></script>
	<script src='../myapp/resources/js/d3.v3.min.js' type='text/javascript'></script>
    <script src='../myapp/resources/js/nv.d3.min-new.js' type='text/javascript'></script>
    <script src='../myapp/resources/js/fisheye.js' type='text/javascript'></script>   
    <style>
    
    .rChart {
      display: block;
      margin-left: auto; 
      margin-right: auto;
      width: 600px;
      height: 400px;
    }   
    </style>
</head>
<body>
<h1>rChart 시각화 결과 표현하기</h1> 
<hr>
${rchart_content}		
</body>
</html> 
