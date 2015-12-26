'use strict';
fcsApp.controller('DemoController', ['$http', 'TypeAndStatus', function($http, TypeAndStatus){
  var dc = this;

  dc.queryFormHtml = '/html/demo/query-form.html';

  dc.queryTableHtml = '/html/demo/query-table.html';

  dc.typeList = angular.copy(TypeAndStatus.demoTypes);

  dc.statusList = angular.copy(TypeAndStatus.demoStatus);

  dc.queryArgs = {
    type: [],
    page: 1,
    length: 15
  };

  dc.queryList = [{
    name1: Math.random(),
    name2: 'MANUAL',
    name3: Math.random(),
    name4: Math.random(),
  }, {
    name1: Math.random(),
    name2: 'MONTHLY',
    name3: Math.random(),
    name4: Math.random(),
  }, {
    name1: Math.random(),
    name2: 'PROGRESS',
    name3: Math.random(),
    name4: Math.random(),
  }, {
    name1: Math.random(),
    name2: 'PROGRESS',
    name3: Math.random(),
    name4: Math.random(),
  }];

  dc.queryNow = false;
  dc.doQuery = function(){
    console.log(dc.queryArgs);
  };

  dc.doCreate = function(){
    console.log(dc.createArgs);
  };

  dc.doUpdate = function(){
    console.log(dc.updateArgs);
  };

  dc.doRemove = function(){
    console.log(dc.removeArgs);
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

fcsApp.controller('DemoAddController', ['$http', '$scope', function($http, $scope){
  var da = this;
  var dc = $scope.dc;
  
  da.name = "DemoAddController";
  
  dc.test = Math.random();
  
  console.log(da);
  console.log($scope);
}]);

fcsApp.controller('DemoEditController', ['$http', '$scope', '$timeout', 'fcs.query', function($http, $scope,$timeout, query){
  var de = this;
  var dc = $scope.dc;
  
  de.name = "DemoEditController";
  
  de.editHtml = '/html/demo/dialog-edit.html';
  
  $timeout(function(){
    query.print("haha");
  },3000);
  
  console.log(de);
  console.log($scope);
}]);