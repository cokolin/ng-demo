<%@ page language="java" pageEncoding="UTF-8"%><div class="modal fade" id="attrs_dialog" data-backdrop="static">
	<div class="modal-dialog">
		<div class="modal-content">
			<form name="attrForm" class="form-horizontal" data-ng-submit="tc.saveItem('attrs')">
				<fieldset>
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title" data-ng-if="!tc.addFlag.attrs">编辑属性</h4>
						<h4 class="modal-title" data-ng-if="tc.addFlag.attrs">新增属性</h4>
					</div>
					<div class="modal-body">
						<div class="form-group">
							<label for="attrs_name" class="col-xs-2 control-label">属性名</label>
							<div class="col-xs-10">
								<input type="text" class="form-control" name="attrs_name" placeholder="属性名" data-ng-model="tc.attrs.name" maxlength="80" required>
							</div>
						</div>
						<div class="form-group">
							<label for="attrs_value" class="col-xs-2 control-label">属性值</label>
							<div class="col-xs-10">
								<input type="text" class="form-control" name="attrs_value" placeholder="属性值" data-ng-model="tc.attrs.value" maxlength="80" required>
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-danger" data-ng-if="!tc.addFlag.attrs" data-ng-click="tc.delItem(tc.dat.attrs.src, tc.dat.attrs.idx, tc.dat.attrs.callback.del)">删除该属性</button>
						<button type="submit" class="btn btn-primary" data-ng-disabled="attrForm.$invalid">保存</button>
					</div>
				</fieldset>
			</form>
		</div>
	</div>
</div>