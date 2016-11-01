<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<meta name="viewport" content="user-scalable=no, width=device-width, initial-scale=1.0, maximum-scale=1.0" />

<title>个人中心</title>

{:include file="common_wx_hide_share_head.tpl":}{:*隐藏右上角部分功能菜单*:}

<script src="{:$var_x['path']['mleroot_url']:}/inc/script/jquery.js" ></script>{:* jquery *:}

<style type="text/css">

body{padding:0; margin:0; font:normal 100% 微软雅黑; background:#f0eff5;}

*{padding:0; margin:0;}

ul li,ol{ list-style:none;}

img{width:100%; border:0;}

a{text-decoration:none; color:#000;}

a:hover{text-decoration:none;}

.top{height:45px; background:#fc6846; line-height:45px; text-align:center; font-size:16px; color:#fff; position:relative;}

.top img{height:20px; width:auto; position:absolute; left:10px; top:13px;}

.user_mas{background:#fc6846; border:2px solid #ffff01; padding:15px 10px; margin-top:0px; font-size:16px; line-height:26px; color:#fff;}

.user_zl{width:90%; margin:10px auto; border:2px solid #ccc; padding-bottom:10px;}

.user_zl td{padding:10px 0;}

.user_zl label{display:block; width:90px; text-align:center; color:#000;}

.user_zl input[type="text"]{width:100%; height:35px; padding-left:5px; font-size:16px; color:#666; box-sizing:border-box; border:1px solid #fc6947; border-radius:5px;}

.user_zl a.asub{width:60%; margin:0 auto; display:block; height:35px; line-height:35px; text-align:center; font-size:16px; border-radius:8px; letter-spacing:2px; color:#fff; background:#f3772d;}

.zl_list{background:#fff; margin-bottom:15px; border-top:1px solid #ccc;}

.zl_list a{display:block; padding:10px; border-bottom:1px solid #ccc; font-size:16px; color:#000;}

.zl_list a img{width:35px; vertical-align:bottom;}

.zl_list a span{display:block; width:60px; height:25px; line-height:25px; text-align:center; border-radius:5px; background:#ff5265; color:#fff;}

.zll{padding-left:10px; border-bottom:1px solid #ccc;}

.zll a{padding-left:0;}

</style>

</head>



<body>
 
<div class="user_mas">

	<table width="100%" cellpadding="0" cellspacing="0">

    	<tr>

        	<td width="120" align="center"><img src="{:$mle['mem_info']['headimg']:}" style="width:80px;" /></td>

            <td>

            	关注时间：{:if $mle['mem_info']['subscribe_time']>0:}{:date('Y-m-d', $mle['mem_info']['subscribe_time']):}{:else:}未关注<a href="{:$var_x['config']['weixin']['subscribe_url']:}" style="color:red;">(点击关注)</a>{:/if:}<br />

                会员等级：{:member::get_level_toname($mle['mem_info']['level']):}<br />

                会员 I D：{:$mle['mem_info']['id']:}

            </td>

        </tr>

    </table>

</div>



<div class="user_zl">

<form method="post" action="" name="form1" id="form1">

	<div style="padding-right:15px;">

	<table width="100%" cellpadding="0" cellspacing="0">

    	<tr>

        	<td width="90"><label>真实姓名</label></td>

            <td><input name="real_name" type="text" value="{:$mle['mem_info']['real_name']:}" /></td>

        </tr>

        <tr>

        	<td><label>手机号码</label></td>

            <td><input name="phone" type="text" value="{:$mle['mem_info']['phone']:}" /></td>

        </tr>

        <tr>

        	<td><label>昵称</label></td>

            <td><input name="name" type="text" value="{:$mle['mem_info']['name']:}" /></td>

        </tr>

        <tr>

        	<td><label>微信号</label></td>

            <td><input name="wx_username" type="text" value="{:$mle['mem_info']['wx_username']:}" /></td>

        </tr>

    </table>

    </div>

    <input type="hidden" name="action" value="save_user_info">

    <a  onclick="$('#form1').submit();" href="javascript:void(0);" class="asub">确认修改</a>

</form>

</div>



<div class="zl_list zll" style="padding-left:10px;">

{:if $mle['mem_info']['father_id']['id']>0:}

	<a href="my_father_info.php">

    	<table width="100%" cellpadding="0" cellspacing="0">

        	<tr>

            	<td width="45"><img src="{:$mle['mem_info']['father']['headimg']:}" /></td>

                <td>我的推荐人【{:$mle['mem_info']['father']['name']:}】</td>

                <td width="70"><span>查看</span></td>

            </tr>

        </table>

    </a>

{:/if:}

{:if $mle['mem_info']['is_merchant']=='1':}
    <a href="my_qrcode.php?only_qrcode=1" >
    	<table width="100%" cellpadding="0" cellspacing="0">
        	<tr>
            	<td width="45"><img src="{:$var_x['path']['tem_dir_url']:}/images/0625/wderm.png" /></td>
                <td>我的二维码</td>
                <td width="70"><span style="background:#ff0000">打开</span></td>
            </tr>
        </table>
    </a>
    <a href="my_qrcode.php" >

    	<table width="100%" cellpadding="0" cellspacing="0">

        	<tr>

            	<td width="45"><img src="{:$var_x['path']['tem_dir_url']:}/images/0625/wderm.png" /></td>

                <td>我的二维码海报</td>

                <td width="70"><span style="background:#ff0000">打开</span></td>

            </tr>

        </table>

    </a>

{:/if:}

    <a href="my_address.php" style="border:none;">

    	<table width="100%" cellpadding="0" cellspacing="0">

        	<tr>

            	<td width="45"><img src="{:$var_x['path']['tem_dir_url']:}/images/0625/wderm.png" /></td>

                <td>我的收货地址</td>

                <td width="70"><span style="background:#ff0000">打开</span></td>

            </tr>

        </table>

    </a>

</div>



<div class="zl_list">

	<a href="article_list.php?article_class=5">

    	<table width="100%" cellpadding="0" cellspacing="0">

        	<tr>

            	<td width="45"><img src="{:$var_x['path']['tem_dir_url']:}/images/0625/cfsxy.png" /></td>

                <td>创富商学院</td>

                <td width="70"><span style="background:#2ab2f2">查看</span></td>
 
            </tr>

        </table>

    </a>

 <a href="article_list.php?article_class=3">

    	<table width="100%" cellpadding="0" cellspacing="0">

        	<tr>

            	<td width="45"><img src="{:$var_x['path']['tem_dir_url']:}/images/0625/sybz.png" /></td>

                <td>使用帮助</td>

                <td width="70"><span style="background:#53cd75">查看</span></td>

            </tr>

        </table>

    </a>

</div>

</body>

</html>

