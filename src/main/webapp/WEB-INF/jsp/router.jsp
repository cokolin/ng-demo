<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html ng-app="ngApp">
<head>
<meta charset="UTF-8">
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="/static/libs/bootstrap/3.3.6/css/bootstrap.css" rel="stylesheet">
<script src="/static/libs/jquery/1.2.0/jquery.js"></script>
<script src="/static/libs/angular/1.4.8/angular.js"></script>
<script src="/static/libs/angular/1.4.8/router.es5.js"></script>
<script src="/static/libs/bootstrap/3.3.6/js/bootstrap.js"></script>
<link href="/static/css/home.css" rel="stylesheet">
<base href="/app/router/">
<script src="/app/router/components/about/home.js"></script>
<script src="/app/router/components/about/about.js"></script>
<script src="/app/router/app.js"></script>
<title>Angular New Router</title>
</head>
<body ng-strict-di ng-controller="AppController as app">
	<nav ng-include="'/router/html/navbar.html'" class="navbar navbar-inverse navbar-static-top"></nav>
	<div ng-viewport></div>
	<footer ng-include="'/router/html/footer.html'"></footer>
</body>
</html>