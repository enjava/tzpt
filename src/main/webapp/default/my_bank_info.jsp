<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width,height=device-height,inital-scale=1.0,maximum-scale=1.0,user-scalable=no">
<title>提现流程</title>
{:include file="common_wx_hide_share_head.tpl":}{:*隐藏右上角部分功能菜单*:}
<link href="{:$var_x['path']['tem_dir_url']:}/style/main.css" rel="stylesheet" type="text/css" />
<style>
body{margin:0; padding:0; font-family:"微软雅黑"; background:#e5e5e5;}
ul,ol,li,p,h1,h2,h3,h4,h5,table,td{margin:0; padding:0;}
a{ text-decoration:none;}
.clear{clear:both; height:0;}

.main{width:100%; overflow:hidden;}
.header{width:100%; height:50px; line-height:50px; background:url({:$var_x['path']['tem_dir_url']:}/images/dtop_bg.png) repeat-x; text-align:center; color:#fff; font-size:16px;}
.box{width:94%; margin:12px auto; font-size:14px;}
.box .mesg{width:100%; height:97px; border:1px solid #cacaca; border-radius:8px; box-shadow:1px 1px 3px #ccc; box-sizing:border-box; background:#eee; padding:8px;}
.box .mesg table{width:100%; border:1px solid #cacaca; border-radius:8px; padding:5px 0; background:-webkit-gradient(linear, left top, left bottom, from(#fff), color-stop(0.5, #f4f4f4), to(#f2f2f2));}
.box .mesg table td{color:#000; height:22px; line-height:22px; font-weight:bold;}
.nd{width:94%; margin:15px auto; height:45px; line-height:45px; text-align:center; border-radius:8px; border:1px solid #ccc; background:url({:$var_x['path']['tem_dir_url']:}/images/menu_bg.png) repeat-x;}
</style>
</head>

<body>
<div class="main">
     <div class="header">银行信息</div>
     {:foreach $mle['bank_card_data'] as $bank_card_val:}
	 <div class="box">
	      <div class="mesg">
		       <table width="100%" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td rowspan="3" width="40" align="center"></td>
						<td>姓名：{:$bank_card_val['name']:}</td>
					</tr>
					<tr>
						<td>开户行：{:$bank_card_val['bank_name']:}</td>
					</tr>
					<tr>
						<td>银行卡号：{:$bank_card_val['bank_card_id']:}</td>
					</tr>
			   </table>
		  </div>
	 {:foreachelse:}
	 	<div class="nd">
	 		暂无你的银行卡信息
	 	</div>
	{:/foreach:}
	 </div>
</div>
<div style="margin-bottom:75px;"></div>
<div style="position:fixed; width:100%; bottom:0; background:#f1f1f1;">
{:include file="footer.tpl":}
</div>
</body>
</html>
