<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport">
<title>{:$mle['article_data']['title']:}</title>
{:include file="common_wx_share_head.tpl":}{:*微信分享*:}
<link type="text/css" href="{:$var_x['path']['tem_dir_url']:}/style/reset.css" rel="stylesheet" />
<link type="text/css" href="{:$var_x['path']['tem_dir_url']:}/style/common.css" rel="stylesheet" />
<link type="text/css" href="{:$var_x['path']['tem_dir_url']:}/style/home.css" rel="stylesheet" />
<link type="text/css" href="{:$var_x['path']['tem_dir_url']:}/style/index.css" rel="stylesheet" />
<link type="text/css" href="{:$var_x['path']['tem_dir_url']:}/style/widget_menu.css" rel="stylesheet" />
<link href="{:$var_x['path']['tem_dir_url']:}/style/main.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="{:$var_x['path']['tem_dir_url']:}/script/jquery.js"></script>
<style type="text/css">
body{padding:0; margin:0; font:normal 100% 微软雅黑;}
a{text-decoration:none; color:#000;}
a:hover{text-decoration:none;}
.v_tit{font-size:18px; color:#000; line-height:24px; padding:15px 10px 10px;}
.date{font-size:14px; color:#999; padding-left:10px;}
.date a{color:#0e4798; font-size:16px;}
.jt{padding:0 0 5px 30px; font-size:14px; color:#000;}
.jt img{width:60px; margin-left:40px;}
.jt span{color:#0e4798; font-weight:bold; font-size:16px;}
.v_txt{font-size:14px; color:#000; line-height:22px; padding:10px;}
</style>
</head>

<body>
<style type="text/css">
a.btm{width:100%; height:60px; padding:10px; box-sizing:border-box; position:fixed; top:0; display:block; background:#118b00; font-size:14px; color:#fff;z-index:9999;}
span.i_buy{display:block; font-size:16px; border-radius:5px; background:#fff; width:80px; height:35px; float:right; margin:3px 10px 0 0; color:#0b5900; text-align:center; line-height:35px;}
#mcover{ position: fixed;	top:0;	left:0;	width:100%;	height:100%;background:rgba(0, 0, 0, 0.7);	display:none;z-index:20000;}
#mcover img {position: fixed;right: 18px;top:5px;width: 260px;height: 180px;z-index:20001;}
</style>

<div class="v_tit">{:$mle['article_data']['title']:}</div>
<div class="date">2015-05-06&nbsp;&nbsp;<a href="{:$var_x['config']['weixin']['subscribe_url']:}">创富商盟</a></div>

<div class="v_txt">
{:$mle['article_data']['content']:}
</div>

</body>
</html>
