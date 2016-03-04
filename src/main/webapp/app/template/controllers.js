'use strict';
fcsApp.controller('TemplateController', ['$http', '$scope', function($http, $scope){
	var tc = this;
	
	tc.load = function(){
		$http.get("/template/pages").success(function(resp){
			tc.pages = resp;
		});
	};
	
	tc.load();
}]);