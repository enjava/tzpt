<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="user-scalable=no, width=device-width, initial-scale=1.0, maximum-scale=1.0" />
<title>我的收藏</title>
{:include file="common_wx_hide_share_head.tpl":}{:*隐藏右上角部分功能菜单*:}
<link href="{:$var_x['path']['tem_dir_url']:}/style/main.css" rel="stylesheet" type="text/css" />
<style type="text/css">
body{padding:0; margin:0; font: normal 100% 微软雅黑; background:#e5e5e5;}
*{padding:0; margin:0;}
ul,li,ol{ list-style:none;}
img{width:100%; border:0;}
a{text-decoration:none; color:#000;}
a:hover{text-decoration:none;}
.clear{height:0; clear:both;}
.d_top{height:50px; line-height:50px; text-align:center; color:#fff; background:url({:$var_x['path']['tem_dir_url']:}/images/dtop_bg.png) repeat-x;}
.nd{width:94%; margin:15px auto; height:45px; line-height:45px; text-align:center; border-radius:8px; border:1px solid #ccc; background:url({:$var_x['path']['tem_dir_url']:}/images/menu_bg.png) repeat-x;}
.d_box{border:1px solid #ccc; width:94%; margin:0 auto; border-radius:5px; background:#eee; margin-top:10px; box-shadow:1px 1px 3px #ccc;}
.d_box ul li{padding:10px; font-size:14px; line-height:24px; color:#000; border-top:1px solid #ccc; text-shadow:0 2px 3px #fff;}
.d_box table{font-size:14px; text-shadow:0 2px 3px #fff; line-height:24px;}
.d_box table a{display:block; color:#2489ce; font-size:16px;}
.pro{padding:10px 0; border-top:1px dashed #ccc; width:96%; margin:0 auto;}
</style>
</head>

<body>
<!--<div class="d_top">我的收藏</div>-->

<div class="d_box">
	{:foreach $mle['re_collect_data'] as $collect_data_val name=foo:}
    	<div class="pro" {:if $smarty.foreach.foo.index==0:}style="border:0;"{:/if:}>
            <table width="100%" cellpadding="0" cellspacing="0">
                <tr>
                    <td width="100" align="center"><img src="{:$var_x['path']['mleroot_url']:}/{:$collect_data_val['join_m_product']['picture'][0]:}" style="width:80px;" /></td>
                    <td>
                        <a href="{:$var_x['path']['mleroot_url']:}/mobile/detail.php?product_id={:$collect_data_val['join_m_product']['id']:}">{:$collect_data_val['join_m_product']['join_brand']['title']:} {:$collect_data_val['join_m_product']['title']:}</a>
                        本店价：<span style="color:#f00;">￥{:$collect_data_val['join_m_product']['price']:}</span><br />
                    </td>
                </tr>
            </table>
        </div>
    {:foreachelse:}
        <div class="nd">暂无收藏</div>
    {:/foreach:}
    </div>

<div style="margin-bottom:75px;"></div>
<div style="position:fixed; width:100%; bottom:0; background:#f1f1f1;">
{:include file="footer.tpl":}
</div>
</body>
</html>
