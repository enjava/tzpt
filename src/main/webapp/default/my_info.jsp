<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="user-scalable=no, width=device-width, initial-scale=1.0, maximum-scale=1.0" />
<title>个人资料管理</title>
{:include file="common_wx_hide_share_head.tpl":}{:*隐藏右上角部分功能菜单*:}
<link href="{:$var_x['path']['tem_dir_url']:}/style/main.css" rel="stylesheet" type="text/css" />
<style type="text/css">
.menu{width:90%; margin:20px auto; border:1px solid #ccc;}
.menu a{color:#000;}
.menu ul li{height:50px; line-height:50px; background:url({:$var_x['path']['tem_dir_url']:}/images/menu_bg.png) repeat-x; border-top:1px solid #ccc;}
.menu ul li img{width:30px; vertical-align:middle; margin:0  20px;}
.menu ul li span{ float:right; display:inline-block; padding-top:13px;}
.menu ul li span img{width:25px;}
</style>
</head>

<body>
{:if $mle['mem_info']['father_id']['id']>0:}
<style type="text/css">
a.btm{width:100%; height:60px; padding:10px; box-sizing:border-box; position:fixed; top:0; display:block; background:#118b00; font-size:16px; color:#fff;z-index:9999;}
span.i_buy{display:block; font-size:16px; border-radius:5px; background:#fff; width:80px; height:35px; float:right; margin:3px 10px 0 0; color:#0b5900; text-align:center; line-height:35px;}
#mcover{ position: fixed;	top:0;	left:0;	width:100%;	height:100%;background:rgba(0, 0, 0, 0.7);	display:none;z-index:20000;}
#mcover img {position: fixed;right: 18px;top:5px;width: 260px;height: 180px;z-index:20001;}
</style>
<a class="btm" href="{:$var_x['config']['weixin']['subscribe_url']:}">
    <table width="100%" cellpadding="0" cellspacing="0">
        <tr>
            <td width="55"><img src="{:$mle['mem_info']['father']['headimg']:}" style="width:45px; height:45px;" /></td>
            <td>
                我的推荐人：[<span style="color:#fbfe01">{:$mle['mem_info']['father']['name']:}</span>]
            </td>
        </tr>
    </table>
</a>
<div style="margin-top:60px;"></div>
{:/if:}

<div class="d_top">个人资料管理</div>
<br />
<div class="menu">
	<ul>
    	<a href="{:$var_x['path']['mleroot_url']:}/member/my_info_data.php"><li style="border:0;">
        	<img src="{:$var_x['path']['tem_dir_url']:}/images/zl_ico.png" />我的注册资料<span><img src="{:$var_x['path']['tem_dir_url']:}/images/m_ico.png" /></span>
        </li></a>
        <a href="{:$var_x['path']['mleroot_url']:}/member/my_address.php"><li>
        	<img src="{:$var_x['path']['tem_dir_url']:}/images/ssdz_ico.png" />我的收货地址<span><img src="{:$var_x['path']['tem_dir_url']:}/images/m_ico.png" /></span>
        </li></a>
        <a href="{:$var_x['path']['mleroot_url']:}/member/my_bank_info.php"><li>
        	<img src="{:$var_x['path']['tem_dir_url']:}/images/yhk_ico.png" />银行卡号资料<span><img src="{:$var_x['path']['tem_dir_url']:}/images/m_ico.png" /></span>
        </li></a>
    </ul>
</div>

<div style="margin-bottom:75px;"></div>
<div style="position:fixed; width:100%; bottom:0; background:#f1f1f1;">
{:include file="footer.tpl":}
</div>
</body>
</html>
