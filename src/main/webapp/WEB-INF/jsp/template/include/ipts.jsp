<%@ page language="java" pageEncoding="UTF-8"%><div class="modal fade" id="ipts_dialog" data-backdrop="static">
	<div class="modal-dialog">
		<div class="modal-content">
			<form name="iptsForm" class="form-horizontal" data-ng-submit="tc.saveItem('ipts')">
				<fieldset>
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title" data-ng-if="!tc.addFlag.ipts">编辑表单项</h4>
						<h4 class="modal-title" data-ng-if="tc.addFlag.ipts">新增表单项</h4>
					</div>
					<div class="modal-body">
						<div class="form-group">
							<label class="col-xs-2 control-label">类型</label>
							<div class="col-xs-10">
								<select class="form-control" name="ipts_type" data-ng-model="tc.ipts.type" data-ng-options="key as val for (key, val) in tc.types.input" required></select>
							</div>
						</div>
						<div class="form-group">
							<label class="col-xs-2 control-label">名称</label>
							<div class="col-xs-10">
								<input type="text" class="form-control" name="ipts_name" placeholder="name" data-ng-model="tc.ipts.name" maxlength="80" required>
							</div>
						</div>
						<div class="form-group">
							<label class="col-xs-2 control-label">样式</label>
							<div class="col-xs-10">
								<input type="text" class="form-control" name="ipts_clas" placeholder="class" data-ng-model="tc.ipts.clas" maxlength="80" required>
							</div>
						</div>
						<div class="form-group">
							<label class="col-xs-2 control-label">占位符</label>
							<div class="col-xs-10">
								<input type="text" class="form-control" name="ipts_placeholder" placeholder="placeholder" data-ng-model="tc.ipts.placeholder" maxlength="80">
							</div>
						</div>
						<div class="form-group">
							<label class="col-xs-2 control-label">禁用条件</label>
							<div class="col-xs-10">
								<input type="text" class="form-control" name="ipts_disabled" placeholder="ng-disabled" data-ng-model="tc.ipts.disabled" maxlength="80">
							</div>
						</div>
						<div class="form-group">
							<label class="col-xs-2 control-label">必填条件</label>
							<div class="col-xs-10">
								<input type="text" class="form-control" name="ipts_required" placeholder="ng-required" data-ng-model="tc.ipts.required" maxlength="80">
							</div>
						</div>
						<div class="form-group">
							<label class="col-xs-2 control-label">只读条件</label>
							<div class="col-xs-10">
								<input type="text" class="form-control" name="ipts_readonly" placeholder="ng-readonly" data-ng-model="tc.ipts.readonly" maxlength="80">
							</div>
						</div>
						<div class="form-group">
							<label class="col-xs-2 control-label">提示标题</label>
							<div class="col-xs-10">
								<input type="text" class="form-control" name="ipts_title" placeholder="title" data-ng-model="tc.ipts.title" maxlength="80">
							</div>
						</div>
						<div class="form-group">
							<label class="col-xs-2 control-label">属性</label>
							<ul class="col-xs-10">
								<li data-ng-repeat="attr in tc.ipts.attrs">
									<button class="btn btn-sm btn-default code" type="button" data-ng-click="tc.editItem('attrs', tc.ipts, $index)">{{attr.name}}="{{attr.value}}"</button>
								</li>
							</ul>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-warning" data-ng-click="tc.addItem('attrs', tc.ipts, null)">添加属性</button>
						<button type="submit" class="btn btn-primary" data-ng-disabled="iptsForm.$invalid">保存</button>
					</div>
				</fieldset>
			</form>
		</div>
	</div>
</div>