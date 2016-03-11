<%@ page language="java" pageEncoding="UTF-8"%><div class="col-xs-12">
	<div data-ng-if="module.form" class="panel panel-success">
		<div class="panel-heading">
			<button type="button" class="close" data-ng-click="tc.delItem(module, 'form')">&times;</button>
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
						<label for="" class="col-xs-3 control-label">提交方式</label>
						<div class="col-xs-9">
							<input type="text" class="form-control" name="form_method" data-ng-model="module.form.method" placeholder="例如：get 或 post" maxlength="10">
						</div>
					</div>
				</div>
				<div class="col-xs-12 col-sm-6">
					<div class="form-group">
						<label for="" class="col-xs-3 control-label">提交地址</label>
						<div class="col-xs-9">
							<input type="text" class="form-control" name="form_url" data-ng-model="module.form.url" placeholder="例如：/module/query" maxlength="200" required>
						</div>
					</div>
				</div>
				<div class="col-xs-12 col-sm-6">
					<div class="form-group">
						<label for="" class="col-xs-3 control-label">第二地址</label>
						<div class="col-xs-9">
							<input type="text" class="form-control" name="form_ext_url" data-ng-model="module.form.extUrl" placeholder="例如：/module/export" maxlength="200">
						</div>
					</div>
				</div>
				<div class="col-xs-12 col-sm-6">
					<div class="form-group">
						<label for="" class="col-xs-3 control-label">提交事件</label>
						<div class="col-xs-9">
							<input type="text" class="form-control" name="form_submit" data-ng-model="module.form.submit" placeholder="例如：vm.doSubmit()" maxlength="80" required>
						</div>
					</div>
				</div>
				<div class="col-xs-12 col-sm-6">
					<div class="form-group">
						<label for="" class="col-xs-3 control-label">样式类名</label>
						<div class="col-xs-9">
							<input type="text" class="form-control" name="form_clas" data-ng-model="module.form.clas" placeholder="例如：text-right" maxlength="80">
						</div>
					</div>
				</div>
				<div class="col-xs-12 col-sm-6">
					<div class="form-group">
						<label for="" class="col-xs-3 control-label">禁用条件</label>
						<div class="col-xs-9">
							<input type="text" class="form-control" name="form_disabled" data-ng-model="module.form.disabled" placeholder="例如：vm.disForm" maxlength="80">
						</div>
					</div>
				</div>
				<div class="col-xs-12 col-sm-6">
					<div class="form-group">
						<label for="" class="col-xs-3 control-label">禁用条件</label>
						<div class="col-xs-9">
							<input type="text" class="form-control" name="form_btnColClas" data-ng-model="module.form.btnColClas" placeholder="例如：col-xs-12" maxlength="80">
						</div>
					</div>
				</div>
				<div class="col-xs-12 col-sm-6">
					<div class="form-group">
						<label for="" class="col-xs-3 control-label">表单项目</label>
						<ul class="list-inline col-xs-9">
							<li>
								<button type="button" class="btn btn-warning" data-ng-click="tc.addItem('cols', module.form, null)">添加表单栏</button>
							</li>
							<li>
								<div class="btn-group" role="group">
									<button type="button" class="btn btn-warning dropdown-toggle" data-toggle="dropdown">
										添加按钮项 <span class="caret"></span>
									</button>
									<ul class="dropdown-menu">
										<li data-ng-repeat="(key, val) in tc.types.button"><a href="javascript:" data-ng-click="tc.addItem('btns', module.form, key)">{{val}}</a></li>
									</ul>
								</div>
							</li>
							<li>
								<button type="button" class="btn btn-warning" data-ng-click="tc.addItem('attrs', module.form, null)">添加属性</button>
							</li>
						</ul>
					</div>
				</div>
				<div class="col-xs-6">
					<div class="form-group">
						<ul class="list-inline col-xs-12 text-right">
							<li data-ng-repeat="attr in module.form.attrs">
								<button class="btn btn-sm btn-default code" type="button" data-ng-click="tc.editItem('attrs', module.form, $index)">{{attr.name}}="{{attr.value}}"</button>
							</li>
						</ul>
					</div>
				</div>
				<div class="col-xs-12">
					<table class="table table-striped table-condensed">
						<thead>
							<tr>
								<th>表单栏</th>
								<th>标签</th>
								<th>表单项（类型，名称，占位符）</th>
								<th>操作</th>
							</tr>
						</thead>
						<tbody>
							<tr data-ng-repeat="col in module.form.cols">
								<td>{{$index + 1}}</td>
								<td>{{col.label}}</td>
								<td>
									<ul style="margin-bottom: 0;">
										<li data-ng-repeat="ipt in col.ipts">
											<ul class="list-inline">
												<li>{{tc.types.input[ipt.type]}}</li>
												<li>{{ipt.name}}</li>
												<li>{{ipt.placeholder}}</li>
												<li><button type="button" class="btn btn-xs btn-primary" data-ng-click="tc.editItem('ipts', col, $index)">编辑项目</button></li>
												<li><button type="button" class="btn btn-xs btn-danger" data-ng-click="tc.delItem(col.ipts, $index)">删除项目</button></li>
											</ul>
										</li>
									</ul>
								</td>
								<td><button type="button" class="btn btn-xs btn-primary" data-ng-click="tc.editItem('cols', module.form, $index)">编辑栏位</button>
									<button type="button" class="btn btn-xs btn-danger" data-ng-click="tc.delItem(module.form.cols, $index)">删除栏位</button></td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="col-xs-12">
					<div class="form-group"></div>
				</div>
				<div class="col-xs-12">
					<table class="table table-striped table-condensed">
						<thead>
							<tr>
								<th>按钮项</th>
								<th>类型</th>
								<th>名称</th>
								<th>样式</th>
								<th>图标</th>
								<th>属性</th>
								<th>操作</th>
							</tr>
						</thead>
						<tbody>
							<tr data-ng-repeat="btn in module.form.btns">
								<td>{{$index + 1}}</td>
								<td>{{tc.types.button[btn.type]}}</td>
								<td>{{btn.name}}</td>
								<td>{{btn.clas}}</td>
								<td><span class="{{btn.icon}}"></span></td>
								<td>
									<ul class="list-inline">
										<li data-ng-repeat="attr in btn.attrs">
											<button class="btn btn-xs btn-default code" type="button" data-ng-click="tc.editItem('attrs', btn, $index)">{{attr.name}}="{{attr.value}}"</button>
										</li>
									</ul>
								</td>
								<td><button type="button" class="btn btn-xs btn-primary" data-ng-click="tc.editItem('btns', module.form, $index)">编辑</button>
									<button type="button" class="btn btn-xs btn-danger" data-ng-click="tc.delItem(module.form.btns, $index)">删除</button></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>