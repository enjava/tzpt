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
     <div class="header">佣金结算流程说明：</div>
	 <div class="box">
	      <p>待确认：<br />
			说明已经实现支付，但仍存在以下三种情况时：<br />
			1、产品还在快递送达路上；<br />
			2、产品已经送达，但没有确认已收货；<br />
			3、收货以后，7天无理由退货期没有结束，资金没有解冻。<br />
			此时，佣金是冻结的，所以提示【待确认】状态。
		  </p>
		  <p>待审核：<br />
			说明【待确认】环节已经全部通过，资金已经归集到后台系统，财务正在进行审核。
		  </p>
		  <p>可提现：<br />
			说明资金已经到位，"东家"可在会员中心申请提现。<br />
			1、申请提现金额不得低于50元。<br />
			2、请填写个人银行卡的详细资料。<br />
			3、每周日之前提交申请<br />
			4、周一、周二后台审核通过，每周三统一发放上周佣金。<br />
			你需要提现的佣金将根据在【申请提现】中输入的金额完成转账。
		  </p>

	 </div>
</div>
<div style="margin-bottom:75px;"></div>
<div style="position:fixed; width:100%; bottom:0; background:#f1f1f1;">
{:include file="footer.tpl":}
</div>
</body>
</html>
