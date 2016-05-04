rotation=180;
rotateEnter=function(){
	$(this).find('.fill').css('transform', 'rotate(' + 180 + 'deg)' );
	$(this).find('.mask.fast').css('transform', 'rotate(' + 180 + 'deg)');
	$(this).find('.fill.fix').css('transform', 'rotate(' + 180*2 + 'deg)');
}
rotateLeave=function(){
	$(this).find('.fill').css('transform', 'rotate(' + 0 + 'deg)' );
	$(this).find('.mask.fast').css('transform', 'rotate(' + 0 + 'deg)');
	$(this).find('.fill.fix').css('transform', 'rotate(' + 0*2 + 'deg)');
}

//setTimeout(rotateFun, 200);
$('.circle').hover(rotateEnter, rotateLeave);
