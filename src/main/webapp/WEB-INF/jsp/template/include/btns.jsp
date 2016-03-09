<%@ page language="java" pageEncoding="UTF-8"%><div class="modal fade" id="btns_dialog" data-backdrop="static">
	<div class="modal-dialog">
		<div class="modal-content">
			<form name="btnForm" class="form-horizontal" data-ng-submit="tc.saveItem('btns')">
				<fieldset>
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title" data-ng-if="!tc.addFlag.btns">编辑按钮</h4>
						<h4 class="modal-title" data-ng-if="tc.addFlag.btns">新增按钮</h4>
					</div>
					<div class="modal-body">
						<div class="form-group">
							<label class="col-xs-2 control-label">类型</label>
							<div class="col-xs-10">
								<select class="form-control" name="btns_type" data-ng-model="tc.btns.type" data-ng-options="key as val for (key, val) in tc.types.button" required></select>
							</div>
						</div>
						<div class="form-group">
							<label class="col-xs-2 control-label">名称</label>
							<div class="col-xs-10">
								<input type="text" class="form-control" name="btns_name" placeholder="名称" data-ng-model="tc.btns.name" maxlength="80" required>
							</div>
						</div>
						<div class="form-group">
							<label class="col-xs-2 control-label">样式</label>
							<div class="col-xs-10">
								<input type="text" class="form-control" name="btns_clas" placeholder="样式，例如：btn-primary" data-ng-model="tc.btns.clas" maxlength="80" required>
							</div>
						</div>
						<div class="form-group">
							<label class="col-xs-2 control-label">图标</label>
							<div class="col-xs-10">
								<input type="text" class="form-control" name="btns_icon" placeholder="图标" data-ng-model="tc.btns.icon" maxlength="80">
							</div>
						</div>
						<div class="form-group">
							<label class="col-xs-2 control-label">属性</label>
							<ul class="col-xs-10">
								<li data-ng-repeat="attr in tc.btns.attrs">
									<button class="btn btn-sm btn-default code" type="button" data-ng-click="tc.editItem('attrs', tc.btns, $index)">{{attr.name}}="{{attr.value}}"</button>
								</li>
							</ul>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-warning" data-ng-click="tc.addItem('attrs', tc.btns, null)">添加属性</button>
						<button type="submit" class="btn btn-primary" data-ng-disabled="btnForm.$invalid">保存</button>
					</div>
				</fieldset>
			</form>
		</div>
	</div>
</div>