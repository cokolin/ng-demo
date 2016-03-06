<%@ page language="java" pageEncoding="UTF-8"%><div class="modal fade" id="tbody_dialog" data-backdrop="static">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<form name="tdForm" class="form-horizontal" data-ng-submit="tc.saveTbody()">
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
								<input type="number" class="form-control" name="td_index" placeholder="序号" data-ng-model="tc.tdIndex" min="0" data-ng-disabled="!tc.addTdFlag" required>
							</div>
						</div>
						<div class="form-group">
							<label class="col-xs-2 control-label">类型</label>
							<div class="col-xs-10">
								<select class="form-control" name="th_type" data-ng-model="tc.td.type" data-ng-options="key as val for (key, val) in tc.types.tbody" required></select>
							</div>
						</div>
						<div class="form-group">
							<label class="col-xs-2 control-label">名称</label>
							<div class="col-xs-10">
								<input type="text" class="form-control" name="th_name" placeholder="名称" data-ng-model="tc.td.name" maxlength="80" required>
							</div>
						</div>
						<div class="form-group">
							<label class="col-xs-2 control-label">样式</label>
							<div class="col-xs-10">
								<input type="text" class="form-control" name="th_clas" placeholder="样式，例如：btn-primary" data-ng-model="tc.td.clas" maxlength="80">
							</div>
						</div>
						<div class="form-group">
							<label class="col-xs-2 control-label">按钮</label>
							<div class="col-xs-10">
								
							</div>
						</div>
						<div class="form-group">
							<label class="col-xs-2 control-label">属性</label>
							<ul class="col-xs-10">
								<li data-ng-repeat="attr in tc.btn.attrs">
									<button class="btn btn-sm btn-default code" type="button" data-ng-click="tc.editAttr(tc.td, $index)">{{attr.name}}="{{attr.value}}"</button>
								</li>
							</ul>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-warning" data-ng-click="tc.addAttr(tc.td)">添加属性</button>
						<button type="submit" class="btn btn-primary" data-ng-disabled="tdForm.$invalid">保存</button>
					</div>
				</fieldset>
			</form>
		</div>
	</div>
</div>