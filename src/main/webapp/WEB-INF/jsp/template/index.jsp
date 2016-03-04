<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html ng-app='ngApp'>
<head>
<meta charset="UTF-8">
<title>模板页面生成测试</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="/static/libs/bootstrap/3.3.6/css/bootstrap.css" rel="stylesheet">
<link href="/static/css/base.css" rel="stylesheet">
<script src="/static/libs/jquery/1.2.0/jquery.js"></script>
<script src="/static/libs/angular/1.4.8/angular.js"></script>
<script src="/app/base.js"></script>
<script src="/app/template/controllers.js"></script>
</head>
<body>
	<div class="container" ng-controller="TemplateController as tc">
		<div class="row">
			<div class="col-xs-12">
				<ul>
					<li ng-repeat="(key, val) in tc.pages"><a target="_blank" ng-href="/template/{{key}}">{{val}}</a></li>
				</ul>
			</div>
		</div>
		<div class="row">
			<div class="col-xs-12">
				
			</div>
		</div>
	</div>
</body>
</html>