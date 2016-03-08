<%@ page language="java" pageEncoding="UTF-8"%><div class="modal fade" id="input_dialog" data-backdrop="static">
	<div class="modal-dialog">
		<div class="modal-content">
			<form name="inputForm" class="form-horizontal" data-ng-submit="tc.saveInput()">
				<fieldset>
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title" data-ng-if="!tc.addIptFlag">编辑表单栏</h4>
						<h4 class="modal-title" data-ng-if="tc.addIptFlag">新增表单栏</h4>
					</div>
					<div class="modal-body">
						<div class="form-group">
							<label class="col-xs-2 control-label">类型</label>
							<div class="col-xs-10">
								<select class="form-control" name="ipt_type" data-ng-model="tc.ipt.type" data-ng-options="key as val for (key, val) in tc.types.button" required></select>
							</div>
						</div>
						<div class="form-group">
							<label class="col-xs-2 control-label">名称</label>
							<div class="col-xs-10">
								<input type="text" class="form-control" name="ipt_name" placeholder="名称" data-ng-model="tc.ipt.name" maxlength="80" required>
							</div>
						</div>
						<div class="form-group">
							<label class="col-xs-2 control-label">样式</label>
							<div class="col-xs-10">
								<input type="text" class="form-control" name="ipt_clas" placeholder="样式" data-ng-model="tc.ipt.clas" maxlength="80" required>
							</div>
						</div>
						<div class="form-group">
							<label class="col-xs-2 control-label">属性</label>
							<ul class="col-xs-10">
								<li data-ng-repeat="attr in tc.ipt.attrs">
									<button class="btn btn-sm btn-default code" type="button" data-ng-click="tc.editAttr(tc.ipt, $index)">{{attr.name}}="{{attr.value}}"</button>
								</li>
							</ul>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-warning" data-ng-click="tc.addAttr(tc.ipt)">添加属性</button>
						<button type="submit" class="btn btn-primary" data-ng-disabled="iptForm.$invalid">保存</button>
					</div>
				</fieldset>
			</form>
		</div>
	</div>
</div>