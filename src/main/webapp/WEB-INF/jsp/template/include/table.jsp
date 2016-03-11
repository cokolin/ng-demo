<%@ page language="java" pageEncoding="UTF-8"%><div class="col-xs-12">
	<div data-ng-if="module.table" class="panel panel-info">
		<div class="panel-heading">
			<button type="button" class="close" data-ng-click="tc.delItem(module, 'table')">&times;</button>
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
				<div class="col-xs-12 col-sm-6">
					<div class="form-group">
						<label for="" class="col-xs-3 control-label">表格循环</label>
						<div class="col-xs-9">
							<input type="text" class="form-control" name="table_repeat" data-ng-model="module.table.repeat" placeholder="ng-repeat" maxlength="80">
						</div>
					</div>
				</div>
				<div class="col-xs-12 col-sm-6">
					<div class="form-group">
						<label class="col-xs-3 control-label">表格内容</label>
						<div class="col-xs-4">
							<div class="btn-group" role="group">
								<button type="button" class="btn btn-warning dropdown-toggle" data-toggle="dropdown">
									添加表格头 <span class="caret"></span>
								</button>
								<ul class="dropdown-menu">
									<li data-ng-repeat="(key, val) in tc.types.thead"><a href="javascript:" data-ng-click="tc.addItem('theads', module.table, key)">{{val}}</a></li>
								</ul>
							</div>
						</div>
						<div class="col-xs-4">
							<div class="btn-group" role="group">
								<button type="button" class="btn btn-warning dropdown-toggle" data-toggle="dropdown">
									添加表格项 <span class="caret"></span>
								</button>
								<ul class="dropdown-menu">
									<li data-ng-repeat="(key, val) in tc.types.tbody"><a href="javascript:" data-ng-click="tc.addItem('tbodies', module.table, key)">{{val}}</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xs-12 col-sm-6">
					<table class="table table-striped table-condensed">
						<thead>
							<tr>
								<th>表格头</th>
								<th>类型</th>
								<th>名称</th>
								<th>样式</th>
								<th>操作</th>
							</tr>
						</thead>
						<tbody data-ng-if="module.table.theads">
							<tr data-ng-repeat="th in module.table.theads track by $index">
								<td>{{$index + 1}}</td>
								<td>{{tc.types.thead[th.type]}}</td>
								<td>{{th.name}}</td>
								<td>{{th.clas}}</td>
								<td>
									<button type="button" class="btn btn-xs btn-primary" data-ng-click="tc.editItem('theads', module.table, $index)">编辑</button>
									<button type="button" class="btn btn-xs btn-danger" data-ng-click="tc.delItem(module.table.theads, $index)">删除</button>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="col-xs-12 col-sm-6">
					<table class="table table-striped table-condensed">
						<thead>
							<tr>
								<th>表格项</th>
								<th>类型</th>
								<th>名称</th>
								<th>样式</th>
								<th>操作</th>
							</tr>
						</thead>
						<tbody data-ng-if="module.table.tbodies">
							<tr data-ng-repeat="td in module.table.tbodies track by $index">
								<td>{{$index + 1}}</td>
								<td>{{tc.types.tbody[td.type]}}</td>
								<td>{{td.name}}</td>
								<td>{{td.clas}}</td>
								<td>
									<button type="button" class="btn btn-xs btn-primary" data-ng-click="tc.editItem('tbodies', module.table, $index)">编辑</button>
									<button type="button" class="btn btn-xs btn-danger" data-ng-click="tc.delItem(module.table.tbodies, $index)">删除</button>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>