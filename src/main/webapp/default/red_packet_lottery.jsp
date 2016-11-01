<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<meta name="viewport" content="user-scalable=no, width=device-width, initial-scale=1.0, maximum-scale=1.0">

<title>疯狂摇红包-创富商盟</title>

<style type="text/css">

body{padding:0; margin:0; font:normal 100% 微软雅黑;}

*{padding:0; margin:0;}

ul li,ol{ list-style:none;}

img{width:100%; border:0;}

a{text-decoration:none; color:#000;}

a:hover{text-decoration:none;}

.bg{position:fixed; width:100%; height:100%; left:0; top:0; background:url({:$var_x['path']['tem_dir_url']:}/images/ybg.jpg) center top no-repeat; background-size:cover;}

a.jh{width:200px; height:35px; border-radius:20px; line-height:35px; text-align:center; display:block; margin:0 auto; background:#ffd9ae; color:#e74143; border:2px solid #da2713;}

.ya{text-align:center; height:30px;}

.ya a{display:inline-block; width:80px; height:30px; line-height:30px; text-align:center; color:#fff; font-size:16px; background:#ad2321;}

.ktx{color:#ffdc05; font-size:16px; text-align:center; padding:10px 0 20px;}

/*****遮罩层**********************/

.zzc{position:fixed; width:100%; left:0; top:0; height:100%; font-size:18px; line-height:24px; background:url({:$var_x['path']['tem_dir_url']:}/images/zzbg.png); z-index:999;}

.dhb{width:50%; max-width:200px; margin:20px auto; position:relative;}

.dhb span{display:block; width:100%; height:100px; line-height:100px; font-size:80px; color:#fff000; text-align:center; position:absolute; top:50%; margin-top:-45px; z-index:9999;}

.za a{display:inline-block; width:100px; height:30px; line-height:30px; text-align:center; color:#e2002e; font-size:16px;}



#cboxLoadedContent{border:none;}

#cboxClose{background:url({:$var_x['path']['tem_dir_url']:}/images/xx.png) no-repeat center center; width:35px; height:35px;}

</style>

<script src="{:$var_x['path']['mleroot_url']:}/inc/script/jquery.js" ></script>{:* jquery *:}
<script src="{:$var_x['path']['mleroot_url']:}/inc/script/public_fun.js" ></script>{:* 函数库JS *:}
{:include file="common_wx_share_head.tpl":}{:*微信api初始化有延迟，优先加载*:}
<!--弹出层-->

<script src="{:$var_x['path']['tem_dir_url']:}/script/jquery.colorbox.js"></script>

<link rel="stylesheet" href="{:$var_x['path']['tem_dir_url']:}/style/colorbox.css" />

<script>

	$(document).ready(function(){

		$(".rz").colorbox({inline:true, width:"90%"});

	});

</script>

</head>



<body>

<div class="bg"></div>



<div style="position:fixed; width:100%; left:0; bottom:0; padding-bottom:20px;">

    <a href="" class="jh">你还有{:$mle['mem_data']['may_red_packet_num']:}次机会</a>

    <div class="ktx">可提现金额：{:$mle['mem_other_data']['may_kickback'] - $mle['total_applying_kickback']:}元</div>

    <div class="ya">

        <a href="#hdgz" class="rz">活动规则</a>&nbsp;&nbsp;&nbsp;

        <a href="red_packet_record.php">红包记录</a>&nbsp;&nbsp;&nbsp;

		<a href="input_take_kickback_info_ofwx.php">立刻提现</a>

    </div>

</div>



<!-----遮罩层--------------->

<div id="show_red_packet_result" class="zzc" {:if $mle['red_packet_data']['money']==0:}style="display:none;"{:/if:}>

	<div style="padding-top:80px; text-align:center; color:#ffbe00;">

    	<p>你还可以摇{:$mle['mem_data']['may_red_packet_num']:}次<br />恭喜您本次摇中</p>

        <div class="dhb"><img src="{:$var_x['path']['tem_dir_url']:}/images/dhb.png" /><span>{:$mle['red_packet_data']['money']:}</span></div>

        <div class="za">

        	<a href="javascript:void(0);" onclick="open_yaoyiyao = true; $('#show_red_packet_result').hide();" style="background:url({:$var_x['path']['tem_dir_url']:}/images/yqbtn.png) no-repeat; background-size:100% 100%;">继续</a>&nbsp;&nbsp;&nbsp;&nbsp;

        	<a href="red_packet_show_one.php?red_packet_id={:$mle['red_packet_data']['id']:}" style="color:#fff; background:url({:$var_x['path']['tem_dir_url']:}/images/txbtn.png) no-repeat; background-size:100% 100%;">查看红包</a>

        </div>

    </div>

</div>

<!--弹出层-->

<div style="display:none;">

	<div id="hdgz">

    	<img src="{:$var_x['path']['tem_dir_url']:}/images/red_pottery_guize.jpg" style="border-radius:10px;" />

    </div>

</div>

<audio style="display:none" id="yaoyiyao_audio" src="{:$var_x['path']['tem_dir_url']:}/music/yaoyiyao.mp3"  controls="controls" ></audio>

</body>

<script type="text/javascript">

var yao_num = 0; //摇动次数df

var SHAKE_THRESHOLD = 9000; // 摇动速度值 5000

var last_update = new Date().getTime();;

var x, y, z, last_x = 0, last_y = 0, last_z = 0;

var is_first = 1;//是否为第一次

var open_yaoyiyao = {:if $mle['red_packet_data']['money']==0:}true{:else:}false{:/if:};

var oAudio_yaoyiyao = document.getElementById('yaoyiyao_audio');

function deviceMotionHandler(eventData) {

	

	var acceleration =eventData.accelerationIncludingGravity;

	var curTime = new Date().getTime();

	if(last_update==0){

		last_update = curTime;

		return;

	}

	if ((curTime-last_update) > 10) { // 10

		var diffTime = curTime -last_update;

		last_update = curTime;

		x = acceleration.x;

		y = acceleration.y;

		z = acceleration.z;

		if(is_first == 1) return is_first = 0;

		var speed = Math.abs(x +y + z - last_x - last_y - last_z) / diffTime * 10000;

		if (speed > SHAKE_THRESHOLD) {

			//alert('分数（速度）：' + Math.round(speed));

			

			//alert('正在抽奖' + yao_num);

			

			if(open_yaoyiyao==true){

				open_yaoyiyao = false;//不接受新的请求

				oAudio_yaoyiyao.play();

				yao_num = yao_num + 1;

				setTimeout(function(){

					mle.fun.toUrl('?action=lotterying');

				}, 1000);

				

			}

			

			//if($('#show_prize').is(':hidden')){

			

			

		}

		last_x = x;

		last_y = y;

		last_z = z;

	}

}

if (window.DeviceMotionEvent) {

	window.addEventListener('devicemotion',deviceMotionHandler,false);

} else {

	alert('当前设置不支持摇一摇。');

}



document.addEventListener('WeixinJSBridgeReady', function onBridgeReady() {

	WeixinJSBridge.call('hideToolbar');

});

</script>

</html>

