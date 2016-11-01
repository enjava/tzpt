<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width,height=device-height,inital-scale=1.0,maximum-scale=1.0,user-scalable=no">
<title>提现记录</title>
{:include file="common_wx_hide_share_head.tpl":}{:*隐藏右上角部分功能菜单*:}
<link href="{:$var_x['path']['tem_dir_url']:}/style/main.css" rel="stylesheet" type="text/css" />
<script src="{:$var_x['path']['mleroot_url']:}/inc/script/jquery.js" ></script>{:* jquery *:}
<script src="{:$var_x['path']['mleroot_url']:}/inc/script/public_fun.js" ></script>{:* 函数库JS *:}
<style>
body{margin:0; padding:0; font-family:"微软雅黑"; background:#e5e5e5;}
ul,ol,li,p,h1,h2,h3,h4,h5,table,td{margin:0; padding:0;}
a{ text-decoration:none;}
.clear{clear:both; height:0;}

.ttop{height:45px; background:#fc6846; line-height:45px; text-align:center; font-size:16px; color:#fff; position:relative;}
.ttop img{height:20px; width:auto; position:absolute; left:10px; top:13px;}

.main{width:100%; overflow:hidden;}
.header{width:100%; height:50px; line-height:50px; background:url({:$var_x['path']['tem_dir_url']:}/images/dtop_bg.png) repeat-x; text-align:center; color:#fff; font-size:16px;}
.box{width:94%; margin:10px auto; font-size:14px;}
.box .record{width:100%; border:1px solid #cacaca; background:-webkit-gradient(linear, left top, left bottom, from(#fff), color-stop(0.5, #f4f4f4), to(#f2f2f2));}
.box .record ol{float:left; width:33.33%; height:40px; line-height:40px; text-align:center; color:#000; font-weight:bold; border-left:1px solid #cacaca; box-sizing:border-box;}
.box .record ol.active{ color:#5b94c1;}
.box .record ol span{display:block; float:left; margin-left:5px; margin-top:10px;}
.box .record ol img{width:20px; height:20px; vertical-align:middle; margin-right:8px;}
.nd_k{width:94%; margin:15px auto;  line-height:25px; border-radius:8px; border:1px solid #ccc; font-size:14px; background:url({:$var_x['path']['tem_dir_url']:}/images/menu_bg.png) repeat-x;}
.nd{width:94%; margin:15px auto; height:45px; line-height:45px; text-align:center; border-radius:8px; border:1px solid #ccc; background:url({:$var_x['path']['tem_dir_url']:}/images/menu_bg.png) repeat-x;}
</style>
</head>

<body>
<div class="main">
     <div class="ttop">
	<a href="javascript:history.back(-1);"><img src="{:$var_x['path']['tem_dir_url']:}/images/0625/lback.png" /></a>
	提现记录
	</div>
	 <div class="box">
	      <div class="record">
		       <a onclick="mle.fun.toUrl('?kickback_status=1', false)" href="javascript:void(0);"><ol style="border-left:0;" {:if $smarty.get.kickback_status=='1':}class="active"{:/if:}><img src="{:$var_x['path']['tem_dir_url']:}/images/1.png" />审核中</ol></a>
			   <a onclick="mle.fun.toUrl('?kickback_status=2', false)" href="javascript:void(0);"><ol {:if $smarty.get.kickback_status=='2':}class="active"{:/if:}><img src="{:$var_x['path']['tem_dir_url']:}/images/2.png" />已审核</ol></a>
			   <a onclick="mle.fun.toUrl('?kickback_status=3', false)" href="javascript:void(0);"><ol {:if $smarty.get.kickback_status=='3':}class="active"{:/if:}><img src="{:$var_x['path']['tem_dir_url']:}/images/3.png" />已打款</ol></a>
			   <a href=""><br class="clear" /></a>
		  </div>

	 </div>
	 {:foreach $mle['re_kickback_data'] as $kickback_data_val:}
	 <div class="nd_k">
	 	真实姓名：{:$kickback_data_val['name']:}<br />
	 	{:if $kickback_data_val['task_type']==0:}
		 	开户行：{:$kickback_data_val['bank_name']:}<br />
		 	银行卡：{:$kickback_data_val['bank_card_id']:}<br />
		 	手机号码：{:$kickback_data_val['phone']:}<br />
		 	付款方式：银行打款<br />
		{:else:}
			付款方式：微信打款<br />
	 	{:/if:}
	 	提现金额：{:$kickback_data_val['take_money']:}<br />
	 	
	 </div>
	 {:foreachelse:}
	 	<div class="nd">
	 		暂无提现记录
	 	</div>
	 {:/foreach:}
</div>

<div style="margin-bottom:75px;"></div>
<div style="position:fixed; width:100%; bottom:0; background:#f1f1f1;">
{:include file="footer.tpl":}
</div>
</body>
</html>
