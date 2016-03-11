<%@ page language="java" pageEncoding="UTF-8"%><div class="modal fade" id="cols_dialog" data-backdrop="static">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<form name="colsForm" class="form-horizontal" data-ng-submit="tc.saveItem('cols')">
				<fieldset>
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title" data-ng-if="!tc.addFlag.cols">编辑表单栏</h4>
						<h4 class="modal-title" data-ng-if="tc.addFlag.cols">新增表单栏</h4>
					</div>
					<div class="modal-body">
						<div class="form-group">
							<label class="col-xs-2 control-label">样式</label>
							<div class="col-xs-10">
								<input type="text" class="form-control" name="cols_clas" placeholder="样式，例如：col-xs-12 col-sm-6 col-md-4" data-ng-model="tc.cols.clas" maxlength="80" required>
							</div>
						</div>
						<div class="form-group">
							<label class="col-xs-2 control-label">标签</label>
							<div class="col-xs-10">
								<input type="text" class="form-control" name="cols_label" placeholder="标签" data-ng-model="tc.cols.label" maxlength="80">
							</div>
						</div>
						<div class="form-group">
							<label class="col-xs-2 control-label">标签样式</label>
							<div class="col-xs-10">
								<input type="text" class="form-control" name="cols_labClas" placeholder="标签样式，例如：col-xs-3" data-ng-model="tc.cols.labClas" maxlength="80" data-ng-required="tc.cols.label != null && tc.cols.label.length > 0">
							</div>
						</div>
						<div class="form-group">
							<label class="col-xs-2 control-label">输入框样式</label>
							<div class="col-xs-10">
								<input type="text" class="form-control" name="cols_iptClas" placeholder="标签样式，例如：col-xs-3" data-ng-model="tc.cols.iptClas" maxlength="80" required>
							</div>
						</div>
						<table class="table table-striped table-condensed">
							<thead>
								<tr>
									<th>表单项</th>
									<th>类型</th>
									<th>名称</th>
									<th>样式</th>
									<th>占位符</th>
									<th>禁用条件</th>
									<th>必填条件</th>
									<th>只读条件</th>
									<th>提示标题</th>
									<th>属性列</th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody>
								<tr data-ng-repeat="ipt in tc.cols.ipts">
									<td>{{$index + 1}}</td>
									<td>{{tc.types.input[ipt.type]}}</td>
									<td>{{ipt.name}}</td>
									<td>{{ipt.clas}}</td>
									<td>{{ipt.placeholder}}</td>
									<td>{{ipt.disabled}}</td>
									<td>{{ipt.required}}</td>
									<td>{{ipt.readonly}}</td>
									<td>{{ipt.title}}</td>
									<td>
										<ul class="list-inline">
											<li data-ng-repeat="attr in ipt.attrs">
												<button class="btn btn-xs btn-default code" type="button" data-ng-click="tc.editItem('attrs', ipt, $index)">{{attr.name}}="{{attr.value}}"</button>
											</li>
										</ul>
									</td>
									<td>
										<button type="button" class="btn btn-xs btn-primary" data-ng-click="tc.editItem('ipts', tc.cols, $index)">编辑</button>
										<button type="button" class="btn btn-xs btn-danger" data-ng-click="tc.delItem(tc.cols.ipts, $index)">删除</button>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="modal-footer">
						<div class="btn-group" role="group">
							<button type="button" class="btn btn-warning dropdown-toggle" data-toggle="dropdown">
								添加表单项 <span class="caret"></span>
							</button>
							<ul class="dropdown-menu">
								<li data-ng-repeat="(key, val) in tc.types.input"><a href="#" data-ng-click="tc.addItem('ipts', tc.cols, key)">{{val}}</a></li>
							</ul>
						</div>
						<button type="submit" class="btn btn-primary" data-ng-disabled="colsForm.$invalid">保存</button>
					</div>
				</fieldset>
			</form>
		</div>
	</div>
</div>