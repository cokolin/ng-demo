<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>主页</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="//libs.cdnjs.net/twitter-bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
<link href="/css/base.css" rel="stylesheet">
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-xs-12">
				<ul>
					<li><a href="/">主页</a></li>
					<li><a href="/libs/angular/1.2.29/docs/index.html">AngularJS 1.2.29 API</a></li>
					<li><a href="/libs/angular/1.4.8/docs/index.html">AngularJS 1.4.8 API</a></li>
					<li><a href="/demo/demo-curd">AngularJS 1.4 CURD示例</a></li>
				</ul>
				<ol>
					<li>${applicationScope.test}</li>
					<li>${pageContext.request.contextPath}</li>
					<li>${requestScope.path}</li>
				</ol>
			</div>
		</div>
	</div>
</body>
</html>