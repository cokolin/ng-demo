'use strict';
fcsApp.controller('DemoController', ['$http', 'TypeAndStatus', function($http, TypeAndStatus){
	var dc = this;

	dc.queryFormHtml = '/html/demo/query-form.html';

	dc.typeList = angular.copy(TypeAndStatus.demoTypes);

	dc.statusList = angular.copy(TypeAndStatus.demoStatus);

	dc.queryArgs = {
		type: [],
		page: 1,
		length: 15
	};

	dc.query = function(){

	};

	dc.create = function(){

	};

	dc.update = function(){

	};

	dc.remove = function(){

	};

	dc.checkOne = function(model, list){
		model.splice(0, model.length);
		angular.forEach(list, function(it){
			if (it._check){
				model.push(it.id);
			}
		});
	};

	dc.checkAll = function(model, list){
		if (model.length > 0){// unchecked
			angular.forEach(list, function(it){
				it._check = false;
			});
			model.splice(0, model.length);
		} else{
			model.splice(0, model.length);
			angular.forEach(list, function(it){
				it._check = true;
				model.push(it.id);
			});
		}
	};

	dc.date = new Date();

	console.log(dc);
}]);