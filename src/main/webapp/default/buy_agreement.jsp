<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width,height=device-height,inital-scale=1.0,maximum-scale=1.0,user-scalable=no">
<title>{:$mle['article_data']['title']:}</title>
{:include file="common_wx_hide_share_head.tpl":}{:*隐藏右上角部分功能菜单*:}
<link href="{:$var_x['path']['tem_dir_url']:}/style/main.css" rel="stylesheet" type="text/css" />
<script src="{:$var_x['path']['mleroot_url']:}/inc/script/jquery.js" ></script>{:* jquery *:}
<script src="{:$var_x['path']['mleroot_url']:}/inc/script/public_fun.js" ></script>{:* 函数库JS *:}
<style>
body{margin:0; padding:0; font-family:"微软雅黑"; background:#e5e5e5;}
ul,ol,li,p,h1,h2,h3,h4,h5{margin:0; padding:0;}
a{ text-decoration:none;}
.clear{clear:both; height:0;}

.main{width:100%; overflow:hidden;}
.header{width:100%; height:50px; line-height:50px; background:url({:$var_x['path']['tem_dir_url']:}/images/dtop_bg.png) repeat-x; text-align:center; color:#fff; font-size:16px;}
.box{width:96%; margin:5px auto; font-size:14px; line-height:25px; color:#000; text-shadow:0 0 1px #fff;}
a.xd{width:94%; margin:0 auto; margin-bottom:20px; height:40px; line-height:40px; text-align:center; color:#fff; background:#f3772d; display:block; border-radius:5px;}
a.xd_2{width:94%; margin:0 auto; margin-bottom:20px; height:40px; line-height:40px; text-align:center; color:#fff; background:#6C6C6C; display:block; border-radius:5px;}
</style>
</head>

<body>
<div class="main">
     <div class="header">{:$mle['article_data']['title']:}</div>
	 <div class="box">
		{:$mle['article_data']['content']:}
	 </div>
</div>
<a href="javascript:void(0);" onclick="mle.fun.toUrl('buy_agreement.php?action=agree', false);" class="xd">同意(以后不再提醒)</a>
<a href="javascript:void(0);" onclick="mle.fun.toUrl('buy_agreement.php?action=disagree', false);" class="xd_2">不同意</a>
{:include file="footer.tpl":}
</body>
</html>
