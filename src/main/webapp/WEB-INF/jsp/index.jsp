<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>主页</title>
</head>
<body>
	<ul>
		<li><a href="/">主页</a></li>
		<li><a href="/demo">示例</a></li>
	</ul>
	<ol>
		<li>${applicationScope.test}</li>
		<li>${pageContext.request.contextPath}</li>
		<li>${requestScope.path}</li>
	</ol>
</body>
</html>