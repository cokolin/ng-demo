<%@ page language="java" pageEncoding="UTF-8"%><div class="col-xs-12">
	<div data-ng-repeat="module in tc.tmpl.modules" class="panel panel-primary">
		<div class="panel-heading">
			<button type="button" class="close" data-ng-click="tc.delItem(tc.tmpl.modules, $index)">&times;</button>
			<span>{{$index + 1}}.{{tc.types.module[module.type]}}</span>
		</div>
		<div class="panel-body" style="padding-bottom: 0;">
			<div class="row">
				<div class="col-xs-12 col-sm-6">
					<div class="form-group">
						<label for="" class="col-xs-3 control-label">组件ID</label>
						<div class="col-xs-9">
							<input type="text" class="form-control" name="module_name" data-ng-model="module.name" placeholder="组件ID" maxlength="80">
						</div>
					</div>
				</div>
				<div class="col-xs-12 col-sm-6">
					<div class="form-group">
						<label for="" class="col-xs-3 control-label">组件样式</label>
						<div class="col-xs-9">
							<input type="text" class="form-control" name="module_clas" data-ng-model="module.clas" placeholder="组件的样式" maxlength="80">
						</div>
					</div>
				</div>
				<div class="col-xs-12 col-sm-6">
					<div class="form-group">
						<label for="" class="col-xs-3 control-label">按钮行样式</label>
						<div class="col-xs-9">
							<input type="text" class="form-control" name="btnColClas" data-ng-model="module.btnColClas" placeholder="例如: col-xs-12 col-sm-6" maxlength="80" data-ng-required="module.type == 'NORMAL'">
						</div>
					</div>
				</div>
				<div class="col-xs-12 col-sm-6">
					<div class="form-group">
						<label for="" class="col-xs-3 control-label">组件规格</label>
						<div class="col-xs-9">
							<input type="text" class="form-control" name="module_size" data-ng-model="module.size" placeholder="组件的规格，例如：modal-lg" maxlength="80">
						</div>
					</div>
				</div>
				<div class="col-xs-12 col-sm-6">
					<div class="form-group">
						<label for="" class="col-xs-3 control-label">组件项目</label>
						<ul class="list-inline col-xs-9">
							<li>
								<div class="btn-group" role="group">
									<button type="button" data-ng-disabled="module.form" class="btn btn-warning dropdown-toggle" data-toggle="dropdown">
										添加表单 <span class="caret"></span>
									</button>
									<ul class="dropdown-menu">
										<li data-ng-repeat="(type, text) in tc.types.form"><a href="javascript:" data-ng-click="tc.addForm(module, type, text)">{{text}}</a></li>
									</ul>
								</div>
							</li>
							<li>
								<button type="button" class="btn btn-warning" data-ng-disabled="module.table" data-ng-click="tc.addTable(module)">添加表格</button>
							</li>
							<li>
								<button type="button" class="btn btn-warning" data-ng-click="tc.addItem('attrs', module, null)">添加属性</button>
							</li>
							<li>
								<div class="checkbox">
									<label><input type="checkbox" data-ng-model="module.pagination"> 包含分页组件</label>
								</div>
							</li>
						</ul>
					</div>
				</div>
				<div class="col-xs-12 col-sm-6">
					<div class="form-group">
						<ul class="list-inline text-right col-xs-12">
							<li data-ng-repeat="attr in module.attrs">
								<button class="btn btn-sm btn-default code" type="button" data-ng-click="tc.editItem('attrs', module, $index)">{{attr.name}}="{{attr.value}}"</button>
							</li>
						</ul>
					</div>
				</div>
				<%@include file="form.jsp"%>
				<%@include file="table.jsp"%>
			</div>
		</div>
	</div>
</div>