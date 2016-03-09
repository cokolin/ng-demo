<%@ page language="java" pageEncoding="UTF-8"%><div class="modal fade" id="theads_dialog" data-backdrop="static">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<form name="theadsForm" class="form-horizontal" data-ng-submit="tc.saveItem('theads')">
				<fieldset>
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title" data-ng-if="!tc.addFlag.theads">编辑表格头</h4>
						<h4 class="modal-title" data-ng-if="tc.addFlag.theads">新增表格头</h4>
					</div>
					<div class="modal-body">
						<div class="form-group">
							<label class="col-xs-2 control-label">序号</label>
							<div class="col-xs-10">
								<input type="number" class="form-control" name="theads_index" placeholder="序号" data-ng-model="tc.thIndex" min="0" data-ng-disabled="!tc.addFlag.theads" required>
							</div>
						</div>
						<div class="form-group">
							<label class="col-xs-2 control-label">类型</label>
							<div class="col-xs-10">
								<select class="form-control" name="theads_type" data-ng-model="tc.theads.type" data-ng-options="key as val for (key, val) in tc.types.thead" required></select>
							</div>
						</div>
						<div class="form-group">
							<label class="col-xs-2 control-label">名称</label>
							<div class="col-xs-10">
								<input type="text" class="form-control" name="theads_name" placeholder="名称" data-ng-model="tc.theads.name" maxlength="80" required>
							</div>
						</div>
						<div class="form-group">
							<label class="col-xs-2 control-label">样式</label>
							<div class="col-xs-10">
								<input type="text" class="form-control" name="theads_clas" placeholder="样式，例如：btn-primary" data-ng-model="tc.theads.clas" maxlength="80">
							</div>
						</div>
						<div class="form-group">
							<label class="col-xs-2 control-label">按钮</label>
							<div class="col-xs-8">
								<ul class="list-inline">
									<li>{{tc.types.button[tc.theads.btn.type]}}</li>
									<li>{{tc.theads.btn.name}}</li>
									<li>{{tc.theads.btn.clas}}</li>
									<li data-ng-repeat="attr in tc.theads.btn.attrs">
										<button class="btn btn-xs btn-default code" type="button" data-ng-click="tc.editItem('attrs', tc.theads.btn, $index)">{{attr.name}}="{{attr.value}}"</button>
									</li>
								</ul>
							</div>
							<div class="col-xs-2">
								<button type="button" class="btn btn-sm btn-danger" data-ng-click="tc.delTheadButton()" data-ng-disabled="!tc.theads.btn">删除</button>
								<button type="button" class="btn btn-sm btn-danger" data-ng-click="tc.editTheadButton()" data-ng-disabled="!tc.theads.btn">编辑</button>
							</div>
						</div>
						<div class="form-group">
							<label class="col-xs-2 control-label">属性</label>
							<ul class="col-xs-10">
								<li data-ng-repeat="attr in tc.theads.attrs">
									<button class="btn btn-sm btn-default code" type="button" data-ng-click="tc.editItem('attrs', tc.theads, $index)">{{attr.name}}="{{attr.value}}"</button>
								</li>
							</ul>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-warning" data-ng-click="tc.addTheadButton()" data-ng-disabled="tc.theads.btn || tc.theads.type!='BUTTON'">添加按钮</button>
						<button type="button" class="btn btn-warning" data-ng-click="tc.addItem('attrs', tc.theads, null)">添加属性</button>
						<button type="submit" class="btn btn-primary" data-ng-disabled="tc.disTheadButton() || theadsForm.$invalid">保存</button>
					</div>
				</fieldset>
			</form>
		</div>
	</div>
</div>