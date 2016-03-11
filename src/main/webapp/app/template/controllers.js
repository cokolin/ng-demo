!function(){
	'use strict';

	var ICONS = ["glyphicon glyphicon-asterisk", "glyphicon glyphicon-plus", "glyphicon glyphicon-euro", "glyphicon glyphicon-eur", "glyphicon glyphicon-minus", "glyphicon glyphicon-cloud", "glyphicon glyphicon-envelope", "glyphicon glyphicon-pencil", "glyphicon glyphicon-glass", "glyphicon glyphicon-music", "glyphicon glyphicon-search", "glyphicon glyphicon-heart", "glyphicon glyphicon-star", "glyphicon glyphicon-star-empty", "glyphicon glyphicon-user", "glyphicon glyphicon-film", "glyphicon glyphicon-th-large", "glyphicon glyphicon-th", "glyphicon glyphicon-th-list", "glyphicon glyphicon-ok", "glyphicon glyphicon-remove", "glyphicon glyphicon-zoom-in", "glyphicon glyphicon-zoom-out", "glyphicon glyphicon-off", "glyphicon glyphicon-signal", "glyphicon glyphicon-cog", "glyphicon glyphicon-trash", "glyphicon glyphicon-home", "glyphicon glyphicon-file", "glyphicon glyphicon-time", "glyphicon glyphicon-road", "glyphicon glyphicon-download-alt",
	    "glyphicon glyphicon-download", "glyphicon glyphicon-upload", "glyphicon glyphicon-inbox", "glyphicon glyphicon-play-circle", "glyphicon glyphicon-repeat", "glyphicon glyphicon-refresh", "glyphicon glyphicon-list-alt", "glyphicon glyphicon-lock", "glyphicon glyphicon-flag", "glyphicon glyphicon-headphones", "glyphicon glyphicon-volume-off", "glyphicon glyphicon-volume-down", "glyphicon glyphicon-volume-up", "glyphicon glyphicon-qrcode", "glyphicon glyphicon-barcode", "glyphicon glyphicon-tag", "glyphicon glyphicon-tags", "glyphicon glyphicon-book", "glyphicon glyphicon-bookmark", "glyphicon glyphicon-print", "glyphicon glyphicon-camera", "glyphicon glyphicon-font", "glyphicon glyphicon-bold", "glyphicon glyphicon-italic", "glyphicon glyphicon-text-height", "glyphicon glyphicon-text-width", "glyphicon glyphicon-align-left", "glyphicon glyphicon-align-center", "glyphicon glyphicon-align-right", "glyphicon glyphicon-align-justify",
	    "glyphicon glyphicon-list", "glyphicon glyphicon-indent-left", "glyphicon glyphicon-indent-right", "glyphicon glyphicon-facetime-video", "glyphicon glyphicon-picture", "glyphicon glyphicon-map-marker", "glyphicon glyphicon-adjust", "glyphicon glyphicon-tint", "glyphicon glyphicon-edit", "glyphicon glyphicon-share", "glyphicon glyphicon-check", "glyphicon glyphicon-move", "glyphicon glyphicon-step-backward", "glyphicon glyphicon-fast-backward", "glyphicon glyphicon-backward", "glyphicon glyphicon-play", "glyphicon glyphicon-pause", "glyphicon glyphicon-stop", "glyphicon glyphicon-forward", "glyphicon glyphicon-fast-forward", "glyphicon glyphicon-step-forward", "glyphicon glyphicon-eject", "glyphicon glyphicon-chevron-left", "glyphicon glyphicon-chevron-right", "glyphicon glyphicon-plus-sign", "glyphicon glyphicon-minus-sign", "glyphicon glyphicon-remove-sign", "glyphicon glyphicon-ok-sign", "glyphicon glyphicon-question-sign",
	    "glyphicon glyphicon-info-sign", "glyphicon glyphicon-screenshot", "glyphicon glyphicon-remove-circle", "glyphicon glyphicon-ok-circle", "glyphicon glyphicon-ban-circle", "glyphicon glyphicon-arrow-left", "glyphicon glyphicon-arrow-right", "glyphicon glyphicon-arrow-up", "glyphicon glyphicon-arrow-down", "glyphicon glyphicon-share-alt", "glyphicon glyphicon-resize-full", "glyphicon glyphicon-resize-small", "glyphicon glyphicon-exclamation-sign", "glyphicon glyphicon-gift", "glyphicon glyphicon-leaf", "glyphicon glyphicon-fire", "glyphicon glyphicon-eye-open", "glyphicon glyphicon-eye-close", "glyphicon glyphicon-warning-sign", "glyphicon glyphicon-plane", "glyphicon glyphicon-calendar", "glyphicon glyphicon-random", "glyphicon glyphicon-comment", "glyphicon glyphicon-magnet", "glyphicon glyphicon-chevron-up", "glyphicon glyphicon-chevron-down", "glyphicon glyphicon-retweet", "glyphicon glyphicon-shopping-cart",
	    "glyphicon glyphicon-folder-close", "glyphicon glyphicon-folder-open", "glyphicon glyphicon-resize-vertical", "glyphicon glyphicon-resize-horizontal", "glyphicon glyphicon-hdd", "glyphicon glyphicon-bullhorn", "glyphicon glyphicon-bell", "glyphicon glyphicon-certificate", "glyphicon glyphicon-thumbs-up", "glyphicon glyphicon-thumbs-down", "glyphicon glyphicon-hand-right", "glyphicon glyphicon-hand-left", "glyphicon glyphicon-hand-up", "glyphicon glyphicon-hand-down", "glyphicon glyphicon-circle-arrow-right", "glyphicon glyphicon-circle-arrow-left", "glyphicon glyphicon-circle-arrow-up", "glyphicon glyphicon-circle-arrow-down", "glyphicon glyphicon-globe", "glyphicon glyphicon-wrench", "glyphicon glyphicon-tasks", "glyphicon glyphicon-filter", "glyphicon glyphicon-briefcase", "glyphicon glyphicon-fullscreen", "glyphicon glyphicon-dashboard", "glyphicon glyphicon-paperclip", "glyphicon glyphicon-heart-empty", "glyphicon glyphicon-link",
	    "glyphicon glyphicon-phone", "glyphicon glyphicon-pushpin", "glyphicon glyphicon-usd", "glyphicon glyphicon-gbp", "glyphicon glyphicon-sort", "glyphicon glyphicon-sort-by-alphabet", "glyphicon glyphicon-sort-by-alphabet-alt", "glyphicon glyphicon-sort-by-order", "glyphicon glyphicon-sort-by-order-alt", "glyphicon glyphicon-sort-by-attributes", "glyphicon glyphicon-sort-by-attributes-alt", "glyphicon glyphicon-unchecked", "glyphicon glyphicon-expand", "glyphicon glyphicon-collapse-down", "glyphicon glyphicon-collapse-up", "glyphicon glyphicon-log-in", "glyphicon glyphicon-flash", "glyphicon glyphicon-log-out", "glyphicon glyphicon-new-window", "glyphicon glyphicon-record", "glyphicon glyphicon-save", "glyphicon glyphicon-open", "glyphicon glyphicon-saved", "glyphicon glyphicon-import", "glyphicon glyphicon-export", "glyphicon glyphicon-send", "glyphicon glyphicon-floppy-disk", "glyphicon glyphicon-floppy-saved",
	    "glyphicon glyphicon-floppy-remove", "glyphicon glyphicon-floppy-save", "glyphicon glyphicon-floppy-open", "glyphicon glyphicon-credit-card", "glyphicon glyphicon-transfer", "glyphicon glyphicon-cutlery", "glyphicon glyphicon-header", "glyphicon glyphicon-compressed", "glyphicon glyphicon-earphone", "glyphicon glyphicon-phone-alt", "glyphicon glyphicon-tower", "glyphicon glyphicon-stats", "glyphicon glyphicon-sd-video", "glyphicon glyphicon-hd-video", "glyphicon glyphicon-subtitles", "glyphicon glyphicon-sound-stereo", "glyphicon glyphicon-sound-dolby", "glyphicon glyphicon-sound-5-1", "glyphicon glyphicon-sound-6-1", "glyphicon glyphicon-sound-7-1", "glyphicon glyphicon-copyright-mark", "glyphicon glyphicon-registration-mark", "glyphicon glyphicon-cloud-download", "glyphicon glyphicon-cloud-upload", "glyphicon glyphicon-tree-conifer", "glyphicon glyphicon-tree-deciduous", "glyphicon glyphicon-cd", "glyphicon glyphicon-save-file",
	    "glyphicon glyphicon-open-file", "glyphicon glyphicon-level-up", "glyphicon glyphicon-copy", "glyphicon glyphicon-paste", "glyphicon glyphicon-alert", "glyphicon glyphicon-equalizer", "glyphicon glyphicon-king", "glyphicon glyphicon-queen", "glyphicon glyphicon-pawn", "glyphicon glyphicon-bishop", "glyphicon glyphicon-knight", "glyphicon glyphicon-baby-formula", "glyphicon glyphicon-tent", "glyphicon glyphicon-blackboard", "glyphicon glyphicon-bed", "glyphicon glyphicon-apple", "glyphicon glyphicon-erase", "glyphicon glyphicon-hourglass", "glyphicon glyphicon-lamp", "glyphicon glyphicon-duplicate", "glyphicon glyphicon-piggy-bank", "glyphicon glyphicon-scissors", "glyphicon glyphicon-bitcoin", "glyphicon glyphicon-btc", "glyphicon glyphicon-xbt", "glyphicon glyphicon-yen", "glyphicon glyphicon-jpy", "glyphicon glyphicon-ruble", "glyphicon glyphicon-rub", "glyphicon glyphicon-scale", "glyphicon glyphicon-ice-lolly",
	    "glyphicon glyphicon-ice-lolly-tasted", "glyphicon glyphicon-education", "glyphicon glyphicon-option-horizontal", "glyphicon glyphicon-option-vertical", "glyphicon glyphicon-menu-hamburger", "glyphicon glyphicon-modal-window", "glyphicon glyphicon-oil", "glyphicon glyphicon-grain", "glyphicon glyphicon-sunglasses", "glyphicon glyphicon-text-size", "glyphicon glyphicon-text-color", "glyphicon glyphicon-text-background", "glyphicon glyphicon-object-align-top", "glyphicon glyphicon-object-align-bottom", "glyphicon glyphicon-object-align-horizontal", "glyphicon glyphicon-object-align-left", "glyphicon glyphicon-object-align-vertical", "glyphicon glyphicon-object-align-right", "glyphicon glyphicon-triangle-right", "glyphicon glyphicon-triangle-left", "glyphicon glyphicon-triangle-bottom", "glyphicon glyphicon-triangle-top", "glyphicon glyphicon-console", "glyphicon glyphicon-superscript", "glyphicon glyphicon-subscript",
	    "glyphicon glyphicon-menu-left", "glyphicon glyphicon-menu-right", "glyphicon glyphicon-menu-down", "glyphicon glyphicon-menu-up"];

	function AttrVo(){
		this.name = null;
		this.value = null;
	}
	AttrVo.prototype.init = function(name, value){
		this.name = name;
		this.value = value;
		return this;
	};

	function EleVo(){
		this.name = null;
		this.clas = null;
		this.attrs = null;
	}
	EleVo.prototype.addAttr = function(name, value){
		return this.attrs.push(new AttrVo().init(name, value));
	}

	function ButtonVo(){
		this.type = null;
		this.icon = null;
		this.disabled = null;
		this.click = null;
		this.attrs = [];
	}
	ButtonVo.prototype = new EleVo();
	ButtonVo.prototype.init = function(type){
		this.type = type;
		return this;
	};

	function FormVo(){
		this.url = null;
		this.type = null;
		this.extUrl = null;
		this.method = null;
		this.submit = null;
		this.disabled = null;
		this.btnColClas = null;
		this.cols = [];
		this.btns = [];
		this.attrs = [];
	}
	FormVo.prototype = new EleVo();
	FormVo.prototype.init = function(type){
		this.type = type;
		return this;
	};
	FormVo.prototype.addCol = function(col){
		return this.cols.push(col);
	};
	FormVo.prototype.addBtn = function(btn){
		return this.btns.unshift(btn);
	};

	function InputVo(){
		this.type = null;
		this.placeholder = null;
		this.disabled = null;
		this.required = null;
		this.model = null;
		this.value = null;
		this.title = null;
		this.reserve = null;
		this.attrs = [];
	}
	InputVo.prototype = new EleVo();
	InputVo.prototype.init = function(type){
		this.type = type;
		return this;
	};

	function ColumVo(){
		this.clas = null;
		this.label = null;
		this.labClas = null;
		this.iptClas = null;
		this.ipts = [];
	}
	ColumVo.prototype.init = function(label){
		this.label = label;
		return this;
	};
	ColumVo.prototype.addIpt = function(ipt){
		return this.ipts.push(ipt);
	};

	function ModuleVo(){
		this.type = null;
		this.form = null;
		this.size = null;
		this.table = null;
		this.pagination = false;
		this.attrs = [];
	}
	ModuleVo.prototype = new EleVo();
	ModuleVo.prototype.init = function(type){
		this.type = type;
		return this;
	}

	function TableVo(){
		this.repeat = null;
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
	TBodyVo.prototype.init = function(type){
		this.type = type;
		return this;
	};
	TBodyVo.prototype.addBtn = function(btn){
		return this.btns.push(btn);
	};

	function THeadVo(){
		this.type = null;
		this.btn = null;
		this.attrs = [];
	}
	THeadVo.prototype = new EleVo();
	THeadVo.prototype.init = function(type){
		this.type = type;
		return this;
	};

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
		form.url = "/template/demo-query";
		form.extUrl = "/template/demo-export";
		form.btnColClas = "col-xs-12 col-md-8 text-center";
		form.addAttr("autocomplete", "off");
		{
			let
			col = new ColumVo().init("名称");
			col.clas = "col-xs-12 col-sm-6 col-md-4";
			col.labClas = "col-xs-3";
			col.iptClas = "col-xs-9";
			{
				let
				ipt = new InputVo().init("TEXT");
				ipt.placeholder = "名称";
				ipt.model = "vm.args.name";
				ipt.name = "name";
				col.addIpt(ipt);
			}
			form.addCol(col);
		}
		{
			let
			col = new ColumVo().init("类型");
			col.clas = "col-xs-12 col-sm-6 col-md-4";
			col.labClas = "col-xs-3";
			col.iptClas = "col-xs-9";
			{
				let
				ipt = new InputVo().init("TEXT");
				ipt.placeholder = "类型";
				ipt.model = "vm.args.type";
				ipt.name = "type";
				col.addIpt(ipt);
			}
			form.addCol(col);
		}
		{
			let
			col = new ColumVo().init("状态");
			col.clas = "col-xs-12 col-sm-6 col-md-4";
			col.labClas = "col-xs-3";
			col.iptClas = "col-xs-9";
			{
				let
				ipt = new InputVo().init("TEXT");
				ipt.placeholder = "状态";
				ipt.model = "vm.args.status";
				ipt.name = "status";
				col.addIpt(ipt);
			}
			form.addCol(col);
		}
		{
			let
			col = new ColumVo().init("修改人");
			col.clas = "col-xs-12 col-sm-6 col-md-4";
			col.labClas = "col-xs-3";
			col.iptClas = "col-xs-9";
			{
				let
				ipt = new InputVo().init("TEXT");
				ipt.placeholder = "修改人";
				ipt.model = "vm.args.updateBy";
				ipt.name = "updateBy";
				col.addIpt(ipt);
			}
			form.addCol(col);
		}
		// --------------------------------------------
		{
			let
			btn = new ButtonVo();
			btn.type = "SUBMIT";
			btn.clas = "btn-primary";
			btn.name = "查询";
			btn.icon = ICONS[10];
			btn.addAttr("ng-disabled", "vm.queryNow || queryForm.$invalid");
			form.addBtn(btn);
		}
		{
			let
			btn = new ButtonVo();
			btn.type = "BUTTON";
			btn.clas = "btn-success";
			btn.name = "导出";
			btn.icon = "glyphicon glyphicon-export";
			btn.addAttr("ng-click", "vm.doExport()");
			btn.addAttr("ng-disabled", "vm.exportNow || vm.queryNow || queryForm.$invalid");
			form.addBtn(btn);
		}
		return form;
	}

	var normalModule = function(type){
		var module = new ModuleVo();
		module.type = type;
		module.pagination = true;
		module.form = queryForm("HORIZONTAL");
		{
			let
			table = new TableVo();
			table.name = "query_table";
			table.repeat = "it in vm.queryList";
			table.clas = "table-striped table-bordered table-hover table-condensed";
			{
				let
				thead = new THeadVo().init("TEXT");
				thead.name = "#";
				thead.clas = "text-center";
				table.addThead(thead);
			}
			{
				let
				thead = new THeadVo().init("TEXT");
				thead.name = "主键";
				thead.clas = "text-center";
				table.addThead(thead);
			}
			{
				let
				thead = new THeadVo().init("TEXT");
				thead.name = "名称";
				thead.clas = "text-left";
				table.addThead(thead);
			}
			{
				let
				thead = new THeadVo().init("TEXT");
				thead.name = "备注";
				thead.clas = "text-left";
				table.addThead(thead);
			}
			{
				let
				thead = new THeadVo().init("TEXT");
				thead.name = "类型";
				thead.clas = "text-center";
				table.addThead(thead);
			}
			{
				let
				thead = new THeadVo().init("TEXT");
				thead.name = "状态";
				thead.clas = "text-center";
				table.addThead(thead);
			}
			{
				let
				thead = new THeadVo().init("TEXT");
				thead.name = "单价";
				thead.clas = "text-right";
				table.addThead(thead);
			}
			{
				let
				thead = new THeadVo().init("TEXT");
				thead.name = "数量";
				thead.clas = "text-center";
				table.addThead(thead);
			}
			{
				let
				thead = new THeadVo().init("TEXT");
				thead.name = "折扣";
				thead.clas = "text-right";
				table.addThead(thead);
			}
			{
				let
				thead = new THeadVo().init("TEXT");
				thead.name = "修改人";
				thead.clas = "text-center";
				table.addThead(thead);
			}
			{
				let
				thead = new THeadVo().init("TEXT");
				thead.name = "修改时间";
				thead.clas = "text-center";
				table.addThead(thead);
			}
			{
				let
				thead = new THeadVo().init("TEXT");
				thead.name = "已删除";
				thead.clas = "text-center";
				table.addThead(thead);
			}
			// =======================================
			{
				let
				tbody = new TBodyVo().init("TEXT");
				tbody.name = "{{$index+1}}";
				tbody.clas = "text-center";
				table.addTbody(tbody);
			}
			{
				let
				tbody = new TBodyVo().init("TEXT");
				tbody.name = "{{it.id}}";
				tbody.clas = "text-center";
				table.addTbody(tbody);
			}
			{
				let
				tbody = new TBodyVo().init("TEXT");
				tbody.name = "{{it.name}}";
				tbody.clas = "text-left";
				table.addTbody(tbody);
			}
			{
				let
				tbody = new TBodyVo().init("TEXT");
				tbody.name = "{{it.remark}}";
				tbody.clas = "text-left";
				table.addTbody(tbody);
			}
			{
				let
				tbody = new TBodyVo().init("TEXT");
				tbody.name = "{{it.type}}";
				tbody.clas = "text-center";
				table.addTbody(tbody);
			}
			{
				let
				tbody = new TBodyVo().init("TEXT");
				tbody.name = "{{it.status}}";
				tbody.clas = "text-center";
				table.addTbody(tbody);
			}
			{
				let
				tbody = new TBodyVo().init("TEXT");
				tbody.name = "{{it.price | number:2}}";
				tbody.clas = "text-right";
				table.addTbody(tbody);
			}
			{
				let
				tbody = new TBodyVo().init("TEXT");
				tbody.name = "{{it.quantity}}";
				tbody.clas = "text-center";
				table.addTbody(tbody);
			}
			{
				let
				tbody = new TBodyVo().init("TEXT");
				tbody.name = "{{it.discount ? ((it.discount * 100) + '%') : '0%'}}";
				tbody.clas = "text-right";
				table.addTbody(tbody);
			}
			{
				let
				tbody = new TBodyVo().init("TEXT");
				tbody.name = "{{it.updateBy}}";
				tbody.clas = "text-center";
				table.addTbody(tbody);
			}
			{
				let
				tbody = new TBodyVo().init("TEXT");
				tbody.name = "{{it.updateTime | date:'yyyy-MM-dd HH:mm:ss'}}";
				tbody.clas = "text-center";
				table.addTbody(tbody);
			}
			{
				let
				tbody = new TBodyVo().init("TEXT");
				tbody.name = "{{it.deleted ? '否' : '是'}}";
				tbody.clas = "text-center";
				table.addTbody(tbody);
			}
			module.table = table;
		}
		return module;
	}

	var dialogModule = function(type){
		var module = new ModuleVo();
		module.type = type;
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

		var dat = {
		  attrs: {// 属性项
		    src: null,
		    idx: null,
		    obj: function(type){
			    return new AttrVo().init(type);
		    },
		    add: function(){
			    var cfg = dat.attrs;
			    cfg.src.push(tc.attrs);
		    },
		    edit: function(){
			    var cfg = dat.attrs;
			    cfg.src[cfg.idx] = tc.attrs;
		    },
		    callback: {
		      add: null,
		      edit: null,
		      save: null,
		      del: function(){
			      $("#attrs_dialog").modal("hide");
		      },
		    },
		  },
		  cols: {// 表单栏
		    src: null,
		    idx: null,
		    obj: function(type){
			    var col = new ColumVo().init(type);
			    col.clas = "col-xs-12 col-sm-6 col-md-4";
			    col.label = "标签名称";
			    col.labClas = "col-xs-3";
			    col.iptClas = "col-xs-9";
			    return col;
		    },
		    add: function(){
			    var cfg = dat.cols;
			    cfg.src.push(tc.cols);
		    },
		    edit: function(){
			    var cfg = dat.cols;
			    cfg.src[cfg.idx] = tc.cols;
		    },
		    callback: {
		      add: null,
		      edit: null,
		      save: null,
		    },
		  },
		  ipts: {// 表单项
		    src: null,
		    idx: null,
		    obj: function(type){
			    return new InputVo().init(type);
		    },
		    add: function(){
			    var cfg = dat.ipts;
			    cfg.src.push(tc.ipts);
		    },
		    edit: function(){
			    var cfg = dat.ipts;
			    cfg.src[cfg.idx] = tc.ipts;
		    },
		    callback: {
		      add: null,
		      edit: null,
		      save: null,
		    },
		  },
		  btns: {// 按钮项
		    src: null,
		    idx: null,
		    obj: function(type){
			    return new ButtonVo().init(type);
		    },
		    add: function(){
			    dat.btn.src.unshift(tc.btns);
		    },
		    edit: function(){
			    var cfg = dat.btns;
			    cfg.src[cfg.idx] = tc.btns;
		    },
		    callback: {
		      add: null,
		      edit: null,
		      save: null,
		    },
		  },
		  theads: {// 表格头
		    src: null,
		    idx: null,
		    obj: function(type){
			    return new THeadVo().init(type);
		    },
		    add: function(){
			    var cfg = dat.theads;
			    var src = cfg.src;
			    var idx = tc.thIndex - 1;
			    if (cfg.idx == 0 || idx < 0 || idx >= cfg.idx){// 无数据或序列比当前序列大
				    src.push(tc.theads);
			    } else{
				    var suf = src.slice(idx);
				    src.splice(idx, src.length - idx, tc.theads);
				    angular.forEach(suf, function(it){
					    src.push(it);
				    });
			    }
		    },
		    edit: function(){
			    var cfg = dat.theads;
			    cfg.src[cfg.idx] = tc.theads;
		    },
		    callback: {
		      add: function(){
			      tc.thIndex = dat.theads.idx + 1;
			      return true;
		      },
		      edit: function(){
			      tc.thIndex = dat.theads.idx + 1;
			      return true;
		      },
		      save: null,
		    },
		  },
		  tbodies: {// 表格项
		    src: null,
		    idx: null,
		    obj: function(type){
			    return new TBodyVo().init(type);
		    },
		    add: function(){
			    var cfg = dat.tbodies;
			    var src = cfg.src;
			    var idx = tc.tdIndex - 1;
			    if (cfg.idx == 0 || idx < 0 || idx >= cfg.idx){// 无数据或序列比当前序列大
				    src.push(tc.tbodies);
			    } else{
				    var suf = src.slice(idx);
				    src.splice(idx, src.length - idx, tc.tbodies);
				    angular.forEach(suf, function(it){
					    src.push(it);
				    });
			    }
		    },
		    edit: function(){
			    var cfg = dat.tbodies;
			    cfg.src[cfg.idx] = tc.tbodies;
		    },
		    callback: {
		      add: function(){
			      tc.tdIndex = dat.tbodies.idx + 1;
			      return true;
		      },
		      edit: function(){
			      tc.tdIndex = dat.tbodies.idx + 1;
			      return true;
		      },
		      save: null,
		    },
		  },
		};

		tc.dat = dat;
		tc.attrs = null;
		tc.cols = null;
		tc.ipts = null;
		tc.btns = null;
		tc.theads = null;
		tc.tbodies = null;

		tc.addFlag = {
		  attrs: false,
		  cols: false,
		  ipts: false,
		  btns: false,
		  theads: false,
		  tbodies: false,
		};

		tc.addItem = function(type, src, key){
			if (!src[type]){
				src[type] = [];
			}
			var cfg = dat[type];
			cfg.src = src[type];
			cfg.idx = cfg.src.length;
			tc.addFlag[type] = true;
			tc[type] = cfg.obj(key);
			if (!cfg.callback.add || cfg.callback.add()){
				$("#" + type + "_dialog").modal("show");
			}
		};

		tc.editItem = function(type, src, idx){
			var cfg = dat[type];
			cfg.src = src[type];
			cfg.idx = idx;
			tc.addFlag[type] = false;
			tc[type] = angular.copy(cfg.src[idx]);
			if (!cfg.callback.edit || cfg.callback.edit()){
				$("#" + type + "_dialog").modal("show");
			}
		};

		tc.saveItem = function(type){
			var cfg = dat[type];
			console.log(tc[type]);
			if (cfg.callback.save && !cfg.callback.save()) return;
			if (tc.addFlag[type]){
				cfg.add();
			} else{
				cfg.edit();
			}
			tc[type] = null;
			$("#" + type + "_dialog").modal("hide");
		};

		tc.delItem = function(src, key, callback){
			if (!window.confirm("确定删除该项？")) return;
			if (angular.isArray(src)){
				src.splice(key, 1);
			} else{
				src[key] = null;
			}
			if (callback) callback();
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

		tc.addTable = function(module){
			module.table = new TableVo();
		};

		tc.disTheadButton = function(){
			return tc.theads && tc.theads.type == 'BUTTON' && !tc.theads.btn;
		};

		tc.addTheadButton = function(){
			var cfg = dat.btns;
			cfg.src = [];
			cfg.idx = 0;
			cfg.callback.save = function(){
				tc.theads.btn = cfg.src[0];
				cfg.callback.save = null;
				return true;
			};
			tc.btns = cfg.obj("BUTTON");
			tc.addFlag.btns = true;
			$("#btns_dialog").modal("show");
		};

		tc.editTheadButton = function(){
			var cfg = dat.btns;
			var btn = tc.theads.btn;
			cfg.src = [btn];
			cfg.idx = 0;
			cfg.callback.save = function(){
				tc.theads.btn = cfg.src[0];
				cfg.callback.save = null;
				return true;
			};
			tc.btns = angular.copy(btn);
			tc.addFlag.btns = false;
			$("#button_dialog").modal("show");
		};

		tc.delTheadButton = function(){
			tc.theads.btn = null;
		};

		tc.tmplRest = function(){
			tc.tmpl = new TemplateVo();
		};

		tc.tmplQuery = function(){
			var tmpl = new TemplateVo();
			tmpl.page = "query";
			tmpl.title = "查询示例页面";
			tmpl.script = "controllers";
			tmpl.controller = "QueryController";
			tmpl.addModule(normalModule("NORMAL"));
			tc.tmpl = tmpl;
		};

		tc.tmplLoad = function(key){
			$http.get("/template/load", {
				params: {
					code: key
				}
			}).success(function(resp){
				if (resp.status == 0){
					tc.tmpl = resp.data;
				} else{
					window.alert("模板未找到！");
				}
			});
		};

		tc.addTmpl = function(){
			console.log(tc.tmpl);
			$http.post("/template/add", tc.tmpl).success(function(resp){
				if (resp.status == 401){
					if (window.confirm("该页面已经存在，确定保存修改？")){
						$http.post("/template/edit", tc.tmpl).success(function(resp1){
							tc.pages = resp1.data;
						});
					}
				} else{
					window.alert("模板保存成功！");
					tc.pages = resp.data;
				}
			});
		};

		tc.load = function(){
			$http.get("/template/pages").success(function(resp){
				tc.pages = resp.data;
			});
			$http.get("/template/types").success(function(resp){
				tc.types = resp.data;
			});
			tc.tmplRest();
		};

		tc.load();

		console.log($scope);
	}

	fcsApp.controller('TemplateController', ['$http', '$scope', TemplateController]);
}();