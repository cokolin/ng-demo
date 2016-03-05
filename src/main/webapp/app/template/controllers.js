!function(){
	'use strict';

	function AttrVo(){
		this.name = null;
		this.value = null;
	}

	function EleVo(){
		this.name = null;
		this.clas = null;
		this.attrs = null;
	}

	EleVo.prototype.addAttr = function(name, value){
		var attr = new AttrVo();
		attr.name = name;
		attr.value = value;
		return this.attrs.push(attr);
	}

	function ButtonVo(){
		this.type = null;
		this.icon = null;
		this.attrs = [];
	}
	ButtonVo.prototype = new EleVo();

	function FormVo(){
		this.type = null;
		this.submit = null;
		this.disabled = null;
		this.ipts = [];
		this.btns = [];
		this.attrs = [];
	}
	FormVo.prototype = new EleVo();

	FormVo.prototype.addIpt = function(ipt){
		return this.ipts.push(ipt);
	};

	FormVo.prototype.addBtn = function(btn){
		return this.btns.push(btn);
	};

	function InputVo(){
		this.type = null;
		this.attrs = [];
	}
	InputVo.prototype = new EleVo();

	function ModuleVo(){
		this.type = null;
		this.form = null;
		this.table = null;
		this.btnColClas = null;
		this.pagination = false;
		this.attrs = [];
	}
	ModuleVo.prototype = new EleVo();

	function TableVo(){
		this.theads = [];
		this.tbodys = [];
		this.attrs = [];
	}
	TableVo.prototype = new EleVo();

	TableVo.prototype.addThead = function(thead){
		return this.theads.push(thead);
	}

	TableVo.prototype.addTbody = function(tbody){
		return this.tbodys.push(tbody);
	}

	function TBodyVo(){
		this.type = null;
		this.ipt = null;
		this.btns = [];
		this.attrs = [];
	}
	TBodyVo.prototype = new EleVo();

	TBodyVo.prototype.addBtn = function(btn){
		return this.btns.push(btn);
	};

	function THeadVo(){
		this.type = null;
		this.btn = null;
		this.attrs = [];
	}
	THeadVo.prototype = new EleVo();

	function TemplateVo(){
		this.code = null;
		this.page = null;
		this.title = null;
		this.script = null;
		this.controller = null;
		this.modules = [];
	}

	TemplateVo.prototype.addModule = function(module){
		return this.modules.push(module);
	};

	fcsApp.controller('TemplateController', ['$http', '$scope', function($http, $scope){
		var tc = this;

		tc.load = function(){
			$http.get("/template/pages").success(function(resp){
				tc.pages = resp;
			});
			$http.get("/template/types").success(function(resp){
				tc.types = resp;
			});
			tc.tmplRest();
		};

		tc.tmplRest = function(){
			tc.tmpl = null;
		};

		tc.tmplBase = function(){
			tc.tmpl = new TemplateVo();
		};

		function queryForm(type){
			var form = new FormVo();
			form.type = type;
			form.name = "queryForm";
			form.submit = "vm.doSubmit()";
			form.addAttr("autocomplete", "off");
			{
				var btn = new ButtonVo();
				btn.type = "SUBMIT";
				btn.clas = "btn-primary";
				btn.name = "查询";
				btn.icon = "glyphicon glyphicon-search";
				btn.addAttr("ng-disabled", "queryNow || queryForm.$invalid");
				form.addBtn(btn);
			}
			return form;
		}

		function normalModule(type){
			var module = new ModuleVo();
			module.type = type;
			module.btnColClas = "col-xs-12";
			module.pagination = true;
			module.form = queryForm("HORIZONTAL");
			{
				var table = new TableVo();
				table.clas = "table-striped table-bordered table-hover table-condensed";
				{
					var thead = new THeadVo();
					thead.type = "TEXT";
					thead.name = "#";
					table.addThead(thead);
				}
				{
					var tbody = new TBodyVo();
					tbody.type = "TEXT";
					tbody.name = "{{$index+1}}";
					table.addTbody(tbody);
				}
				module.table = table;
			}
			return module;
		}

		function dialogModule(type){
			var module = new ModuleVo();
			module.type = type;
			module.btnColClas = "";
			module.pagination = false;
			module.form = queryForm("HORIZONTAL");
			console.log(module);
			return module;
		}

		tc.tmplQuery = function(){
			var tmpl = new TemplateVo();
			tmpl.page = "query";
			tmpl.title = "简单查询页面";
			tmpl.script = "controllers";
			tmpl.controller = "QueryController as vm";
			tmpl.addModule(normalModule("NORMAL"));
			tc.tmpl = tmpl;
		};

		tc.tmplQueryExport = function(){
			tc.tmplQuery();
			var tmpl = tc.tmpl;
			var form = tmpl.modules[0].form;
			{
				var btn = new ButtonVo();
				btn.type = "BUTTON";
				btn.clas = "btn-success";
				btn.name = "导出";
				btn.icon = "glyphicon glyphicon-export";
				btn.addAttr("ng-click", "qc.doExport()");
				btn.addAttr("ng-disabled", "exportNow || queryNow || queryForm.$invalid");
				form.addBtn(btn);
			}
		};

		function moduleBuilder(type){
			if ("NORMAL" == type){
				return normalModule(type);
			} else{
				return dialogModule(type);
			}
		}
		
		tc.addModule = function(tmpl, key, val){
			if (tmpl.modules){
				for (var i = 0; i < tmpl.modules.length; i++){
					if (tmpl.modules[i].type == "NORMAL") return window.alert("已经存在普通表单组件！");
				}
				tmpl.modules.push(moduleBuilder(key));
			} else{
				tmpl.modules = [moduleBuilder(key)];
			}
		};

		tc.addForm = function(module, key, val){
			console.log(module, key, val);
			module.form = queryForm(key);
		};

		tc.addTable = function(module){

		};

		tc.addButton = function(module, key, val){

		};

		tc.saveTmpl = function(){
			console.log(tc.tmpl);
		};

		tc.remove = function(data, key){
			console.log(data, key);
			if (angular.isArray(data)){
				data.splice(key, 1);
			} else{
				data[key] = null;
			}
		}

		var attrSrc, attrIdx;
		tc.addAttr = function(src){
			if (!src.attrs){
				src.attrs = [];
			}
			attrSrc = src.attrs;
			tc.attr = new AttrVo();
			tc.attrAddFlag = true;
			$("#attr_dialog").modal("show");
		};

		tc.editAttr = function(src, idx){
			console.log(src, idx);
			attrIdx = idx;
			attrSrc = src.attrs;
			tc.attr = angular.copy(attrSrc[idx]);
			tc.attrAddFlag = false;
			$("#attr_dialog").modal("show");
		};

		tc.saveAttr = function(){
			if (tc.attrAddFlag){
				attrSrc.push(tc.attr);
			} else{
				attrSrc[attrIdx] = tc.attr;
			}
			tc.attr = null;
			$("#attr_dialog").modal("hide");
		};

		tc.delAttr = function(){
			if (!window.confirm("确定删除该属性？")) return;
			attrSrc.splice(attrIdx, 1);
			tc.attr = null;
			$("#attr_dialog").modal("hide");
		};

		tc.load();

		console.log($scope);
	}]);
}();