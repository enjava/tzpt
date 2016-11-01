<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<meta name="viewport" content="user-scalable=no, width=device-width, initial-scale=1.0, maximum-scale=1.0">

<title>如何获得机会</title>

<style type="text/css">

body{padding:0; margin:0; font:normal 100% 微软雅黑; background:url({:$var_x['path']['tem_dir_url']:}/images/bg1.jpg) center top no-repeat #fcecd2; background-size:100% auto;}

*{padding:0; margin:0;}

ul li,ol{ list-style:none;}

img{width:100%; border:0;}

a{text-decoration:none; color:#000;}

a:hover{text-decoration:none;}



.h_tit{padding:20px 0; text-align:center; font-size:20px; color:#f00;}

.dhb{width:100%; max-width:580px; margin:0 auto; position:relative;}

.dhb span{display:block; width:100%; height:100px; line-height:100px; font-size:80px; color:#fff000; text-align:center; position:absolute; top:50%; margin-top:-45px; z-index:999;}

.btn{padding:30px 10px;}

.btn ul li{width:50%; float:left; font-size:16px; color:#7c736c; text-align:center;}

.btn ul li a{display:block; width:90%; height:50px; line-height:50px; font-size:18px; letter-spacing:2px; margin:10px auto 0;}

.lj{height:30px; line-height:30px; font-size:16px; color:#cc3338; padding-left:20px; position:relative;}

.lj a{display:block; width:80px; height:30px; background:#ffb400; color:#e2002e; line-height:30px; text-align:center; position:absolute; top:0; right:20px; border-radius:5px; letter-spacing:1px;}

.hb_list{padding:20px 5px 0;}

.hb_list ul li{border-bottom:1px solid #b5adaa; padding:5px; line-height:30px; font-size:14px; color:#b5adaa; position:relative;}

.hb_list ul li span{color:#f00;}

.hb_list ul li div{position:absolute; color:#f00; top:5px; right:5px; height:30px; line-height:30px;}

.hb_list ul li div b{font-size:24px;}

a.gz{width:50%; margin:20px auto; height:35px; line-height:35px; text-align:center; background:#ffb400; color:#e2002e; display:block; border-radius:5px;}

</style>
{:include file="common_wx_share_head.tpl":}{:*微信api初始化有延迟，优先加载*:}
</head>



<body>



<div style="position:relative;">

<div class="dhb"><img src="{:$var_x['path']['tem_dir_url']:}/images/guize.jpg" /><span>{:$mle['red_packet_data']['money']:}</span></div>



<div class="btn">

	<ul>

    	<li>消费1元即抢无限红包<a href="http://www.zmly.cc/?prod_id=12" style="color:#e2002e; background:url({:$var_x['path']['tem_dir_url']:}/images/yqbtn.png) no-repeat; background-size:100% 100%;">马上加入</a></li>

        <li>微信秒结<a href="input_take_kickback_info_ofwx.php" style="color:#fff; background:url({:$var_x['path']['tem_dir_url']:}/images/txbtn.png) no-repeat; background-size:100% 100%;">立刻提现</a></li>

        <div style="clear:both;"></div>

    </ul>

</div>



<div class="lj">您的红包累计达到{:$mle['mem_other_data']['red_packet_money']:}元<a href="red_packet_lottery.php">继续摇</a></div>



<div class="hb_list">

	<ul>

	{:foreach $mle['red_packet_list'] as $red_packet_value:}

    	<li>

        	{:$red_packet_value['join_m_members']['name']:}<span>+{:$red_packet_value['money']:}元</span>&nbsp;{:date('Y-m-d', $red_packet_value['addtime']):}

            <div><b>{:$red_packet_value['money']:}</b>元</div>

        </li>

    {:/foreach:}

    </ul>

</div>

 

</div>

</body>

</html>

