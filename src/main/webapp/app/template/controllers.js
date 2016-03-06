!function(){
	'use strict';

	var ICONS = ["glyphicon glyphicon-asterisk", "glyphicon glyphicon-plus", "glyphicon glyphicon-euro", "glyphicon glyphicon-eur", "glyphicon glyphicon-minus", "glyphicon glyphicon-cloud", "glyphicon glyphicon-envelope", "glyphicon glyphicon-pencil", "glyphicon glyphicon-glass", "glyphicon glyphicon-music", "glyphicon glyphicon-search", "glyphicon glyphicon-heart", "glyphicon glyphicon-star", "glyphicon glyphicon-star-empty", "glyphicon glyphicon-user", "glyphicon glyphicon-film", "glyphicon glyphicon-th-large", "glyphicon glyphicon-th", "glyphicon glyphicon-th-list", "glyphicon glyphicon-ok", "glyphicon glyphicon-remove", "glyphicon glyphicon-zoom-in", "glyphicon glyphicon-zoom-out", "glyphicon glyphicon-off", "glyphicon glyphicon-signal", "glyphicon glyphicon-cog",
	    "glyphicon glyphicon-trash", "glyphicon glyphicon-home", "glyphicon glyphicon-file", "glyphicon glyphicon-time", "glyphicon glyphicon-road", "glyphicon glyphicon-download-alt", "glyphicon glyphicon-download", "glyphicon glyphicon-upload", "glyphicon glyphicon-inbox", "glyphicon glyphicon-play-circle", "glyphicon glyphicon-repeat", "glyphicon glyphicon-refresh", "glyphicon glyphicon-list-alt", "glyphicon glyphicon-lock", "glyphicon glyphicon-flag", "glyphicon glyphicon-headphones", "glyphicon glyphicon-volume-off", "glyphicon glyphicon-volume-down", "glyphicon glyphicon-volume-up", "glyphicon glyphicon-qrcode", "glyphicon glyphicon-barcode", "glyphicon glyphicon-tag", "glyphicon glyphicon-tags", "glyphicon glyphicon-book", "glyphicon glyphicon-bookmark", "glyphicon glyphicon-print",
	    "glyphicon glyphicon-camera", "glyphicon glyphicon-font", "glyphicon glyphicon-bold", "glyphicon glyphicon-italic", "glyphicon glyphicon-text-height", "glyphicon glyphicon-text-width", "glyphicon glyphicon-align-left", "glyphicon glyphicon-align-center", "glyphicon glyphicon-align-right", "glyphicon glyphicon-align-justify", "glyphicon glyphicon-list", "glyphicon glyphicon-indent-left", "glyphicon glyphicon-indent-right", "glyphicon glyphicon-facetime-video", "glyphicon glyphicon-picture", "glyphicon glyphicon-map-marker", "glyphicon glyphicon-adjust", "glyphicon glyphicon-tint", "glyphicon glyphicon-edit", "glyphicon glyphicon-share", "glyphicon glyphicon-check", "glyphicon glyphicon-move", "glyphicon glyphicon-step-backward", "glyphicon glyphicon-fast-backward",
	    "glyphicon glyphicon-backward", "glyphicon glyphicon-play", "glyphicon glyphicon-pause", "glyphicon glyphicon-stop", "glyphicon glyphicon-forward", "glyphicon glyphicon-fast-forward", "glyphicon glyphicon-step-forward", "glyphicon glyphicon-eject", "glyphicon glyphicon-chevron-left", "glyphicon glyphicon-chevron-right", "glyphicon glyphicon-plus-sign", "glyphicon glyphicon-minus-sign", "glyphicon glyphicon-remove-sign", "glyphicon glyphicon-ok-sign", "glyphicon glyphicon-question-sign", "glyphicon glyphicon-info-sign", "glyphicon glyphicon-screenshot", "glyphicon glyphicon-remove-circle", "glyphicon glyphicon-ok-circle", "glyphicon glyphicon-ban-circle", "glyphicon glyphicon-arrow-left", "glyphicon glyphicon-arrow-right", "glyphicon glyphicon-arrow-up",
	    "glyphicon glyphicon-arrow-down", "glyphicon glyphicon-share-alt", "glyphicon glyphicon-resize-full", "glyphicon glyphicon-resize-small", "glyphicon glyphicon-exclamation-sign", "glyphicon glyphicon-gift", "glyphicon glyphicon-leaf", "glyphicon glyphicon-fire", "glyphicon glyphicon-eye-open", "glyphicon glyphicon-eye-close", "glyphicon glyphicon-warning-sign", "glyphicon glyphicon-plane", "glyphicon glyphicon-calendar", "glyphicon glyphicon-random", "glyphicon glyphicon-comment", "glyphicon glyphicon-magnet", "glyphicon glyphicon-chevron-up", "glyphicon glyphicon-chevron-down", "glyphicon glyphicon-retweet", "glyphicon glyphicon-shopping-cart", "glyphicon glyphicon-folder-close", "glyphicon glyphicon-folder-open", "glyphicon glyphicon-resize-vertical",
	    "glyphicon glyphicon-resize-horizontal", "glyphicon glyphicon-hdd", "glyphicon glyphicon-bullhorn", "glyphicon glyphicon-bell", "glyphicon glyphicon-certificate", "glyphicon glyphicon-thumbs-up", "glyphicon glyphicon-thumbs-down", "glyphicon glyphicon-hand-right", "glyphicon glyphicon-hand-left", "glyphicon glyphicon-hand-up", "glyphicon glyphicon-hand-down", "glyphicon glyphicon-circle-arrow-right", "glyphicon glyphicon-circle-arrow-left", "glyphicon glyphicon-circle-arrow-up", "glyphicon glyphicon-circle-arrow-down", "glyphicon glyphicon-globe", "glyphicon glyphicon-wrench", "glyphicon glyphicon-tasks", "glyphicon glyphicon-filter", "glyphicon glyphicon-briefcase", "glyphicon glyphicon-fullscreen", "glyphicon glyphicon-dashboard", "glyphicon glyphicon-paperclip",
	    "glyphicon glyphicon-heart-empty", "glyphicon glyphicon-link", "glyphicon glyphicon-phone", "glyphicon glyphicon-pushpin", "glyphicon glyphicon-usd", "glyphicon glyphicon-gbp", "glyphicon glyphicon-sort", "glyphicon glyphicon-sort-by-alphabet", "glyphicon glyphicon-sort-by-alphabet-alt", "glyphicon glyphicon-sort-by-order", "glyphicon glyphicon-sort-by-order-alt", "glyphicon glyphicon-sort-by-attributes", "glyphicon glyphicon-sort-by-attributes-alt", "glyphicon glyphicon-unchecked", "glyphicon glyphicon-expand", "glyphicon glyphicon-collapse-down", "glyphicon glyphicon-collapse-up", "glyphicon glyphicon-log-in", "glyphicon glyphicon-flash", "glyphicon glyphicon-log-out", "glyphicon glyphicon-new-window", "glyphicon glyphicon-record", "glyphicon glyphicon-save",
	    "glyphicon glyphicon-open", "glyphicon glyphicon-saved", "glyphicon glyphicon-import", "glyphicon glyphicon-export", "glyphicon glyphicon-send", "glyphicon glyphicon-floppy-disk", "glyphicon glyphicon-floppy-saved", "glyphicon glyphicon-floppy-remove", "glyphicon glyphicon-floppy-save", "glyphicon glyphicon-floppy-open", "glyphicon glyphicon-credit-card", "glyphicon glyphicon-transfer", "glyphicon glyphicon-cutlery", "glyphicon glyphicon-header", "glyphicon glyphicon-compressed", "glyphicon glyphicon-earphone", "glyphicon glyphicon-phone-alt", "glyphicon glyphicon-tower", "glyphicon glyphicon-stats", "glyphicon glyphicon-sd-video", "glyphicon glyphicon-hd-video", "glyphicon glyphicon-subtitles", "glyphicon glyphicon-sound-stereo", "glyphicon glyphicon-sound-dolby",
	    "glyphicon glyphicon-sound-5-1", "glyphicon glyphicon-sound-6-1", "glyphicon glyphicon-sound-7-1", "glyphicon glyphicon-copyright-mark", "glyphicon glyphicon-registration-mark", "glyphicon glyphicon-cloud-download", "glyphicon glyphicon-cloud-upload", "glyphicon glyphicon-tree-conifer", "glyphicon glyphicon-tree-deciduous", "glyphicon glyphicon-cd", "glyphicon glyphicon-save-file", "glyphicon glyphicon-open-file", "glyphicon glyphicon-level-up", "glyphicon glyphicon-copy", "glyphicon glyphicon-paste", "glyphicon glyphicon-alert", "glyphicon glyphicon-equalizer", "glyphicon glyphicon-king", "glyphicon glyphicon-queen", "glyphicon glyphicon-pawn", "glyphicon glyphicon-bishop", "glyphicon glyphicon-knight", "glyphicon glyphicon-baby-formula", "glyphicon glyphicon-tent",
	    "glyphicon glyphicon-blackboard", "glyphicon glyphicon-bed", "glyphicon glyphicon-apple", "glyphicon glyphicon-erase", "glyphicon glyphicon-hourglass", "glyphicon glyphicon-lamp", "glyphicon glyphicon-duplicate", "glyphicon glyphicon-piggy-bank", "glyphicon glyphicon-scissors", "glyphicon glyphicon-bitcoin", "glyphicon glyphicon-btc", "glyphicon glyphicon-xbt", "glyphicon glyphicon-yen", "glyphicon glyphicon-jpy", "glyphicon glyphicon-ruble", "glyphicon glyphicon-rub", "glyphicon glyphicon-scale", "glyphicon glyphicon-ice-lolly", "glyphicon glyphicon-ice-lolly-tasted", "glyphicon glyphicon-education", "glyphicon glyphicon-option-horizontal", "glyphicon glyphicon-option-vertical", "glyphicon glyphicon-menu-hamburger", "glyphicon glyphicon-modal-window", "glyphicon glyphicon-oil",
	    "glyphicon glyphicon-grain", "glyphicon glyphicon-sunglasses", "glyphicon glyphicon-text-size", "glyphicon glyphicon-text-color", "glyphicon glyphicon-text-background", "glyphicon glyphicon-object-align-top", "glyphicon glyphicon-object-align-bottom", "glyphicon glyphicon-object-align-horizontal", "glyphicon glyphicon-object-align-left", "glyphicon glyphicon-object-align-vertical", "glyphicon glyphicon-object-align-right", "glyphicon glyphicon-triangle-right", "glyphicon glyphicon-triangle-left", "glyphicon glyphicon-triangle-bottom", "glyphicon glyphicon-triangle-top", "glyphicon glyphicon-console", "glyphicon glyphicon-superscript", "glyphicon glyphicon-subscript", "glyphicon glyphicon-menu-left", "glyphicon glyphicon-menu-right", "glyphicon glyphicon-menu-down",
	    "glyphicon glyphicon-menu-up"];

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
		this.url = null;
		this.expUrl = null;
		this.method = null;
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
		return this.btns.unshift(btn);
	};

	function InputVo(){
		this.type = null;
		this.attrs = [];
	}
	InputVo.prototype = new EleVo();

	function ModuleVo(){
		this.type = null;
		this.form = null;
		this.size = null;
		this.table = null;
		this.btnColClas = null;
		this.pagination = false;
		this.attrs = [];
	}
	ModuleVo.prototype = new EleVo();

	function TableVo(){
		this.theads = [];
		this.tbodies = [];
		this.attrs = [];
	}
	TableVo.prototype = new EleVo();

	TableVo.prototype.addThead = function(thead){
		return this.theads.push(thead);
	}

	TableVo.prototype.addTbody = function(tbody){
		return this.tbodies.push(tbody);
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

	var queryForm = function(type){
		var form = new FormVo();
		form.type = type;
		form.method = "get";
		form.name = "queryForm";
		form.submit = "vm.doSubmit()";
		form.addAttr("autocomplete", "off");
		{
			var btn = new ButtonVo();
			btn.type = "SUBMIT";
			btn.clas = "btn-primary";
			btn.name = "查询";
			btn.icon = "glyphicon glyphicon-search";
			btn.addAttr("ng-disabled", "vm.queryNow || queryForm.$invalid");
			form.addBtn(btn);
		}
		return form;
	}

	var normalModule = function(type){
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

	var dialogModule = function(type){
		var module = new ModuleVo();
		module.type = type;
		module.btnColClas = "";
		module.pagination = false;
		module.form = queryForm("HORIZONTAL");
		console.log(module);
		return module;
	}

	var moduleBuilder = function(type){
		if ("NORMAL" == type){
			return normalModule(type);
		} else{
			return dialogModule(type);
		}
	}

	function TemplateController($http, $scope){
		var tc = this;

		tc.attr = null;// 属性项编辑的对象
		tc.addAttrFlag = false;// 是否新增属性标志
		var attrSrc, attrIdx;// 属性相关

		tc.ipt = null;// 表单项编辑的对象
		tc.addIptFlag = false;// 是否新增表单项的标志
		var iptSrc, iptIdx;// 表单项相关

		tc.btn = null;// 按钮项编辑的对象
		tc.addBtnFlag = false;// 是否新增按钮项的标志
		var btnSrc, btnIdx, btnSaveCall;// 按钮项相关

		tc.th = null;// 表格头编辑的对象
		tc.thIndex = 0;// 表格头序号
		tc.addThFlag = false;// 是否新增表格头的标志
		var thSrc, thIdx;// 表格头相关

		tc.td = null;// 表格项编辑的对象
		tc.tdIndex = 0;// 表格项序号
		tc.addTdFlag = false;// 是否新增表格项的标志
		var tdSrc, tdIdx;// 表格项相关

		tc.tmplRest = function(){
			tc.tmpl = null;
		};

		tc.tmplBase = function(){
			tc.tmpl = new TemplateVo();
		};

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
				btn.addAttr("ng-click", "vm.doExport()");
				btn.addAttr("ng-disabled", "vm.exportNow || vm.queryNow || queryForm.$invalid");
				form.addBtn(btn);
			}
		};

		tc.addModule = function(tmpl, key, val){
			if (tmpl.modules){
				if (key == "NORMAL"){
					for (var i = 0; i < tmpl.modules.length; i++){
						if (tmpl.modules[i].type == "NORMAL") return window.alert("已经存在“普通表单组件”！");
					}
				}
				tmpl.modules.push(moduleBuilder(key));
			} else{
				tmpl.modules = [moduleBuilder(key)];
			}
		};

		tc.addForm = function(module, key, val){
			module.form = queryForm(key);
		};

		tc.addButton = function(src, key, val){
			if (!src.btns){
				src.btns = [];
			}
			btnSrc = src.btns;
			btnIdx = btnSrc.length;
			tc.btn = new ButtonVo();
			tc.btn.type = key;
			tc.addBtnFlag = true;
			$("#button_dialog").modal("show");
		};

		tc.editButton = function(src, idx){
			console.log(src, idx);
			btnSrc = src;
			btnIdx = idx;
			tc.btn = angular.copy(src[idx]);
			tc.addBtnFlag = false;
			$("#button_dialog").modal("show");
		};

		tc.saveButton = function(){
			console.log(tc.btn);
			if (tc.addBtnFlag){
				btnSrc.unshift(tc.btn);
			} else{
				btnSrc[btnIdx] = tc.btn;
			}
			tc.btn = null;
			if (btnSaveCall) btnSaveCall();
			$("#button_dialog").modal("hide");
		};

		tc.addTable = function(module){
			module.table = new TableVo();
		};

		tc.addThead = function(src, key, val){
			if (!src.theads){
				src.theads = [];
			}
			thSrc = src.theads;
			thIdx = thSrc.length;
			tc.th = new THeadVo();
			tc.th.type = key;
			tc.addThFlag = true;
			tc.thIndex = thIdx + 1;
			$("#thead_dialog").modal("show");
		};

		tc.editThead = function(src, idx){
			thSrc = src;
			thIdx = idx;
			tc.th = angular.copy(src[idx]);
			tc.addThFlag = false;
			tc.thIndex = thIdx + 1;
			$("#thead_dialog").modal("show");
		};

		tc.saveThead = function(){
			console.log(tc.th);
			if (tc.addThFlag){
				var len = thSrc.length;
				var idx = tc.thIndex - 1;
				if (len == 0 || idx < 0 || idx >= thSrc.length){
					thSrc.push(tc.th);
				} else{
					var suf = thSrc.slice(idx);
					thSrc.splice(idx, len - idx);
					thSrc.push(tc.th);
					angular.forEach(suf, function(it){
						thSrc.push(it);
					});
				}
			} else{
				thSrc[thIdx] = tc.th;
			}
			tc.th = null;
			$("#thead_dialog").modal("hide");
		};

		tc.addTheadButton = function(){
			btnSrc = [];
			btnIdx = 0;
			tc.btn = new ButtonVo();
			tc.btn.type = "BUTTON";
			tc.addBtnFlag = true;
			btnSaveCall = function(){
				tc.th.btn = btnSrc[0];
				btnSaveCall = null;
			};
			$("#button_dialog").modal("show");
		};

		tc.editTheadButton = function(){
			btnSrc = [tc.th.btn];
			btnIdx = 0;
			tc.btn = angular.copy(tc.th.btn);
			tc.addBtnFlag = false;
			btnSaveCall = function(){
				tc.th.btn = btnSrc[0];
				btnSaveCall = null;
			};
			$("#button_dialog").modal("show");
		};

		tc.delTheadButton = function(){
			tc.th.btn = null;
		};

		tc.addTbody = function(src, key, val){
			if (!src.theads){
				src.tbodies = [];
			}
			tdSrc = src.tbodies;
			tdIdx = tdSrc.length;
			tc.td = new TBodyVo();
			tc.td.type = key;
			tc.addTdFlag = true;
			tc.tdIndex = tdIdx + 1;
			$("#tbody_dialog").modal("show");
		};

		tc.editTbody = function(src, idx){
			tdSrc = src;
			tdIdx = idx;
			tc.td = angular.copy(src[idx]);
			tc.addTdFlag = false;
			tc.tdIndex = tdIdx + 1;
			$("#tbody_dialog").modal("show");
		};

		tc.saveTbody = function(){
			console.log(tc.th);
			if (tc.addTdFlag){
				if (tdSrc.length == 0 || tc.tdIndex > tdSrc.length){
					tdSrc.push(tc.td);
				} else{
					var idx = tc.tdIndex - 1;
					var suf = tdSrc.slice(idx);
					tdSrc.splice(idx, tdSrc.length - idx);
					tdSrc.push(tc.td);
					tdSrc.concat(suf);
				}

			} else{
				tdSrc[tdIdx] = tc.td;
			}
			tc.td = null;
			$("#tbody_dialog").modal("hide");
		};

		tc.delItem = function(src, idx){
			if (!window.confirm("确定删除该项？")) return;
			src.splice(idx, 1);
		};

		tc.remove = function(data, key){
			if (angular.isArray(data)){
				data.splice(key, 1);
			} else{
				data[key] = null;
			}
		};

		tc.addAttr = function(src){
			if (!src.attrs){
				src.attrs = [];
			}
			attrSrc = src.attrs;
			tc.attr = new AttrVo();
			tc.addAttrFlag = true;
			$("#attr_dialog").modal("show");
		};

		tc.editAttr = function(src, idx){
			console.log(src, idx);
			attrIdx = idx;
			attrSrc = src.attrs;
			tc.attr = angular.copy(attrSrc[idx]);
			tc.addAttrFlag = false;
			$("#attr_dialog").modal("show");
		};

		tc.saveAttr = function(){
			if (tc.addAttrFlag){
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

		tc.saveTmpl = function(){
			console.log(tc.tmpl);
		};

		tc.load = function(){
			$http.get("/template/pages").success(function(resp){
				tc.pages = resp;
			});
			$http.get("/template/types").success(function(resp){
				tc.types = resp;
			});
			tc.tmplRest();
		};

		tc.load();

		console.log($scope);
	}

	fcsApp.controller('TemplateController', ['$http', '$scope', TemplateController]);
}();