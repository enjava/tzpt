<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width,height=device-height,inital-scale=1.0,maximum-scale=1.0,user-scalable=no">
<title>{:$mle['article_data']['title']:}</title>
<link href="{:$var_x['path']['tem_dir_url']:}/style/main.css" rel="stylesheet" type="text/css" />
<style>
body{margin:0; padding:0; font-family:"微软雅黑"; background:#e5e5e5;}
ul,ol,li,p,h1,h2,h3,h4,h5{margin:0; padding:0;}
a{ text-decoration:none;}
.clear{clear:both; height:0;}

.main{width:100%; overflow:hidden;}
.header{width:100%; height:50px; line-height:50px; background:url({:$var_x['path']['tem_dir_url']:}/images/dtop_bg.png) repeat-x; text-align:center; color:#fff; font-size:16px;}
.box{width:96%; margin:5px auto; font-size:14px; line-height:25px; color:#000; text-shadow:0 0 1px #fff;}
</style>
</head>

<body>
<div class="main">
     <div class="header">{:$mle['article_data']['title']:}</div>
	 <div class="box">
		{:$mle['article_data']['content']:}
	 </div>
</div>
{:include file="footer.tpl":}
</body>
</html>
