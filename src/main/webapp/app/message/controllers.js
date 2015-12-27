'use strict';
fcsApp.controller('MessageController', ['$http', function($http){
	var mc = this;
	mc.postFlag = false;
	mc.msgs = [];

	var PostConfig = {
		headers: {
			'Content-Type': 'application/x-www-form-urlencoded'
		},
		transformRequest: function(data){
			return $.param(data, true);
		}
	};

	var call = function(resp){
		mc.postFlag = false;
		mc.msgs.push(resp);
	};

	function post(url, data){
		$http.post(url, data, PostConfig).success(call).error(call);
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

fcsApp.controller('MsgShowController', ["$scope", function($scope){
	var ms = this;
	ms.socket = null;
	ms.msgs = ["web-socket not init"];

	ms.open = function(){
		var url = "ws://localhost:8090/ws/server";

		var socket = new WebSocket(url);

		socket.onopen = function(event){
			console.log(event);
		}

		socket.onclose = function(event){
			console.log(event);
		}

		socket.onmessage = function(event){
			console.log(event);
			ms.msgs.push(JSON.parse(event.data));
			$scope.$digest();
		}

		socket.onerror = function(event){
			console.log(event);
		};
		
		ms.socket = socket;
		console.log(socket);
	};

	ms.send = function(){
		var msg = JSON.stringify(ms.msg);
		console.log(msg);
		ms.socket.send(msg);
	};

	ms.close = function(){
		ms.socket.close();
		console.log("close");
	};
	
	//$scope.$digest();
	console.log(ms, $scope);
}]);