<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html ng-app='ngApp'>
<head>
<meta charset="UTF-8">
<title>CURD示例</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="/static/libs/bootstrap/3.3.6/css/bootstrap.css" rel="stylesheet">
<link href="/static/css/base.css" rel="stylesheet">
<script src="/static/libs/jquery/1.2.0/jquery.js"></script>
<script src="/static/libs/bootstrap/3.3.6/js/bootstrap.js"></script>
<script src="/static/libs/angular/1.4.8/angular.js"></script>
</head>
<body ng-controller='DemoController as dc'>
	<div class='container'>
		<ol class="breadcrumb">
			<li><a href="/">主页</a></li>
			<li class='active'>AngularJS 1.4 CURD示例</li>
		</ol>
		<div class='row' ng-include='dc.queryFormHtml'></div>
	</div>
	<div class='container-fluid'>
		<div class='row' ng-include='dc.queryTableHtml'></div>
	</div>
	<div ng-controller='DemoAddController as da'>
		<hr>
		<p>{{da.name}}</p>
	</div>
	<div ng-controller='DemoEditController as de' ng-include='de.editHtml'></div>
	<footer class='container'>
		<div class='row'>
			<div class='col-xs-12 text-center'>{{dc.date.toString()}}</div>
		</div>
	</footer>
	<script src="/app/base.js"></script>
	<script src="/app/value.js"></script>
	<script src="/app/filter.js"></script>
	<script src="/app/service.js"></script>
	<script src="/app/curd/controllers.js"></script>
</body>
</html>