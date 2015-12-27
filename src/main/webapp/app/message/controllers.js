'use strict';
fcsApp.controller('MessageController', ['$http', '$scope', function($http, $scope){
	var mc = this;
	mc.flag = false;
	mc.msgs = [];
	mc.resp = null;

	var PostConfig = {
		headers: {
			'Content-Type': 'application/x-www-form-urlencoded'
		},
		transformRequest: function(data){
			return $.param(data, true);
		}
	};

	var call = function(resp){
		mc.flag = false;
		mc.resp = resp;
	};

	function post(url, dat, success, error){
		$http.post(url, dat, PostConfig).success(success ? success : call).error(error ? error : call);
		mc.flag = true;
	}
	
	mc.open = function(){
		var url = "ws://localhost:8090/ws/demo";

		var socket = new WebSocket(url);

		socket.onopen = function(event){
			console.log(event);
		}

		socket.onclose = function(event){
			console.log(event);
		}

		socket.onmessage = function(event){
			console.log(event);
			mc.msgs.unshift(event.data);
			$scope.$digest();
		}

		socket.onerror = function(event){
			console.log(event);
		};

		mc.socket = socket;
		console.log(socket);
	};

	mc.send = function(){
		var msg = JSON.stringify(ms.msg);
		console.log(msg);
		mc.socket.send(msg);
	};

	mc.close = function(){
		if(mc.socket){
			mc.socket.close();
			mc.socket = null;
		}
		console.log("close socket");
	};

	mc.login = function(){
		post("/message/set-user", mc.msg, function(resp){
			mc.flag = false;
			mc.resp = resp;
			mc.close();
			mc.open();
		});
	};
	
	mc.logout = function(){
		mc.close();
	};

	mc.usrMsg = function(){
		post("/message/send-user-msg", mc.msg);
	};

	mc.allMsg = function(){
		post("/message/send-all-msg", mc.msg);
	};

	console.log(mc);
}]);