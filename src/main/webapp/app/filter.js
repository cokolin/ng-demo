fcsApp.filter('str', function(){
  return function(ipt){
    return ipt + '';
  };
});

fcsApp.filter('left', function(){
	return function(ipt, len){
		return ipt && ipt.length > len ? ipt.substring(0, len) : ipt;
	};
});

fcsApp.filter('less', function(){
	return function(ipt, len){
		return ipt && ipt.length > len ? ipt.substring(0, len) + '...' : ipt;
	};
});

fcsApp.filter('code', ['CodeNames', function(CodeNames){
  return function(ipt, type){
    var map;
    if(ipt && (map = CodeNames[type])){
      var val = map[ipt];
      return val ? val : ipt;
    }
    return ipt;
  };
}]);
