<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>哈哈</title>
</head>
<body>
	
	<div>
		<a href="/index.jsp">主页</a>
	</div>
	<ol>
		<li>${applicationScope.test}</li>
		<li>${pageContext.request.contextPath}</li>
		<li>${requestScope.path}</li>
	</ol>
</body>
</html>