<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html ng-app='fcsApp'>
<head>
<meta charset="UTF-8">
<title>消息</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="//libs.cdnjs.net/twitter-bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
<link href="/css/base.css" rel="stylesheet">
</head>
<body>
	<div class="container" ng-controller='MessageController as mc'>
		<div class="row">
			<div class="col-xs-12">
				<form name="usernameForm" class="form-inline" ng-submit="mc.setUsername()">
					<fieldset>
						<legend>设置用户名</legend>
						<div class="form-group">
							<div class="col-xs-4">
								<input class="form-control" ng-model="mc.usr.username" name="username" type="text" placeholder="用户名"
									maxlength="100" required>
							</div>
							<div class="col-xs-2">
								<button type="submit" class="btn btn-primary" ng-disabled="usernameForm.$invalid || mc.postFlag">提交</button>
							</div>
						</div>
					</fieldset>
				</form>
			</div>
			<div class="col-xs-12">
				<a href="/message/show">查看WebSocket消息</a>
			</div>
			<div class="col-xs-12">
				<form name="userMsgForm" class="form-inline" ng-submit="mc.sendUserMsg()">
					<fieldset>
						<legend>给用户发消息</legend>
						<div class="form-group">
							<div class="col-xs-4">
								<input class="form-control" ng-model="mc.usrMsg.user" name="user" type="text" placeholder="用户" maxlength="100"
									required>
							</div>
							<div class="col-xs-6">
								<input class="form-control" ng-model="mc.usrMsg.msg" name="msg" type="text" placeholder="消息" maxlength="400"
									required>
							</div>
							<div class="col-xs-2">
								<button type="submit" class="btn btn-primary" ng-disabled="userMsgForm.$invalid || mc.postFlag">提交</button>
							</div>
						</div>
					</fieldset>
				</form>
			</div>
			<div class="col-xs-12">
				<form name="allMsgForm" class="form-inline" ng-submit="mc.sendUserMsg()">
					<fieldset>
						<legend>给所有人发消息</legend>
						<div class="form-group">
							<div class="col-xs-6">
								<input class="form-control" ng-model="mc.allMsg.msg" name="msg" type="text" placeholder="消息" maxlength="400"
									required>
							</div>
							<div class="col-xs-2">
								<button type="submit" class="btn btn-primary" ng-disabled="allMsgForm.$invalid || mc.postFlag">提交</button>
							</div>
						</div>
					</fieldset>
				</form>
			</div>
			<div class="col-xs-12">
				<button type="button" class="btn btn-danger" onclick="$('#msg').html('')">清空</button>
				<ul id='msg'></ul>
			</div>
		</div>
	</div>
	<script src="/libs/jquery/2.1.1/jquery.js"></script>
	<script src="/libs/angular/1.4.8/angular.js"></script>
	<script src="/app/base.js"></script>
	<script src="/app/message/controllers.js"></script>
</body>
</html>