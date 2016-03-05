<%@ page language="java" pageEncoding="UTF-8"%><div class="col-xs-12">
	<div data-ng-if="module.form" class="panel panel-success">
		<div class="panel-heading">
			<button type="button" class="close" data-ng-click="tc.remove(module, 'form')">&times;</button>
			<span>{{tc.types.form[module.form.type]}}</span>
		</div>
		<div class="panel-body">
			<div class="row">
				<div class="col-xs-12 col-sm-6">
					<div class="form-group">
						<label for="" class="col-xs-3 control-label">表单名称</label>
						<div class="col-xs-9">
							<input type="text" class="form-control" name="form_name" data-ng-model="module.form.name" placeholder="例如：queryForm" maxlength="80" required>
						</div>
					</div>
				</div>
				<div class="col-xs-12 col-sm-6">
					<div class="form-group">
						<label for="" class="col-xs-3 control-label">表单提交</label>
						<div class="col-xs-9">
							<input type="text" class="form-control" name="form_submit" data-ng-model="module.form.submit" placeholder="例如：vm.doSubmit()" maxlength="80" required>
						</div>
					</div>
				</div>
				<div class="col-xs-12 col-sm-6">
					<div class="form-group">
						<label for="" class="col-xs-3 control-label">表单样式</label>
						<div class="col-xs-9">
							<input type="text" class="form-control" name="form_clas" data-ng-model="module.form.clas" placeholder="例如：text-right" maxlength="80">
						</div>
					</div>
				</div>
				<div class="col-xs-12 col-sm-6">
					<div class="form-group">
						<label for="" class="col-xs-3 control-label">表单禁用</label>
						<div class="col-xs-9">
							<input type="text" class="form-control" name="form_disabled" data-ng-model="module.form.disabled" placeholder="例如：vm.disForm" maxlength="80">
						</div>
					</div>
				</div>
				<div class="col-xs-12 col-sm-6">
					<div class="form-group">
						<ul class="list-inline col-xs-12">
							<li>
								<div class="btn-group" role="group">
									<button type="button" class="btn btn-warning dropdown-toggle" data-toggle="dropdown">
										添加表单项 <span class="caret"></span>
									</button>
									<ul class="dropdown-menu">
										<li data-ng-repeat="(key, val) in tc.types.input"><a href="#" data-ng-click="tc.addInput(module.form, key, val)">{{val}}</a></li>
									</ul>
								</div>
							</li>
							<li>
								<div class="btn-group" role="group">
									<button type="button" class="btn btn-warning dropdown-toggle" data-toggle="dropdown">
										添加按钮项 <span class="caret"></span>
									</button>
									<ul class="dropdown-menu">
										<li data-ng-repeat="(key, val) in tc.types.button"><a href="#" data-ng-click="tc.addButton(module.form, key, val)">{{val}}</a></li>
									</ul>
								</div>
							</li>
							<li>
								<button type="button" class="btn btn-warning" data-ng-click="tc.addAttr(module.form)">添加属性</button>
							</li>
						</ul>
					</div>
				</div>
				<div class="col-xs-12 col-sm-6">
					<div class="form-group">
						<ul class="list-inline text-right col-xs-12">
							<li data-ng-repeat="attr in module.form.attrs">
								<button class="btn btn-sm btn-default code" type="button" data-ng-click="tc.editAttr(module.form, $index)">{{attr.name}}="{{attr.value}}"</button>
							</li>
						</ul>
					</div>
				</div>
				<div class="col-xs-12">
					<div class="form-group">
						<label for="" class="col-xs-1 control-label">表单项</label>
						<ul class="col-xs-11">
							<li data-ng-repeat="ipt in module.form.ipts">
								{{tc.types.input[ipt.type]}}, {{ipt.name}}, {{ipt.clas}}<span data-ng-repeat="attr in ipt.attrs">, {{attr.name}}="{{attr.value}}"</span>
							</li>
						</ul>
					</div>
				</div>
				<div class="col-xs-12">
					<div class="form-group">
						<label for="" class="col-xs-1 control-label">按钮项</label>
						<ul class="col-xs-11">
							<li data-ng-repeat="btn in module.form.btns">
								{{tc.types.button[btn.type]}}, {{btn.name}}, {{btn.clas}}, {{btn.icon}}<span data-ng-repeat="attr in btn.attrs">, {{attr.name}}="{{attr.value}}"</span>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>