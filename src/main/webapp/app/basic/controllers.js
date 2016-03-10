fcsApp.controller("QueryController", ['$scope', '$http', function($scope, $http){
	var vm = this;

	vm.initQuery = function(method, url, extUrl){
		console.log(method, url, extUrl);
	};

}]);