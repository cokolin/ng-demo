'use strict';
fcsApp.controller('MessageController', ['$http', function($http){
	var mc = this;
	mc.postFlag = false;

	var PostConfig = {
		headers: {
			'Content-Type': 'application/x-www-form-urlencoded'
		},
		transformRequest: function(data){
			return $.param(data, true);
		}
	};

	function post(url, data){
		$http.post(url, data, PostConfig).success(function(msg){
			mc.postFlag = false;
			$AE("#msg").append("<li>" + msg + "</li>");
		}).error(function(msg){
			mc.postFlag = false;
			$AE("#msg").append("<li>" + msg + "</li>");
		});
		mc.postFlag = true;
	}

	mc.setUsername = function(){
		post("/message/set-username", mc.usr);
	}

	mc.sendUserMsg = function(){
		post("/message/send-user-msg", mc.usrMsg);
	};

	mc.sendAllMsg = function(){
		post("/message/send-all-msg", mc.allMsg);
	};

	console.log(mc);
}]);

fcsApp.controller('MsgShowController', function(){
	var ms = this;

	console.log(ms);
});