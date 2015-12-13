<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<ul>
		<li><a href="/index.do">测试</a></li>
		<li><a href="/demo/index.do">演示</a></li>
		<li>${applicationScope.test}</li>
		<li>${pageContext.request.contextPath}</li>
		<li>${requestScope.path}</li>
	</ul>
</body>
</html>