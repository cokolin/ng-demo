<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html ng-app='fcsApp'>
<head>
<meta charset="UTF-8">
<title>ng 1.4 CURD示例</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="//libs.cdnjs.net/twitter-bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
<link href="/css/demo-1.4.css" rel="stylesheet">
</head>
<body ng-controller='DemoController as dc'>
	<div class='container'>
		<ol class="breadcrumb">
			<li><a href="/">主页</a></li>
			<li class='active'>1.4 CURD示例</li>
		</ol>
		<div class='row'>
			<div class='col-xs-12' ng-include='dc.queryFormHtml'></div>
		</div>
	</div>
	<div class='container-fluid'>
		<div class='row'>
			<div class='col-xs-12'></div>
		</div>
	</div>
	<footer class='container'>
		<div class='row'>
			<div class='col-xs-12 text-center'>{{dc.date.toString()}}</div>
		</div>
	</footer>
	<script src="//libs.cdnjs.net/jquery/2.1.4/jquery.min.js"></script>
	<script src="//libs.cdnjs.net/angular.js/1.4.8/angular.min.js"></script>
	<script src="/app/apps.js"></script>
	<script src="/app/value.js"></script>
	<script src="/app/filter.js"></script>
	<script src="/app/service.js"></script>
	<script src="/app/demo/controllers-1.4.js"></script>
</body>
</html>