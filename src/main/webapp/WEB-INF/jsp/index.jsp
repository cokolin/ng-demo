<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>主页</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="/libs/bootstrap/3.3.6/css/bootstrap.css" rel="stylesheet">
<link href="/css/base.css" rel="stylesheet">
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-xs-12">
				<ul>
					<li><a href="/">主页</a></li>
					<li><a href="/libs/angular/1.2.29/docs/index.html" target="_blank">AngularJS 1.2.29 API</a></li>
					<li><a href="/libs/angular/1.4.8/docs/index.html" target="_blank">AngularJS 1.4.8 API</a></li>
					<li><a href="/crud" target="_blank">AngularJS 1.4 CURD示例</a></li>
					<li><a href="/message" target="_blank">Message 发送示例</a></li>
					<li><a href="/pdf/bill?id=321" target="_blank">竖向PDF页面</a></li>
					<li><a href="/pdf/create?id=321&inline=1" target="_blank">竖向PDF查看</a></li>
					<li><a href="/pdf/bill-horiz?id=321" target="_blank">横向PDF页面</a></li>
					<li><a href="/pdf/create-horiz?id=321&inline=1" target="_blank">横向PDF查看</a></li>
					<li><a href="/pdf/logger?open=1" target="_blank">开启iText日志</a></li>
					<li><a href="/pdf/logger?open=0" target="_blank">关闭iText日志</a></li>
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