<%@ page language="java" pageEncoding="UTF-8"%><div class="modal fade" id="tbodies_dialog" data-backdrop="static">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<form name="tbodiesForm" class="form-horizontal" data-ng-submit="tc.saveItem('tbodies')">
				<fieldset>
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title" data-ng-if="!tc.addFlag.tboties">编辑表格头</h4>
						<h4 class="modal-title" data-ng-if="tc.addFlag.tboties">新增表格头</h4>
					</div>
					<div class="modal-body">
						<div class="form-group">
							<label for="tbodies_index" class="col-xs-2 control-label">序号</label>
							<div class="col-xs-10">
								<input type="number" class="form-control" name="tbodies_index" placeholder="序号" data-ng-model="tc.tdIndex" min="0" max="999" data-ng-disabled="!tc.addFlag.tbodies" required>
							</div>
						</div>
						<div class="form-group">
							<label for="tbodies_type" class="col-xs-2 control-label">类型</label>
							<div class="col-xs-10">
								<select class="form-control" name="tbodies_type" data-ng-model="tc.tbodies.type" data-ng-options="key as val for (key, val) in tc.types.tbody" required></select>
							</div>
						</div>
						<div class="form-group">
							<label for="tbodies_name" class="col-xs-2 control-label">名称</label>
							<div class="col-xs-10">
								<input type="text" class="form-control" name="tbodies_name" placeholder="名称" data-ng-model="tc.tbodies.name" maxlength="80" required>
							</div>
						</div>
						<div class="form-group">
							<label for="tbodies_clas" class="col-xs-2 control-label">样式</label>
							<div class="col-xs-10">
								<input type="text" class="form-control" name="tbodies_clas" placeholder="样式，例如：btn-primary" data-ng-model="tc.tbodies.clas" maxlength="80">
							</div>
						</div>
						<div class="form-group">
							<label for="tbodies_ipt" class="col-xs-2 control-label">表单项</label>
							<div class="col-xs-10">
								
							</div>
						</div>
						<div class="form-group">
							<label for="tbodies_btns" class="col-xs-2 control-label">按钮组</label>
							<div class="col-xs-10">
								
							</div>
						</div>
						<div class="form-group">
							<label for="tbodies_attrs" class="col-xs-2 control-label">属性</label>
							<ul class="col-xs-10">
								<li data-ng-repeat="attr in tc.tbodies.attrs">
									<button class="btn btn-sm btn-default code" type="button" data-ng-click="tc.editItem('attrs', tc.tbodies, $index)">{{attr.name}}="{{attr.value}}"</button>
								</li>
							</ul>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-warning" data-ng-click="tc.addItem('attrs', tc.tbodies, null)">添加属性</button>
						<button type="submit" class="btn btn-primary" data-ng-disabled="tbodiesForm.$invalid">保存</button>
					</div>
				</fieldset>
			</form>
		</div>
	</div>
</div>