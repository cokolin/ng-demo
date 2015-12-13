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
