<%@ page language="java" pageEncoding="UTF-8"%><div class="col-xs-12">
	<div data-ng-if="module.table" class="panel panel-info">
		<div class="panel-heading">
			<button type="button" class="close" data-ng-click="tc.remove(module, 'table')">&times;</button>
			<span>普通表格</span>
		</div>
		<div class="panel-body">
			<div class="row">
				<div class="col-xs-12 col-sm-6">
					<div class="form-group">
						<label for="" class="col-xs-3 control-label">表格ID</label>
						<div class="col-xs-9">
							<input type="text" class="form-control" name="table_name" data-ng-model="module.table.name" placeholder="例如：queryTable" maxlength="80">
						</div>
					</div>
				</div>
				<div class="col-xs-12 col-sm-6">
					<div class="form-group">
						<label for="" class="col-xs-3 control-label">表格样式</label>
						<div class="col-xs-9">
							<input type="text" class="form-control" name="table_clas" data-ng-model="module.table.clas" placeholder="例如：queryTable" maxlength="80">
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>