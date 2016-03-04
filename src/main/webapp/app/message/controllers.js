'use strict';
fcsApp.controller('MessageController', ['$http', '$scope', function($http, $scope){
  var mc = this;
  mc.flag = false;
  mc.msgs = [];

  function open(name){
  	var loc = window.location;
  	var url = loc.protocol == "https:" ? "wss://" : "ws://";
  	url += loc.host + "/ws/demo";

    var socket = new WebSocket(url);

    socket.onopen = function(event){
      console.log(event);
      register(name);
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

    console.log(socket);
    return socket;
  }

  function register(name){
    mc.socket.send(JSON.stringify({
      type: 'REGISTER',
      data: name
    }));
  }

  function send(dat){
    mc.socket.send(JSON.stringify({
      type: 'MESSAGE',
      data: dat
    }));
  }

  mc.login = function(){
    var username = '';
    for (;username.trim() == '';){
      username = window.prompt("请输入您的用户名");
    }
    if(username){
      mc.socket = open(username);
      mc.username = username;
    }
  };

  mc.logout = function(){
    if (mc.socket){
      mc.socket.close();
      mc.socket = null;
    }
    mc.username = null;
    console.log("close socket");
  };

  mc.usrMsg = function(){
    var dat = angular.copy(mc.msg);
    send(dat);
  };

  mc.allMsg = function(){
    var dat = angular.copy(mc.msg);
    delete dat.usr;
    send(dat);
  };

  console.log(mc);
}]);