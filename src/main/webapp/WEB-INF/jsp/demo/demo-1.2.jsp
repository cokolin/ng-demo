<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html ng-app='fcsApp'>
<head>
<meta charset="UTF-8">
<title>ng 1.2 CURD示例</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="//libs.cdnjs.net/twitter-bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
<link href="/css/demo-1.2.css" rel="stylesheet">
</head>
<body>
	<ul>
		<li><a href="/">主页</a></li>
		<li><a href="/libs/angular/1.2.29/docs/index.html">AngularJS 1.2.29 API</a></li>
		<li><a href="/demo-1.2">1.2 CURD示例</a></li>
		<li><a href="/demo-1.4">1.4 CURD示例</a></li>
	</ul>
	<div ng-controller='DemoController as dc'>{{dc.date}}</div>
	<script src="//libs.cdnjs.net/jquery/1.9.1/jquery.min.js"></script>
	<script src="//libs.cdnjs.net/angular.js/1.2.29/angular.min.js"></script>
	<script src="/app/apps.js"></script>
	<script src="/app/value.js"></script>
	<script src="/app/filter.js"></script>
	<script src="/app/service.js"></script>
	<script src="/app/demo/controllers-1.2.js"></script>
</body>
</html>