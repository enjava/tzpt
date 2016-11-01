<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="user-scalable=no, width=device-width, initial-scale=1.0, maximum-scale=1.0" />
<title>我的订单</title>
<link href="{:$var_x['path']['tem_dir_url']:}/style/main.css" rel="stylesheet" type="text/css" />
<script src="{:$var_x['path']['mleroot_url']:}/inc/script/jquery.js" ></script>{:* jquery *:}
<script src="{:$var_x['path']['mleroot_url']:}/inc/script/public_fun.js" ></script>{:* 函数库JS *:}
<style type="text/css">
.d_list{width:94%; margin:15px auto;}
.d_box{border:1px solid #ccc; border-radius:5px; padding:10px 15px; background:#eee; margin-top:10px; box-shadow:1px 1px 3px #ccc;}
.d_box p{color:#2489ce; font-size:14px; line-height:26px; padding-left:5px; text-shadow:0 2px 3px #fff;}
.d_box p a.xq{font-size:16px; color:#f7762e;}
.d_box a.qr{color:#2489ce; display:block; padding-top:5px;}
.d_box p span{color:#f00;}
.d_box strong{font-size:15px; color:#f00; padding-top:5px; display:block;}
.nd{width:94%; margin:15px auto; height:45px; line-height:45px; text-align:center; border-radius:8px; border:1px solid #ccc; background:url({:$var_x['path']['tem_dir_url']:}/images/menu_bg.png) repeat-x;}
</style>
</head>

<body>
<div class="d_top">我的订单信息</div>
<div class="d_list">
{:foreach $mle['re_order_data'] as $re_order_data_val:}
	<div class="d_box">
    	<p>订单号：{:$re_order_data_val['oid']:}<a href="order_info.php?order_id={:$re_order_data_val['id']:}" class="xq">【详情】</a></p>
        <p>订单金额：<span>￥{:$re_order_data_val['amount']:}元</span></p>
        <p>下单时间：{:$re_order_data_val['addtime']:}</p>
        <p>
	        {:if $re_order_data_val['is_enter']=='1':}	已确认{:else:}未确认{:/if:}，
	        {:if $re_order_data_val['is_pay']=='1':}		已付款{:else:}未付款{:/if:}，
	        {:if $re_order_data_val['is_post']=='1':}	已发货{:else:}未发货{:/if:}
        </p>
        <strong>
		{:if $re_order_data_val['status']=='0':}
			已下单 &nbsp; <a href="{:$var_x['path']['mleroot_url']:}/mobile/deal_order.php?oid={:$re_order_data_val['oid']:}" class="qr">立即支付({:if $re_order_data_val['pay_type']==1:}余额支付{:else:}微信支付{:/if:})</a>
			
		{:elseif $re_order_data_val['status']=='1':}
			已付款
		{:elseif $re_order_data_val['status']=='2':}
			<a onclick="if(confirm('你确定收货吗？')==false) return; mle.fun.toUrl('?action=affirm_order&order_id={:$re_order_data_val['id']:}', false);" href="javascript:void(0);" class="qr"><b>确认收货</b></a>
		{:elseif $re_order_data_val['status']=='3':}
			交易完成
		{:elseif $re_order_data_val['status']=='-1':}
			订单取消
		{:elseif $re_order_data_val['status']=='-2':}
			申请退货
		{:elseif $re_order_data_val['status']=='-3':}
			已退货
		{:else:}
			未知状态：{:$re_order_data_val['status']:}
		{:/if:}
		</strong>
    </div>
   {:foreachelse:}
        <div class="nd">暂无订单</div>
   {:/foreach:}
</div><!--d_list end-->
{:include file="footer.tpl":}
</body>
</html>
