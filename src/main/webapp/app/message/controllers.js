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
    $http.post(url, dat).success(success ? success : call).error(error ? error : call);
    mc.flag = true;
  }

  function open(dat){
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
  }

  function send(msg){
    mc.socket.send(msg);
  }

  function close(){
    if (mc.socket){
      mc.socket.close();
      mc.socket = null;
    }
    console.log("close socket");
  }

  mc.login = function(){
    var dat = {
      usr: mc.msg.usr
    };
    post("/message/set-user", dat, function(resp){
      mc.flag = false;
      mc.resp = resp;
      close();
      open(dat);
    });
  };

  mc.logout = function(){
    close();
  };

  mc.usrMsg = function(){
    send(JSON.stringify(mc.msg));
  };

  mc.allMsg = function(){
    var dat = angular.copy(mc.msg);
    delete dat.usr;
    send(JSON.stringify(dat));
  };

  console.log(mc);
}]);