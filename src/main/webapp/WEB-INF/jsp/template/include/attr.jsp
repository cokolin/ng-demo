<%@ page language="java" pageEncoding="UTF-8"%><div class="modal fade" id="attr_dialog" data-backdrop="static">
	<div class="modal-dialog">
		<div class="modal-content">
			<form name="attrForm" class="form-horizontal" data-ng-submit="tc.saveAttr()">
				<fieldset>
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title" data-ng-if="!tc.attrAddFlag">编辑属性</h4>
						<h4 class="modal-title" data-ng-if="tc.attrAddFlag">新增属性</h4>
					</div>
					<div class="modal-body">
						<div class="form-group">
							<label class="col-xs-2 control-label">属性名</label>
							<div class="col-xs-10">
								<input type="text" class="form-control" name="name" placeholder="属性名" data-ng-model="tc.attr.name" maxlength="80" required>
							</div>
						</div>
						<div class="form-group">
							<label class="col-xs-2 control-label">属性值</label>
							<div class="col-xs-10">
								<input type="text" class="form-control" name="value" placeholder="属性值" data-ng-model="tc.attr.value" maxlength="80" required>
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-danger" data-ng-if="!tc.attrAddFlag" data-ng-click="tc.delAttr()">删除该属性</button>
						<button type="submit" class="btn btn-primary" data-ng-disabled="attrForm.$invalid">保存</button>
					</div>
				</fieldset>
			</form>
		</div>
	</div>
</div>