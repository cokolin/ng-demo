<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html ng-app='fcsApp'>
<head>
<meta charset="UTF-8">
<title>查看消息</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="//libs.cdnjs.net/twitter-bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
<link href="/css/base.css" rel="stylesheet">
</head>
<body>
	<div class="container" ng-controller='MsgShowController as ms'>
		<div class="row">
			<div class="col-xs-12">
				<button type="button" class="btn btn-primary" ng-click="ms.open()">启动WebSockit</button>
				<button type="button" class="btn btn-warning" ng-click="ms.close()">关闭WebSockit</button>
				<button type="button" class="btn btn-danger" ng-click="ms.msgs = []">清空显示的消息</button>
			</div>
			<div class="col-xs-12">
				<form name="sendForm" class="form-inline" ng-submit="ms.send()">
					<div class="form-group">
						<label class="control-label">给用户发消息</label> <input type="text" class="form-control" ng-model='ms.msg' size="100" required>
						<button type="submit" class="btn btn-primary" ng-disabled="sendForm.$invalid || !ms.socket">提交</button>
					</div>
				</form>
			</div>
			<hr>
			<div class="col-xs-12">
				<ul>
					<li ng-repeat='it in ms.msgs'>{{it | json}}</li>
				</ul>
			</div>
		</div>
	</div>
	<script src="/libs/jquery/2.1.1/jquery.js"></script>
	<script src="/libs/angular/1.4.8/angular.js"></script>
	<script src="/app/base.js"></script>
	<script src="/app/message/controllers.js"></script>
</body>
</html>