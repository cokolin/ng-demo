<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html ng-app='fcsApp'>
<head>
<meta charset="UTF-8">
<title>ng 1.4 CURD示例</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="//libs.cdnjs.net/twitter-bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
<link href="/css/base.css" rel="stylesheet">
</head>
<body ng-controller='DemoController as dc'>
	<div class='container'>
		<ol class="breadcrumb">
			<li><a href="/">主页</a></li>
			<li class='active'>1.4 CURD示例</li>
		</ol>
		<div class='row'>
			<form class="form-horizontal" name='queryForm' ng-submit='dc.doQuery()'>
				<div class="form-group col-xs-12 col-md-6">
					<label for="type" class="col-xs-2 control-label">类型</label>
					<div class="col-xs-10">
						<label class="checkbox-inline" ng-repeat='it in dc.typeList'> <input type="checkbox" name="type"
							ng-model='it._check' ng-change='dc.checkOne(dc.queryArgs.type, dc.typeList)'>{{it.text}}
						</label> <label class="checkbox-inline" style='padding-left: 0'>
							<button class='btn btn-xs btn-warning' type='button' ng-click='dc.checkAll(dc.queryArgs.type, dc.typeList)'>全选</button>
						</label>
					</div>
				</div>
				<div class="form-group col-xs-12 col-md-6">
					<label for="status" class="col-xs-2 control-label">状态</label>
					<div class="col-xs-10">
						<label class="radio-inline"><input type="radio" name="status" ng-model='dc.queryArgs.status'>全部</label><label
							class="radio-inline" ng-repeat='it in dc.statusList'> <input type="radio" name="status"
							ng-model='dc.queryArgs.status' value='{{it.id}}'>{{it.text}}
						</label>
					</div>
				</div>
				<div class='clearfix'></div>
				<div class="form-group col-xs-12 col-sm-6 col-md-4">
					<label for="name" class="col-xs-4 control-label">名称</label>
					<div class="col-xs-8">
						<input type="text" class="form-control" name="name" ng-model='dc.queryArgs.name' placeholder="Name">
					</div>
				</div>
				<div class="form-group col-xs-12 col-sm-6 col-md-4">
					<label for="price" class="col-xs-4 control-label">单价</label>
					<div class="col-xs-8">
						<input type="number" class="form-control" name="price" ng-model='dc.queryArgs.price' min='0' placeholder="Price">
					</div>
				</div>
				<div class="form-group col-xs-12 col-sm-6 col-md-4">
					<label for="updateBy" class="col-xs-4 control-label">更新者</label>
					<div class="col-xs-8">
						<input type="text" class="form-control" name="updateBy" ng-model='dc.queryArgs.updateBy' placeholder="updateBy">
					</div>
				</div>
				<div class="form-group col-xs-12 col-sm-6 col-md-12 text-center">
					<button type="submit" class="btn btn-primary" ng-disabled='dc.queryNow||queryForm.$invalid'>查询</button>
				</div>
			</form>
		</div>
	</div>
	<div class='container-fluid'>
		<div class='row'>
			<div class='col-xs-12'></div>
		</div>
	</div>
	<footer class='container'>
		<div class='row'>
			<div class='col-xs-12 text-center'>{{dc.date.toString()}}</div>
		</div>
	</footer>
	<script src="//libs.cdnjs.net/jquery/2.1.4/jquery.min.js"></script>
	<script src="//libs.cdnjs.net/angular.js/1.4.8/angular.min.js"></script>
	<script src="/app/base.js"></script>
	<script src="/app/value.js"></script>
	<script src="/app/filter.js"></script>
	<script src="/app/service.js"></script>
	<script src="/app/demo-1.4/controllers.js"></script>
</body>
</html>