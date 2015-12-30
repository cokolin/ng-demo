<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html ng-app='fcsApp'>
<head>
<meta charset="UTF-8">
<title>消息示例</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="/libs/bootstrap/3.3.6/css/bootstrap.css" rel="stylesheet">
<link href="/css/base.css" rel="stylesheet">
</head>
<body>
	<div class="container">
		<div class="row" ng-controller='MessageController as mc'>
			<div class="col-xs-12 col-sm-6" style="background-color: #F0F0F0;">
				<form name="form" ng-submit="mc.usrMsg()">
					<div class="form-group" style="height: 320px; background-color: #FFF; overflow-y: auto; margin-top: 15px;">
						<ul>
							<li ng-repeat='it in mc.msgs track by $index'>{{it}}</li>
						</ul>
					</div>
					<div class="form-group">
						<input class="form-control" ng-model="mc.msg.usr" name="usr" type="text" placeholder="用户名" maxlength="100"
							required>
					</div>
					<div class="form-group">
						<textarea class="form-control" ng-model="mc.msg.msg" name="msg" placeholder="消息" maxlength="100" required></textarea>
					</div>
					<div class="form-group text-right">
						<button type="submit" class="btn btn-primary" ng-disabled="form.$invalid || !mc.socket || mc.flag">发给个人</button>
						<button type="button" class="btn btn-primary" ng-click="mc.allMsg()" ng-disabled="form.msg.$invalid || !mc.socket || mc.flag">发给所有</button>
					</div>
					<div class="form-group text-right">
						<button type="button" class="btn btn-danger" ng-click="mc.msgs = []">清空消息</button>
						<button type="button" class="btn btn-primary" ng-click="mc.logout()" ng-disabled="!mc.socket || mc.flag">用户登出</button>
						<button type="button" class="btn btn-primary" ng-click="mc.login()" ng-disabled="form.usr.$invalid || mc.socket || mc.flag">用户登录</button>
					</div>
				</form>
			</div>
			<div class="col-xs-12 col-sm-6" ng-bind='mc.resp | json'></div>
		</div>
	</div>
	<script src="/libs/jquery/2.1.1/jquery.js"></script>
	<script src="/libs/angular/1.4.8/angular.js"></script>
	<script src="/app/base.js"></script>
	<script src="/app/message/controllers.js"></script>
</body>
</html>