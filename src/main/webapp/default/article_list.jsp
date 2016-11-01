<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport">
<title>{:$mle['article_class_data']['title']:}</title>
{:include file="common_wx_hide_share_head.tpl":}{:*隐藏右上角部分功能菜单*:}
<link type="text/css" href="{:$var_x['path']['tem_dir_url']:}/style/reset.css" rel="stylesheet" />
<link type="text/css" href="{:$var_x['path']['tem_dir_url']:}/style/common.css" rel="stylesheet" />
<link type="text/css" href="{:$var_x['path']['tem_dir_url']:}/style/home.css" rel="stylesheet" />
<link type="text/css" href="{:$var_x['path']['tem_dir_url']:}/style/index.css" rel="stylesheet" />
<link type="text/css" href="{:$var_x['path']['tem_dir_url']:}/style/widget_menu.css" rel="stylesheet" />
<link href="{:$var_x['path']['tem_dir_url']:}/style/main.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="{:$var_x['path']['tem_dir_url']:}/script/jquery.js"></script>
<style type="text/css">
body{padding:0; margin:0; font:normal 100% 微软雅黑; background:#fff;}
*{padding:0; margin:0;}
ul li,ol{ list-style:none;}
a{text-decoration:none; color:#000;}
a:hover{text-decoration:none;}
.n_top{width:100%; height:45px; background:#37c3a9; line-height:45px; text-align:center; color:#fff; font-size:16px;}
.news_list{ border:1px solid #ccc; border-radius:8px; width:96%; margin:10px auto;}
.news_list ul{width:96%; margin:0 auto;}
.news_list ul li{border-top:1px solid #ccc; padding:10px 0; font-size:0.875em;}
.news_list ul li span{color:#999;}
</style>
</head>

<body>
<div class="n_top">{:$mle['article_class_data']['title']:}</div>
<div class="news_list">
    <ul>
    	{:foreach $mle['article_list'] as $i => $article_list_value:}
        <li {:if $i == 0:}style="border:0;"{:/if:}>
            <a href="article_view.php?article_id={:$article_list_value['id']:}">
            	<table width="100%">
	                <tr>
	                    <td>
	                       {:$article_list_value['title']:}<br />
	                        <span>时间：{:date('Y-m-d', $article_list_value['addtime']):}</span>
	                    </td>
	                    <td width="30"><img src="{:$var_x['path']['tem_dir_url']:}/images/list_sub_img1.png" width="30" /></td>
	                </tr>
            	</table>
            </a>
        </li>
        {:foreachelse:}
        <div style="text-align:center; font-size:18px; padding:30px 0;">暂无文章</div>
        {:/foreach:}
    </ul>
</div>

</body>
</html>
