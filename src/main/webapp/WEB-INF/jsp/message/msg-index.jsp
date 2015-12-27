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
	<div class="container">
		<div class="row">
			<div class="col-xs-12 col-sm-6" style="margin-top: 15px;" ng-controller='MessageController as mc'>
				<form name="usernameForm" class="form-inline" ng-submit="mc.setUsername()">
					<div class="form-group">
						<label class="control-label">设置用户名</label> <input class="form-control" ng-model="mc.usr.username" name="username"
							type="text" placeholder="用户名" maxlength="100" required>
						<button type="submit" class="btn btn-primary" ng-disabled="usernameForm.$invalid || mc.postFlag">提交</button>
					</div>
				</form>
				<hr>
				<form name="userMsgForm" class="form-inline" ng-submit="mc.sendUserMsg()">
					<div class="form-group">
						<label class="control-label">给用户发消息</label> <input class="form-control" ng-model="mc.usrMsg.user" name="user"
							type="text" placeholder="用户" maxlength="100" required> <input class="form-control"
							ng-model="mc.usrMsg.msg" name="msg" type="text" placeholder="消息" maxlength="400" required>
						<button type="submit" class="btn btn-primary" ng-disabled="userMsgForm.$invalid || mc.postFlag">提交</button>
					</div>
				</form>
				<hr>
				<form name="allMsgForm" class="form-inline" ng-submit="mc.sendAllMsg()">
					<div class="form-group">
						<label class="control-label">给所有人发消息</label> <input class="form-control" ng-model="mc.allMsg.msg" name="msg"
							type="text" placeholder="消息" maxlength="400" required>
						<button type="submit" class="btn btn-primary" ng-disabled="allMsgForm.$invalid || mc.postFlag">提交</button>
						<button type="button" class="btn btn-danger" ng-click="mc.msgs = []">清空反馈</button>
					</div>
				</form>
				<hr>
				<ul>
					<li ng-repeat='it in mc.msgs track by $index'>{{it}}</li>
				</ul>
			</div>
			<div class="col-xs-12 col-sm-6" style="margin-top: 15px;" ng-controller='MsgShowController as ms'>
				<form name="sendMsgForm" class="form-inline" ng-submit="ms.send()">
					<div class="form-group">
						<label class="control-label">给用户发消息</label><input type="text" class="form-control" ng-model='ms.msg' required>
						<button type="submit" class="btn btn-primary" ng-disabled="sendForm.$invalid || !ms.socket">提交</button>
					</div>
					<hr>
					<div class="form-group">
						<button type="button" class="btn btn-primary" ng-click="ms.open()">启动WebSockit</button>
						<button type="button" class="btn btn-warning" ng-disabled="!ms.socket" ng-click="ms.close()">关闭WebSockit</button>
						<button type="button" class="btn btn-danger" ng-click="ms.msgs = []">清空消息</button>
					</div>
				</form>
				<hr>
				<ul>
					<li ng-repeat='it in ms.msgs track by $index'>{{it}}</li>
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