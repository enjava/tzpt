<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<meta name="viewport" content="user-scalable=no, width=device-width, initial-scale=1.0, maximum-scale=1.0" />

<title>我要提现</title>

<link href="{:$var_x['path']['tem_dir_url']:}/style/main.css" rel="stylesheet" type="text/css" />

<script src="{:$var_x['path']['mleroot_url']:}/inc/script/jquery.js" ></script>{:* jquery *:}

<script src="{:$var_x['path']['mleroot_url']:}/inc/script/public_fun.js" ></script>{:* 函数库JS *:}

<style type="text/css">

.form_box{width:94%; margin:10px auto; border-radius:5px; border:1px solid #ccc; background:#fff; box-shadow:1px 1px 3px #ccc; box-sizing:border-box;}

.form_box ul li{padding:15px; border-top:1px solid #ddd; font-size:14px;}

.form_box input{width:100%; height:40px; font-size:18px; border-radius:5px; border:1px solid #ccc; box-shadow:inset 0 1px 2px #ccc; color:#999; padding-left:5px; box-sizing:border-box;}

.btn{padding:5px 0; text-align:center;}

.btn input{-webkit-appearance:none; box-shadow:1px 1px 3px #ccc; width:180px; height:40px; background:url({:$var_x['path']['tem_dir_url']:}/images/menu_bg.png) repeat-x; border:1px solid #ccc; border-radius:5px; font-size:16px; font-weight:bold; letter-spacing:2px;}

.rj_list{width:94%; margin:10px auto 20px; border-radius:5px; border:1px solid #ccc; box-shadow:1px 1px 3px #ccc;}

.rj_list a{color:#000;}

.rj_list ul li{height:40px; line-height:40px; font-size:14px; padding-left:20px; background:url({:$var_x['path']['tem_dir_url']:}/images/menu_bg.png) repeat-x; border-top:1px solid #ccc;}

.rj_list ul li img{width:23px; margin:8px  20px; float:right;}

.nd{width:94%; margin:15px auto; height:45px; line-height:45px; text-align:center; border-radius:8px; border:1px solid #ccc; background:url({:$var_x['path']['tem_dir_url']:}/images/menu_bg.png) repeat-x;}



.ttop{height:45px; background:#fc6846; line-height:45px; text-align:center; font-size:16px; color:#fff; position:relative;}

.ttop img{height:20px; width:auto; position:absolute; left:10px; top:13px;}

.sk{background:#fff; font-size:16px; color:#999; padding-bottom:10px;}

.sk span{display:block; width:60px; font-size:30px; height:35px; line-height:35px; text-align:center; border-right:2px solid #fe6a46;}

.sk input{width:100%; box-sizing:border-box; padding-left:10px; color:#999; font-size:16px; height:35px; border:none; background:none;}

.tx_txt{padding:20px; font-size:14px; line-height:22px; color:#666;}

.button_css{-webkit-appearance:none; border:none; display:block; width:100%; height:45px; font-size:18px; display:block; margin:30px auto; color:#fff; letter-spacing:2px; border-radius:5px; background:#fd6847;}

</style>

<script type="text/javascript">

	var is_tasking = 0;

	function tasking(){

		if(is_tasking == 1) return false;

		is_tasking = 1;

		$('#submit').val('正在提交申请……');

		return true;

	}

</script>

</head>



<body>

<div class="ttop">

	<a href="javascript:history.back(-1);"><img src="{:$var_x['path']['tem_dir_url']:}/images/0625/lback.png" /></a>

	请填写真实的提现资料

</div>

<form method="post" action="" name="" onsubmit="return tasking();">

<div class="sk">

	<p style="padding:10px;">收款金额</p>

    <table width="100%" cellpadding="0" cellspacing="0">

    	<tr>

        	<td width="60"><span>￥</span></td>

            <td><input type="text" name="take_money" value="" placeholder="输入提现金额" /></td>

        </tr>

    </table>

</div>

<p style="padding:10px; color:#666;">真实姓名</p>

<div style="padding:10px 0; background:#fff;">

	<table width="100%" cellpadding="0" cellspacing="0">

    	<tr>

        	<td width="30px;"><span style="height:35px; width:30px; border-right:2px solid #fe6a46; display:block"></span></td>

            <td><input type="text" name="name" value="{:$mle['bank_card_data']['name']:}" placeholder="输入您的真实姓名" style="width:100%; box-sizing:border-box; padding-left:10px; color:#999; font-size:16px; height:35px; border:none; background:none;" /></td>

        </tr>

    </table>

</div>



<div class="tx_txt">

	<p>最低提现金额为：{:$mle['set_task_kickback']['task']['min_take_kickback']:}元<br />目前您能提现的金额为：{:$mle['may_kickback']:}元</p>

	<input type="hidden" name="action" value="input_take_kickback_info">

    <input name="" class="button_css" type="submit" value="下一步" id="submit"/>
    <a href="my_tickback_log.php"><input class="button_css" type="button" value="查看提现记录" /></a>
    <p>*提现说明：<br />{:$mle['set_task_kickback']['task']['wx_task']['task_content']:}</p>

</div>

</form>



<!--<div class="d_top">填写提现资料</div>

<form method="post" action="" name="" onsubmit="return tasking();">

<div class="form_box">

	<ul>

    	<li style="border:0;">

        	<table width="100%" cellpadding="0" cellspacing="0">

            	<tr>

                	<td width="70" align="right">真实姓名：</td>

                    <td><input name="name" type="text" value="{:if $mle['bank_card_data']['name']!='':}{:$mle['bank_card_data']['name']:}{:else:}你的真实姓名{:/if:}" name="" onfocus="if(this.value == '你的真实姓名'){this.value = '';this.style.color = '#000';}" onblur="if(this.value==''){this.value='你的真实姓名';this.style.color = '#999';}" /></td>

                </tr>

            </table>

        </li>

    </ul>

</div>

<div class="form_box" style="padding:20px;">

	<input name="take_money" type="text" value="请输入提现金额" name="" onfocus="if(this.value == '请输入提现金额'){this.value = '';this.style.color = '#000';}" onblur="if(this.value==''){this.value='请输入提现金额';this.style.color = '#999';}" />

    <span style="display:block; padding-top:10px; font-size:12px; color:#f00; text-align:center;">你当前可提现的金额是{:$mle['may_kickback']:}元<br />每次提现最低为{:$mle['set_task_kickback']['task']['min_take_kickback']:}元</span>

</div>

<input type="hidden" name="action" value="input_take_kickback_info">

<div class="btn"><input name="" type="submit" value="立刻提现" id="submit"/></div>

</form>

<div class="rj_list">

    <ul>

        <a href="my_tickback_log.php"><li style="border:0; border-top-left-radius:8px; border-top-right-radius:8px;">

            提现记录<img src="{:$var_x['path']['tem_dir_url']:}/images/m_ico.png" />

        </li></a>

        <a href="article_view.php?article_sid=kickback_explain"><li style="border-bottom-left-radius:8px; border-bottom-right-radius:8px;">

            提现须知<img src="{:$var_x['path']['tem_dir_url']:}/images/m_ico.png" />

        </li></a>

    </ul>

</div>-->
<div style="position:fixed; width:100%; bottom:0; background:#f1f1f1;">
{:include file="footer.tpl":}
</div>
</body>

</html>

