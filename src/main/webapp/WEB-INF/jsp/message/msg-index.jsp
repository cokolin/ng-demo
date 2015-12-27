<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html ng-app='fcsApp'>
<head>
<meta charset="UTF-8">
<title>设置消息</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="//libs.cdnjs.net/twitter-bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
<link href="/css/base.css" rel="stylesheet">
</head>
<body>
	<div class="container" ng-controller='MessageController as mc'>
		<div class="row">
			<div class="col-xs-12" style="margin-top: 15px;">
				<form name="usernameForm" class="form-inline" ng-submit="mc.setUsername()">
					<div class="form-group">
						<label class="control-label">设置用户名</label> <input class="form-control" ng-model="mc.usr.username" name="username"
							type="text" placeholder="用户名" maxlength="100" required>
						<button type="submit" class="btn btn-primary" ng-disabled="usernameForm.$invalid || mc.postFlag">提交</button>
						<a href="/message/show" target="_blank">查看WebSocket消息</a>
					</div>
				</form>
			</div>
			<div class="col-xs-12" style="margin-top: 15px;">
				<form name="userMsgForm" class="form-inline" ng-submit="mc.sendUserMsg()">
					<div class="form-group">
						<label class="control-label">给用户发消息</label> <input class="form-control" ng-model="mc.usrMsg.user" name="user"
							type="text" placeholder="用户" maxlength="100" required> <input class="form-control"
							ng-model="mc.usrMsg.msg" name="msg" type="text" placeholder="消息" maxlength="400" required>
						<button type="submit" class="btn btn-primary" ng-disabled="userMsgForm.$invalid || mc.postFlag">提交</button>
					</div>
				</form>
			</div>
			<div class="col-xs-12" style="margin-top: 15px;">
				<form name="allMsgForm" class="form-inline" ng-submit="mc.sendUserMsg()">
					<div class="form-group">
						<label class="control-label">给所有人发消息</label> <input class="form-control" ng-model="mc.allMsg.msg" name="msg"
							type="text" placeholder="消息" maxlength="400" required>
						<button type="submit" class="btn btn-primary" ng-disabled="allMsgForm.$invalid || mc.postFlag">提交</button>
						<button type="button" class="btn btn-danger" ng-click="mc.msgs = []">清空下面显示的内容</button>
					</div>
				</form>
			</div>
			<div class="col-xs-12">
				<hr>
				<ul>
					<li ng-repeat='it in mc.msgs'>{{it | json}}</li>
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