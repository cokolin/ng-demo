angular.module('ngApp.detail', ['ngNewRouter']).controller('DetailController', ['$routeParams', function($routeParams){
	this.title = 'Detail Page' + $routeParams.id;
}]);