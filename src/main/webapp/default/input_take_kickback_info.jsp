<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="user-scalable=no, width=device-width, initial-scale=1.0, maximum-scale=1.0" />
<title>填写提现资料</title>
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
</style>
</head>

<body>
<div class="d_top">填写提现资料</div>
<form method="post" action="" name="">
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
        <li>
        	<table width="100%" cellpadding="0" cellspacing="0">
            	<tr>
                	<td width="70" align="right">开户行：</td>
                    <td><input  name="bank_name" type="text" value="{:if $mle['bank_card_data']['bank_name']!='':}{:$mle['bank_card_data']['bank_name']:}{:else:}你的开户银行{:/if:}" name="" onfocus="if(this.value == '你的开户银行'){this.value = '';this.style.color = '#000';}" onblur="if(this.value==''){this.value='你的开户银行';this.style.color = '#999';}" /></td>
                </tr>
            </table>
        </li>
        <li>
        	<table width="100%" cellpadding="0" cellspacing="0">
            	<tr>
                	<td width="70" align="right">银行卡：</td>
                    <td><input name="bank_card_id" type="text" value="{:if $mle['bank_card_data']['bank_card_id']!='':}{:$mle['bank_card_data']['bank_card_id']:}{:else:}你的银行卡号{:/if:}" name="" onfocus="if(this.value == '你的银行卡号'){this.value = '';this.style.color = '#000';}" onblur="if(this.value==''){this.value='你的银行卡号';this.style.color = '#999';}" /></td>
                </tr>
            </table>
        </li>
        <li>
        	<table width="100%" cellpadding="0" cellspacing="0">
            	<tr>
                	<td width="70" align="right">手机号码：</td>
                    <td><input name="phone" type="text" value="{:if $mle['bank_card_data']['phone']!='':}{:$mle['bank_card_data']['phone']:}{:else:}你的手机号码{:/if:}" name="" onfocus="if(this.value == '你的手机号码'){this.value = '';this.style.color = '#000';}" onblur="if(this.value==''){this.value='你的手机号码';this.style.color = '#999';}" /></td>
                </tr>
            </table>
        </li>
        <a href="my_bank_info_select.php"><div class="nd">选择银行卡</div></a>
    </ul>
</div>
<div class="form_box" style="padding:20px;">
	<input name="take_money" type="text" value="请输入提现金额" name="" onfocus="if(this.value == '请输入提现金额'){this.value = '';this.style.color = '#000';}" onblur="if(this.value==''){this.value='请输入提现金额';this.style.color = '#999';}" />
    <span style="display:block; padding-top:10px; font-size:12px; color:#f00; text-align:center;">你当前可提现的金额是{:$mle['may_kickback']:}元<br />每次提现最低为{:$mle['set_task_kickback']['task']['min_take_kickback']:}元</span>
</div>
<input type="hidden" name="action" value="input_take_kickback_info">
<div class="btn"><input name="" type="submit" value="提交" /></div>
</form>
<div class="rj_list">
    <ul>
        <a href="my_tickback_log.php"><li style="border:0; border-top-left-radius:8px; border-top-right-radius:8px;">
            提现记录<img src="{:$var_x['path']['tem_dir_url']:}/images/m_ico.png" />
        </li></a>
        <a href="my_bank_info_select.php"><li>
            我的银行卡<img src="{:$var_x['path']['tem_dir_url']:}/images/m_ico.png" />
        </li></a>
        <a href="article_view.php?article_sid=kickback_explain"><li style="border-bottom-left-radius:8px; border-bottom-right-radius:8px;">
            提现须知<img src="{:$var_x['path']['tem_dir_url']:}/images/m_ico.png" />
        </li></a>
    </ul>
</div>
{:include file="footer.tpl":}
</body>
</html>
