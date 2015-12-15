fcsApp.factory("fcs.query", ["$http", function($http){
  
  var test = function(){
     
  };
  
  test.prototype.print = function(msg){
    this.msg = msg;
    window.alert(msg);
  };
  
  return {
    create: function(){
      return new test();
    },
    print: function(msg){
      window.alert(msg);
    }
  };
}]);