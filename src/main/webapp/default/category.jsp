<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="user-scalable=no, width=device-width, initial-scale=1.0, maximum-scale=1.0">
<title>分类</title>
{:include file="common_wx_hide_share_head.tpl":}{:*隐藏右上角部分功能菜单*:}
<link type="text/css" href="{:$var_x['path']['tem_dir_url']:}/style/reset.css" rel="stylesheet" />
<link type="text/css" href="{:$var_x['path']['tem_dir_url']:}/style/common.css" rel="stylesheet" />
<link type="text/css" href="{:$var_x['path']['tem_dir_url']:}/style/widget_menu.css" rel="stylesheet" />
<script src="{:$var_x['path']['mleroot_url']:}/inc/script/jquery.js" ></script>{:* jquery *:}
<style type="text/css">
.c_list a{display:block; width:33.33333%; color:#000; float:left; border-right:1px solid #bbb; border-bottom:1px solid #bbb; padding:10px 0; box-sizing:border-box; text-align:center;}
.c_list img{width:35px; margin-bottom:5px;}
</style>
</head>

<body>

<div class="c_list">
	{:foreach $mle['re_product_class_data'] as $product_class_value:}
		<a href="{:$var_x['path']['mleroot_url']:}/mobile/product.php?category={:$product_class_value['id']:}&web_title={:$product_class_value['title']:}"><img src="{:$var_x['path']['mleroot_url']:}/{:$product_class_value['picture_url']:}" /><br />{:$product_class_value['title']:}</a>
	{:/foreach:}
    <div style="clear:both;"></div>
</div>

<!--固定屏幕底部导航-->
{:include file="bottom_menu_type_1.tpl":}
</body>
</html>
