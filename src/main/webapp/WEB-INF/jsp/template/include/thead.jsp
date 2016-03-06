<%@ page language="java" pageEncoding="UTF-8"%><div class="modal fade" id="thead_dialog" data-backdrop="static">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<form name="thForm" class="form-horizontal" data-ng-submit="tc.saveThead()">
				<fieldset>
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title" data-ng-if="!tc.addThFlag">编辑表格头</h4>
						<h4 class="modal-title" data-ng-if="tc.addThFlag">新增表格头</h4>
					</div>
					<div class="modal-body">
						<div class="form-group">
							<label class="col-xs-2 control-label">序号</label>
							<div class="col-xs-10">
								<input type="number" class="form-control" name="th_index" placeholder="序号" data-ng-model="tc.thIndex" min="0" data-ng-disabled="!tc.addThFlag" required>
							</div>
						</div>
						<div class="form-group">
							<label class="col-xs-2 control-label">类型</label>
							<div class="col-xs-10">
								<select class="form-control" name="th_type" data-ng-model="tc.th.type" data-ng-options="key as val for (key, val) in tc.types.thead" required></select>
							</div>
						</div>
						<div class="form-group">
							<label class="col-xs-2 control-label">名称</label>
							<div class="col-xs-10">
								<input type="text" class="form-control" name="th_name" placeholder="名称" data-ng-model="tc.th.name" maxlength="80" required>
							</div>
						</div>
						<div class="form-group">
							<label class="col-xs-2 control-label">样式</label>
							<div class="col-xs-10">
								<input type="text" class="form-control" name="th_clas" placeholder="样式，例如：btn-primary" data-ng-model="tc.th.clas" maxlength="80">
							</div>
						</div>
						<div class="form-group">
							<label class="col-xs-2 control-label">按钮</label>
							<div class="col-xs-8">
								<ul class="list-inline">
									<li>{{tc.types.button[th.btn.type]}}</li>
									<li>{{tc.th.btn.name}}</li>
									<li>{{tc.th.btn.clas}}</li>
									<li data-ng-repeat="attr in tc.th.btn.attrs">
										<button class="btn btn-xs btn-default code" type="button" data-ng-click="tc.editAttr(tc.th.btn, $index)">{{attr.name}}="{{attr.value}}"</button>
									</li>
								</ul>
							</div>
							<div class="col-xs-2">
								<button type="button" class="btn btn-sm btn-danger" data-ng-click="tc.delTheadButton()" data-ng-disabled="!tc.th.btn">删除</button>
								<button type="button" class="btn btn-sm btn-danger" data-ng-click="tc.editTheadButton()" data-ng-disabled="!tc.th.btn">编辑</button>
							</div>
						</div>
						<div class="form-group">
							<label class="col-xs-2 control-label">属性</label>
							<ul class="col-xs-10">
								<li data-ng-repeat="attr in tc.btn.attrs">
									<button class="btn btn-sm btn-default code" type="button" data-ng-click="tc.editAttr(tc.th, $index)">{{attr.name}}="{{attr.value}}"</button>
								</li>
							</ul>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-warning" data-ng-click="tc.addTheadButton()" data-ng-disabled="tc.th.btn || tc.th.type!='BUTTON'">添加按钮</button>
						<button type="button" class="btn btn-warning" data-ng-click="tc.addAttr(tc.th)">添加属性</button>
						<button type="submit" class="btn btn-primary" data-ng-disabled="(tc.th.type=='BUTTON' && !tc.th.btn) || thForm.$invalid">保存</button>
					</div>
				</fieldset>
			</form>
		</div>
	</div>
</div>