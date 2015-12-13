<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html ng-app='fcsApp'>
<head>
<meta charset="UTF-8">
<title>ng 1.2 CURD示例</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="//libs.cdnjs.net/twitter-bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
<link href="/css/base.css" rel="stylesheet">
</head>
<body>
	<ol class="breadcrumb">
		<li><a href="/">主页</a></li>
		<li class='active'>1.2 CURD示例</li>
	</ol>
	<div ng-controller='DemoController as dc'>{{dc.date}}</div>
	<script src="//libs.cdnjs.net/jquery/1.9.1/jquery.min.js"></script>
	<script src="//libs.cdnjs.net/angular.js/1.2.29/angular.min.js"></script>
	<script src="/app/base.js"></script>
	<script src="/app/value.js"></script>
	<script src="/app/filter.js"></script>
	<script src="/app/service.js"></script>
	<script src="/app/demo-1.2/controllers.js"></script>
</body>
</html>