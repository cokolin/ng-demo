var $AE = angular.element;
var $A = angular;
angular.module('ngApp', ['ngNewRouter', 'ngApp.home', 'ngApp.about']).controller("AppController", ["$router", function($router){
	var app = this;

	$router.config([{
		path: '/',
		redirectTo: '/home'
	}, {
		path: '/home',
		component: 'home'
	}, {
		path: '/detail/:id',
		component: 'detail'
	}, {
		path: '/about',
		component: 'about'
	}]);
	
}]).controller("NavbarController", [function(){
	var nav = this;
}]);;