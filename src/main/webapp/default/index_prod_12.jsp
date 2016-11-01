<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>



<html xmlns="http://www.w3.org/1999/xhtml">



<head>



<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />



<title>9.9元加盟，给梦想一个选择</title>



{:include file="index_head.tpl":}



<meta name="description" content="" />



<meta http-equiv="Pragma" content="no-cache">



<meta http-equiv="Expires" content="-1">



<meta name="format-detection" content="telephone=no">



<meta name="apple-mobile-web-app-capable" content="yes">



<meta name="apple-mobile-web-app-status-bar-style" content="black">



<style type="text/css">



* {



	margin: 0;



	padding: 0



}



body {



	margin: 0;



	font-family: Arial, Helvetica, sans-serif;



	font-size: 13px;



	line-height: 1.5;



}



.swiper-container {



	height: auto;



	width: 100%;



}



.device {



	width: 100%;



	height: auto;



	margin: 0 auto;



	position: relative;



	overflow: hidden



}



.wiper-container {



	height: auto;



	width: 100%;



	overflow: hidden



}



img {



	display: block;



	border: 0;



	width:100%;



}



.hide {



	display: none



}



.rel {



	position: relative



}



.abs {



	position: absolute



}



.swiper-slide {



	width: 100%;



	height: auto;



}



.swiper-slide div {



	position: absolute;



	width: 100%;



	height: 100%;



	left: 0;



	top: 0;



	z-index: 9



}



div.bg {



	text-align: center;



	z-index: 9



}



div.main {



	z-index: 2;



}



div.draw {



	opacity: 0



}



div.resize img {



	width: 0;



	bottom: 0;



	right: 0



}



div.down img {



	width: 0;



	bottom: 0;



	right: 0



}



div.info {



	left: 640px



}







.light {



	cursor: pointer;



	position: absolute;



	left: -180px;



	top: 0;



	width: 180px;



	height: 90px;



	background-image: -moz-linear-gradient(0deg, rgba(255,255,255,0), rgba(255,255,255,0.5), rgba(255,255,255,0));



	background-image: -webkit-linear-gradient(0deg, rgba(255,255,255,0), rgba(255,255,255,0.5), rgba(255,255,255,0));



	transform: skewx(-25deg);



	-o-transform: skewx(-25deg);



	-moz-transform: skewx(-25deg);



	-webkit-transform: skewx(-25deg);



}



</style>



<meta name="viewport" id="viewport" content="width=device-width, initial-scale=0.5, maximum-scale=1.0">



<script type="text/javascript" src="{:$var_x['path']['tem_dir_url']:}/script/jquery.js?ver=26"></script>



<script type="text/javascript">



var phoneWidth = parseInt(window.screen.width);



var phoneScale = phoneWidth/640;



var ua = navigator.userAgent; 



if (/Android (\d+\.\d+)/.test(ua)){ 



	if (phoneWidth >  640) {



		document.write('<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">');	



	} 



} else {



	document.write('<meta name="viewport" content="width=device-width, user-scalable=no, target-densitydpi=device-dpi">');



}



</script>



<style type="text/css">



span.spa{display:block; width:100%; height:100%;}



.zc{display:none; z-index:999; position:fixed; bottom:40px; width:100%; left:0;}

.proimg img{width:100%;}

</style>



<script>



$(function(){



	sta = 0;



	stt = 0.5;



	setInterval(function(){



		if(sta == 0){



			$(".zc").fadeIn("1000");



			sta = 1;



		}else{



			$(".zc").fadeOut("1000");



			sta = 0;



		}	



	},1000);



});



</script>



</head>



<body>





<div class="proimg">

	<a href="{:if $mle['mem_data']['subscribe_time']==0:}{:$var_x['config']['weixin']['subscribe_url']:}{:else:}{:$var_x['path']['mleroot_url']:}/mobile/detail.php?product_id={:$mle['par']['prod_id']:}{:/if:}">

    	<!--<div style="position:fixed; height:100%; width:100%; left:0; background:url({:$var_x['path']['tem_dir_url']:}/images/image/{:if $mle['mem_data']['cost_money']==0:}8.jpg{:else:}yiyuan.jpg{:/if:}) center center no-repeat; background-size:cover;"></div>-->

        <img src="{:$var_x['path']['tem_dir_url']:}/images/image/99.jpg" />

    </a>

</div>

<a href="{:if $mle['mem_data']['subscribe_time']==0:}{:$var_x['config']['weixin']['subscribe_url']:}{:else:}{:$var_x['path']['mleroot_url']:}/mobile/detail.php?product_id={:$mle['par']['prod_id']:}{:/if:}">

    <div style="overflow:hidden;">

      <img src="{:$var_x['path']['tem_dir_url']:}/images/light.png" class="zc" />

    </div>

</a>



{:include file="index_prod_alert_html.tpl":}



<!--音频--->



<script type="text/javascript" src="{:$var_x['path']['tem_dir_url']:}/script/kawa.js?ver=26"></script>



<script type="text/javascript" src="{:$var_x['path']['tem_dir_url']:}/script/kawa_music_1.js?ver=26"></script>



<script>



kawa_data = {



	music              : '{:$var_x['path']['tem_dir_url']:}/images/lala.mp3',      // url



	replace_music      : '#replace_music#',



	music_name         : '',



	replace_music_name : '#replace_music_name#'



};



$(function(){



	create_music();	



});



</script>



<!--音频 end--->







<script type="text/javascript" src="{:$var_x['path']['tem_dir_url']:}/script/stylee.js"></script> 



<script type="text/javascript" src="{:$var_x['path']['tem_dir_url']:}/script/jQuery.jPlayer.2.6.0/jquery.jplayer.min.js"></script> 



<script src="{:$var_x['path']['tem_dir_url']:}/script/main.js" type="text/javascript"></script>







</body>



</html>



