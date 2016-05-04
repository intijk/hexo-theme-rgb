<!DOCTYPE html>
<html lang="en">
<head>
{% block title %}
<title>hexo-theme-rgb</title>
{% endblock %}
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="favicon.ico?v=2">
<!--jquery-->
<script src="https://code.jquery.com/jquery-2.2.3.min.js"></script>
<!--bootstrp-->
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<!--font awesome-->
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css" rel="stylesheet">
<!--css-->
<link rel="stylesheet" type="text/css" href="css/styles.css">
</head>

<body>


<script>
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
</script>
</div>


<!-- footer part -->
{% include 'rgbbar.swig' %}
{% include 'footer.swig' %}
</html>
