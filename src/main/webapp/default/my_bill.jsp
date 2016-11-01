<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="user-scalable=no, width=device-width, initial-scale=1.0, maximum-scale=1.0" />
<title>我的账单</title>
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

.nd{width:94%; margin:15px auto; height:45px; line-height:45px; text-align:center; border-radius:8px; border:1px solid #ccc; background:url({:$var_x['path']['tem_dir_url']:}/images/menu_bg.png) repeat-x;}

.zd{width:94%; margin:0 auto;}
.zd ul li{padding:10px 5px; border-bottom:1px solid #ccc;}
.zd ul li h3{font-size:14px; color:#000; font-weight:normal; padding-bottom:5px;}
.zd ul li p{font-size:12px; color:#999;}
.ztop{height:45px; background:#fc6846; line-height:45px; text-align:center; font-size:16px; color:#fff; position:relative;}
.ztop img{height:20px; width:auto; position:absolute; left:10px; top:13px;}
.zg{padding-top:80px; text-align:center; font-size:16px; color:#73737a;}
.zg a.fx{width:70%; height:40px; line-height:40px; text-align:center; border:1px solid #000; border-radius:5px; display:block; margin:30px auto; font-size:16px; color:#73737a; letter-spacing:2px;}
</style>

</head>

<body>
<!--<div class="d_top">我的账单</div>-->
<div class="ztop">
	<a href="javascript:history.back(-1);"><img src="{:$var_x['path']['tem_dir_url']:}/images/0625/lback.png" /></a>
	全部账单
</div>
<div class="zd">
	<ul>
	{:foreach $mle['recharge_data'] as $recharge_value:}
    	<li>
        	<table width="100%">
            	<tr>
                	<td>
                    	<h3>{:$recharge_value['content']:}</h3>
                        <p>{:$recharge_value['serial_id']:}&nbsp;&nbsp;{:date('Y-m-d H:i:s', $recharge_value['addtime']):}</p>
                    </td>
                    <td align="right"><span style="font-size:16px;">{:$recharge_value['money']:}</span></td>
                </tr>
            </table>
        </li>
    {:foreachelse:}
        <div class="zg">
            <img src="{:$var_x['path']['tem_dir_url']:}/images/0625/zd.png" style="width:35%; max-width:160px; margin-bottom:10px;" />
            <p>掌柜，暂无账单哦！</p>
            <a href="" class="fx">分享商品赚收入</a>
        </div>
	{:/foreach:}
    </ul>
</div>

<div style="margin-bottom:75px;"></div>
<div style="position:fixed; width:100%; bottom:0; background:#f1f1f1;">
{:include file="footer.tpl":}
</div>
</body>
</html>
