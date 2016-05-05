var util=require('util');
hexo.extend.generator.register('test', function(locals){
	var ps=locals.posts.toArray();
	var d=ps[0].date;
	ps.sort(function(a,b){
		return a.date.unix()-b.date.unix();
	});
	for(var i=0;i<ps.length;i++){
		ps[i].index_posts=i;
	}
});
