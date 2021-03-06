<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html data-ng-app='fcsApp'>
<head>
<%@include file="include/head.jsp"%>
<style type="text/css">
.table,.list-inline {
	margin-bottom: 0;
}
</style>
<script src="/app/template/controllers.js"></script>
<title>生成模板页面</title>
</head>
<body>
	<div class="container-fluid" data-ng-controller="TemplateController as tc">
		<div class="row">
			<div class="col-xs-12">
				<ul class="list-inline">
					<li><strong>模板</strong></li>
					<li>
						<button class="btn btn-danger" type="button" data-ng-click="tc.tmplRest()">重置数据</button>
					</li>
					<li>
						<button class="btn btn-primary" type="button" data-ng-click="tc.tmplQuery()">示例模板</button>
					</li>
					<li data-ng-repeat="(key, val) in tc.pages">
						<button class="btn btn-info" type="button" data-ng-click="tc.tmplLoad(key)">{{val}}</button>
					</li>
				</ul>
			</div>
		</div>
		<hr>
		<div class="row">
			<div class="col-xs-12">
				<form name="tmplForm" class="form-horizontal" data-ng-submit="tc.addTmpl()">
					<fieldset data-ng-disabled="!tc.tmpl">
						<div class="col-xs-12 col-sm-6">
							<div class="form-group">
								<label for="code" class="col-xs-2 control-label">唯一码</label>
								<div class="col-xs-10">
									<input type="text" class="form-control" name="code" data-ng-model="tc.tmpl.code" placeholder="只接受 a-Z, 0-9, -, _" maxlength="80" required>
								</div>
							</div>
						</div>
						<div class="col-xs-12 col-sm-6">
							<div class="form-group">
								<label for="page" class="col-xs-2 control-label">页面</label>
								<div class="col-xs-10">
									<div class="input-group">
										<span class="input-group-addon">/WEB-INF/jsp/basic/</span><input type="text" class="form-control" name="page" data-ng-model="tc.tmpl.page" placeholder="实际的jsp文件名" maxlength="80" required><span class="input-group-addon">.jsp</span>
									</div>

								</div>
							</div>
						</div>
						<div class="col-xs-12 col-sm-6">
							<div class="form-group">
								<label for="title" class="col-xs-2 control-label">标题</label>
								<div class="col-xs-10">
									<input type="text" class="form-control" name="title" data-ng-model="tc.tmpl.title" placeholder="页面的标题" maxlength="80" required>
								</div>
							</div>
						</div>
						<div class="col-xs-12 col-sm-6">
							<div class="form-group">
								<label for="script" class="col-xs-2 control-label">脚本</label>
								<div class="col-xs-10">
									<div class="input-group">
										<span class="input-group-addon">/app/basic/</span><input type="text" class="form-control" name="script" data-ng-model="tc.tmpl.script" placeholder="脚本文件名" maxlength="80" required><span class="input-group-addon">.js</span>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xs-12 col-sm-6">
							<div class="form-group">
								<label for="controller" class="col-xs-2 control-label">控制器</label>
								<div class="col-xs-10">
									<div class="input-group">
										<input type="text" class="form-control" name="controller" data-ng-model="tc.tmpl.controller" placeholder="控制器名称" maxlength="80" required><span class="input-group-addon">as vm</span>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xs-12 col-sm-6">
							<div class="form-group">
								<label for="" class="col-xs-2 control-label">页面组件</label>
								<div class="col-xs-6">
									<div class="btn-group" role="group">
										<button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown">
											添加表单组件 <span class="caret"></span>
										</button>
										<ul class="dropdown-menu">
											<li data-ng-repeat="(key, val) in tc.types.module"><a href="javascript:" data-ng-click="tc.addModule(tc.tmpl, key, val)">{{val}}</a></li>
										</ul>
									</div>
								</div>
								<div class="col-xs-4 text-right">
									<button class="btn btn-success" type="submit" data-ng-disabled="tmplForm.$invalid">保存模板</button>
								</div>
							</div>
						</div>
						<%@include file="include/module.jsp"%>
					</fieldset>
				</form>
			</div>
		</div>
		<%--
			<div class="col-xs-12">
				<h4>模板的基本属性</h4>
				<ul>
					<li data-ng-if="tc.tmpl.code">{{tc.tmpl.code}} {{tc.tmpl.title}}</li>
					<li data-ng-repeat="module in tc.tmpl.modules">
						<ul data-ng-if="module.form">
							<li>表单：{{module.form.name}}</li>
							<li>表单项：
								<ul data-ng-if="module.form.ipts">
									<li data-ng-repeat="ipt in module.form.ipts">{{ipt.type}}，{{ipt.name}}</li>
								</ul>
							</li>
							<li>按钮项：
								<ul data-ng-if="module.form.btns">
									<li data-ng-repeat="btn in module.form.btns">{{btn.type}}，{{btn.name}}</li>
								</ul>
							</li>
						</ul>
						<ul data-ng-if="module.table">
							<li>表格：</li>
							<li>表格头：
								<ul data-ng-if="module.table.theads">
									<li data-ng-repeat="th in module.table.theads">{{th.type}}，{{th.name}}</li>
								</ul>
							</li>
							<li>表格项：
								<ul data-ng-if="module.table.tbodies">
									<li data-ng-repeat="td in module.table.tbodies">{{td.type}}，{{td.name}}</li>
								</ul>
							</li>
						</ul>
					</li>
				</ul>
			</div>
		</div>
		--%>
		<%@include file="include/cols.jsp"%>
		<%@include file="include/theads.jsp"%>
		<%@include file="include/tbodies.jsp"%>
		<%@include file="include/ipts.jsp"%>
		<%@include file="include/btns.jsp"%>
		<%@include file="include/attrs.jsp"%>
	</div>
</body>
</html>