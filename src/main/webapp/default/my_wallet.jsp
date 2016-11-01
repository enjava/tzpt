<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="user-scalable=no, width=device-width, initial-scale=1.0, maximum-scale=1.0" />
<title>我的钱包</title>
{:include file="common_wx_hide_share_head.tpl":}{:*隐藏右上角部分功能菜单*:}
<style type="text/css">
body{padding:0; margin:0; font:normal 100% 微软雅黑; background:#fff;}
*{padding:0; margin:0;}
ul li,ol{ list-style:none;}
img{width:100%; border:0;}
a{text-decoration:none; color:#000;}
a:hover{text-decoration:none;}
.top{padding:5px 0 20px; background:#fe6a46; color:#fff; font-size:16px;}
.top span{font-size:16px;}
.top h1{font-size:40px; padding-left:20px; height:40px; line-height:40px;}
.t_tit{height:35px; text-align:center; line-height:35px; font-size:16px; position:relative;}
.t_tit img{position:absolute; height:25px; width:auto; top:5px; left:10px;}
.top a.zd{display:block; position:absolute; top:20px; right:20px; color:#fff; font-size:16px;}
.top a.zd img{width:20px; vertical-align:middle; margin:0 0 3px 3px;}
.sr{padding:20px; background:#f3f3f3; font-size:16px; color:#ababab;}
.sr h3{font-size:30px; color:#fe6a46; height:30px; line-height:30px; padding-top:5px;}
.tx_list{padding:10px 0; border-bottom:1px solid #ccc;}
.tx_list ul li{width:33.333333%; float:left; border-right:1px solid #ccc; text-align:center; font-size:14px; color:#999; box-sizing:border-box;}
.tx_list ul li h3{font-size:18px; color:#fe6a46;}
.xs_list{padding:10px 0;}
.xs_list ul li{width:33.333333%; float:left; border-right:1px solid #ccc; text-align:center; font-size:14px; color:#666; box-sizing:border-box;}
.xs_list ul li h3{font-size:18px; color:#000;}
a.tx{width:80%; height:45px; line-height:45px; text-align:center; font-size:18px; display:block; margin:30px auto; color:#fff; letter-spacing:2px; border-radius:5px; background:#fd6847;}
</style>
</head>

<body>
<div class="top">
	<div class="t_tit">
    	<a href="javascript:history.back(-1);"><img src="{:$var_x['path']['tem_dir_url']:}/images/0625/lback.png"  style="height:20px; top:8px;"/></a>
        财富
        <a href=""><img src="{:$var_x['path']['tem_dir_url']:}/images/0625/wh.png" style="left:auto; right:10px;" /></a>
    </div>
	
    <div style="padding:20px 20px 10px; position:relative;">账户余额<a href="my_kickback_bill.php" class="zd">账单<img src="{:$var_x['path']['tem_dir_url']:}/images/0625/jt.png" /></a></div>
    <h1>{:$mle['kickback']['total_info']['may_kickback']:}</h1>
</div>

<div class="sr">
	累积收入（元）
    <h3>{:$mle['kickback']['total_info']['may_kickback'] + $mle['kickback']['total_info']['already_kickback']:}</h3>
</div>

<div class="tx_list">
	<ul>
    	<li>可提现（元）<h3>{:$mle['kickback']['total_info']['may_kickback']:}</h3></li>
        <li>提现中（元）<h3 style="color:#999;">{:$mle['total_applying_kickback']:}</h3></li>
        <li>已提现（元）<h3>{:$mle['kickback']['total_info']['already_kickback']:}</h3></li>
        <div style="clear:both;"></div>
    </ul>
</div>
<div class="xs_list">
	<ul>
    	<li>销售额<h3>{:$mle['mem_info']['join_m_member_other_info']['total_sales_money']:}</h3></li>
        <li>待结算（代理）<h3 style="color:#999;">{:$mle['mem_info']['join_m_member_other_info']['partner_kickback_wait']:}</h3></li>
        <li>已结算（代理）<h3>{:$mle['mem_info']['join_m_member_other_info']['partner_kickback_already']:}</h3></li>
        <div style="clear:both;"></div>
    </ul>
</div>

<a href="input_take_kickback_info_ofwx.php" class="tx">我要提现</a>

</body>
</html>
