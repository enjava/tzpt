<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<meta name="viewport" content="user-scalable=no, width=device-width, initial-scale=1.0, maximum-scale=1.0" />

<title>创富中心</title>

{:include file="common_wx_hide_share_head.tpl":}{:*隐藏右上角部分功能菜单*:}

<script src="{:$var_x['path']['tem_dir_url']:}/script/jquery.js" type="text/javascript"></script>

<!--<link href="{:$var_x['path']['tem_dir_url']:}/style/main.css" rel="stylesheet" type="text/css" />-->

<style type="text/css">

/*.yj{height:40px; background:#4c4441; border-top:1px solid #ccc; box-shadow:0 3px 5px #666;}

.yj span{display:block; width:50%; height:36px; line-height:36px; margin-top:2px; float:left; box-sizing:border-box; color:#fff; text-align:center;}

.menu{width:90%; margin:20px auto; border:1px solid #ccc;}

.menu a{color:#000;}

.menu ul li{height:50px; line-height:50px; background:url({:$var_x['path']['tem_dir_url']:}/images/menu_bg.png) repeat-x; border-top:1px solid #ccc;}

.menu ul li img{width:30px; vertical-align:middle; margin:0  20px;}

.menu ul li span{ float:right; display:inline-block; padding-top:13px;}

.menu ul li span img{width:25px;}*/

body{padding:0; margin:0; font:normal 100% 微软雅黑; background:#fff;}

*{padding:0; margin:0;}

ul li,ol{ list-style:none;}

img{width:100%; border:0;}

a{text-decoration:none; color:#000;}

a:hover{text-decoration:none;}

.top{position:relative; padding:10px 10px 20px; background:#fb593e; color:#fff; font-size:14px;}

.top span{font-size:16px;}

.top h3{font-size:18px; padding:15px 0 20px;}

.top h1{font-size:40px;}

.top a{display:block; width:40px; height:40px; top:10px; right:10px; position:absolute;}

.cmenu ul li{width:33.33333%; float:left; padding:15px 0; border:1px solid #e7e7e7; border-left:0; border-top:0; text-align:center; box-sizing:border-box;}

.cmenu ul li img{width:50%;}

.cmenu ul li h3{font-size:16px; color:#666; padding-bottom:5px;}

.cmenu ul li span{font-size:12px; color:#888; padding-bottom:5px; display:block; height:14px; line-height:14px; overflow:hidden;}

.cmenu ul li span b{color:#ff5000; padding-right:2px;}

.cmenu ul li div.hb{width:50%; margin:0 auto; position:relative;}

.cmenu ul li div.hb img{width:100%;}

.cmenu ul li div.hb span{background:#1cbfac; color:#fff; font-size:12px; padding:0; width:20px; height:20px; line-height:20px; border-radius:50%; border:2px solid #fff; text-align:center; position:absolute; right:-5px; top:-5px;}

.footer{ background-color:#FA593D; border-top:1px solid #333333; padding-top:10px; text-align:center; color:#ffffff; text-shadow:0 1px 1px #fff; font-size:14px;}

.footer a{color:#ffffff; padding:0 10px;}

.footer a.lr{border-left:1px solid #ffffff; border-right:1px solid #ffffff;}

.footer p{padding-bottom:10px;}

</style>

<script type="text/javascript">

	$(document).ready(function(){

		$("#ft").click(function(){

			$("html,body").animate({scrollTop:0},500);

		});

	});

</script>

<script type="text/javascript">

// 隐藏微信中网页底部导航栏和分享

//function onBridgeReady(){

// WeixinJSBridge.call('hideOptionMenu');

//}

//

//if (typeof WeixinJSBridge == "undefined"){

//    if( document.addEventListener ){

//        document.addEventListener('WeixinJSBridgeReady', onBridgeReady, false);

//    }else if (document.attachEvent){

//        document.attachEvent('WeixinJSBridgeReady', onBridgeReady); 

//        document.attachEvent('onWeixinJSBridgeReady', onBridgeReady);

//    }

//}else{

//    onBridgeReady();

//}

</script>

</head>



<body>

<div class="top">

	<span>累计收入：{:$mle['kickback']['total_info']['may_kickback'] + $mle['kickback']['total_info']['already_kickback']:}</span>

    <h3>可提现（元）</h3>

    <h1>{:$mle['mem_other_data']['may_kickback'] - $mle['total_applying_kickback']:}</h1>

    <p>客官别急，赶紧分享好友赚钱吧~</p>

    <a href="my_wallet.php"><img src="{:$var_x['path']['tem_dir_url']:}/images/0625/hback.png" /></a>

</div>

<div class="cmenu">

	<ul>

    	<li>

        	<a href="{:$var_x['path']['mleroot_url']:}/member/my_order.php">

            <img src="{:$var_x['path']['tem_dir_url']:}/images/0625/order_ico.png" />

            <h3>订单管理</h3>

            <span>没有待处理订单</span>

            </a>

        </li>

        <li>

        	<a href="{:$var_x['path']['mleroot_url']:}/member/my_center.php">

        	<img src="{:$var_x['path']['tem_dir_url']:}/images/0625/center_ico.png" />

            <h3>个人中心</h3>

            <span>可查看个人信息</span>

            </a>

        </li>

        <li>

        	<a href="my_retail.php">

        	<img src="{:$var_x['path']['tem_dir_url']:}/images/0625/khgl_ico.png" />

            <h3>团队管理</h3>

            <span><b>{:$mle['son']['son_total']['num']:}</b>个</span>

            </a>

        </li>

        <li>

        	<a href="{:$var_x['path']['mleroot_url']:}/mobile/index_ofintegral.php" >

        	<img src="{:$var_x['path']['tem_dir_url']:}/images/0625/jf_ico.png" />

            <h3>积分中心</h3>

            <span><b>{:$mle['mem_info']['integral']:}</b>积分</span>

            </a>

        </li>

        <li>

        	<a href="article_list.php?article_class=2">

        	<img src="{:$var_x['path']['tem_dir_url']:}/images/0625/wz_ico.png" />

            <h3>文章中心</h3>

            <span>软文分享快人一步</span>

            </a>

        </li>
		<li style="border-right:none;">

        	<a href="article_list.php?article_class=5">

        	<img src="{:$var_x['path']['tem_dir_url']:}/images/0625/iconfont-peixun.png" />

            <h3>创富商学院</h3>

            <span>教你玩转微营销</span>

            </a>

        </li>

        <div style="clear:both;"></div>

    </ul>

</div>





<div style="margin-bottom:75px;"></div>

<div style="position:fixed; width:100%; bottom:0; background:#f1f1f1;">

{:include file="footer.tpl":}

</div>

</body>

</html>

